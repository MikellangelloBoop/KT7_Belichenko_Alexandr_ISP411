﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using POlMaster.Classes;
using POlMaster.Pages;
using POlMaster.Data;


namespace POlMaster.Pages
{
    /// <summary>
    /// Логика взаимодействия для ListView.xaml
    /// </summary>
    public partial class ListView : Page
    {
        public ListView()
        {
            InitializeComponent();

            LoadData();
        }

        private void LoadData()
        {
            var partners = Data.MasterPolEntities.GetContext().PartnersImport.ToList();

            var partnerDiscounts = (from partner in partners
                                    join product in Data.MasterPolEntities.GetContext().PartnerProductsImport
                                    on partner.Id equals product.IdPartnerName
                                    group product by partner into g
                                    select new
                                    {
                                        Partner = g.Key,
                                        Discount = CalculateDiscount(g.Sum(p => p.CountOfProduction))
                                    }).ToList();

            MasterListView.ItemsSource = partnerDiscounts;
            MessageBox.Show($"Загружено партнеров: {partners.Count}");

        }

        private int CalculateDiscount(int totalCount)
        {
            if (totalCount == 0) return 0;
            if (totalCount < 10000) return 0;
            if (totalCount >= 10000 && totalCount < 50000) return 5;
            if (totalCount >= 50000 && totalCount < 300000) return 10;
            return 15;
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Button editButton = sender as Button;
            var partnerData = editButton.DataContext;
            if (partnerData != null)
            {
                var partner = (partnerData as dynamic).Partner;
                Classes.Manager.MainFrame.Navigate(new Pages.AddEdit(partner));
            }
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEdit(null));
        }

        private void HistoryButton_Click(object sender, RoutedEventArgs e)
        {
            Button historyButton = sender as Button;
            var partnerData = historyButton.DataContext;

            if (partnerData != null)
            {
                var partner = (partnerData as dynamic).Partner;
                Classes.Manager.MainFrame.Navigate(new History(partner));
            }
            else
            {
                MessageBox.Show("Пожалуйста, выберите партнера из списка.");
            }
        }

    }
}

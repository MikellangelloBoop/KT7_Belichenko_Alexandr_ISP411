﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace POlMaster.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class MasterPolEntities : DbContext
    {
        private static MasterPolEntities _context;
        public MasterPolEntities()
            : base("name=MasterPolEntities")
        {
        }

        public static MasterPolEntities GetContext()
        {
            if (_context == null)
            {
                _context = new MasterPolEntities();
            }
            return _context;
        }



        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Adress> Adress { get; set; }
        public virtual DbSet<Cities> Cities { get; set; }
        public virtual DbSet<Directors> Directors { get; set; }
        public virtual DbSet<Indexes> Indexes { get; set; }
        public virtual DbSet<MaterialTypeImport> MaterialTypeImport { get; set; }
        public virtual DbSet<PartnerName> PartnerName { get; set; }
        public virtual DbSet<PartnerProductsImport> PartnerProductsImport { get; set; }
        public virtual DbSet<PartnersImport> PartnersImport { get; set; }
        public virtual DbSet<Production> Production { get; set; }
        public virtual DbSet<ProductsImport> ProductsImport { get; set; }
        public virtual DbSet<ProductTypeImport> ProductTypeImport { get; set; }
        public virtual DbSet<Regions> Regions { get; set; }
        public virtual DbSet<Streets> Streets { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TypeOfPartner> TypeOfPartner { get; set; }
        public virtual DbSet<TypeOfProduction> TypeOfProduction { get; set; }
    }
}

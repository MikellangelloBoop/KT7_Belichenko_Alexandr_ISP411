//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class ProductsImport
    {
        public int Id { get; set; }
        public int IdProductType { get; set; }
        public int IdProduction { get; set; }
        public long Article { get; set; }
        public decimal MinPriceForPartner { get; set; }
    
        public virtual Production Production { get; set; }
        public virtual TypeOfProduction TypeOfProduction { get; set; }
    }
}

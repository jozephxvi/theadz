//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Adz.DAL.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class TransactionDetail
    {
        public int id { get; set; }
        public Nullable<int> transaction_id { get; set; }
        public Nullable<int> inventoryitem_id { get; set; }
        public Nullable<int> flashdeal_id { get; set; }
        public string variance { get; set; }
        public Nullable<int> qty { get; set; }
        public Nullable<decimal> discount { get; set; }
        public Nullable<decimal> price { get; set; }
    
        public virtual InventoryItem InventoryItem { get; set; }
        public virtual Transaction Transaction { get; set; }
    }
}

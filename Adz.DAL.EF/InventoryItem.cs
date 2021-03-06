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
    
    public partial class InventoryItem
    {
        public InventoryItem()
        {
            this.FlashDeals = new HashSet<FlashDeal>();
            this.KPointTrxDs = new HashSet<KPointTrxD>();
            this.TransactionDetails = new HashSet<TransactionDetail>();
            this.TransactionFreeDeals = new HashSet<TransactionFreeDeal>();
            this.Variances = new HashSet<Variance>();
            this.Winners = new HashSet<Winner>();
            this.WishLists = new HashSet<WishList>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string short_desc { get; set; }
        public Nullable<decimal> price { get; set; }
        public Nullable<decimal> margin { get; set; }
        public string general_description { get; set; }
        public string description { get; set; }
        public Nullable<int> merchant_id { get; set; }
        public string keywords { get; set; }
        public Nullable<int> inventoryitem_type_id { get; set; }
        public Nullable<decimal> discount { get; set; }
        public Nullable<System.DateTime> expiry_date { get; set; }
        public Nullable<decimal> maximumsales { get; set; }
        public Nullable<decimal> remainsales { get; set; }
        public Nullable<System.DateTime> publish_date { get; set; }
        public Nullable<decimal> minimumtarget { get; set; }
        public Nullable<decimal> salesvisualmeter { get; set; }
        public Nullable<int> prize_id { get; set; }
        public string terms { get; set; }
        public Nullable<int> created_by { get; set; }
        public Nullable<System.DateTime> last_created { get; set; }
        public Nullable<System.DateTime> last_updated { get; set; }
        public Nullable<bool> flag { get; set; }
        public Nullable<bool> featured { get; set; }
        public Nullable<int> featured_seq { get; set; }
        public string featured_text { get; set; }
        public Nullable<bool> email_flag { get; set; }
        public Nullable<int> city_id { get; set; }
        public string last_action { get; set; }
        public Nullable<bool> draft { get; set; }
        public Nullable<int> priority { get; set; }
    
        public virtual Admin Admin { get; set; }
        public virtual City City { get; set; }
        public virtual ICollection<FlashDeal> FlashDeals { get; set; }
        public virtual InventoryItemType InventoryItemType { get; set; }
        public virtual Merchant Merchant { get; set; }
        public virtual ICollection<KPointTrxD> KPointTrxDs { get; set; }
        public virtual ICollection<TransactionDetail> TransactionDetails { get; set; }
        public virtual ICollection<TransactionFreeDeal> TransactionFreeDeals { get; set; }
        public virtual ICollection<Variance> Variances { get; set; }
        public virtual ICollection<Winner> Winners { get; set; }
        public virtual ICollection<WishList> WishLists { get; set; }
    }
}

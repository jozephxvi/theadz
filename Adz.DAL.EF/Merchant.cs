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
    
    public partial class Merchant
    {
        public Merchant()
        {
            this.Campaigns = new HashSet<Campaign>();
            this.InventoryItems = new HashSet<InventoryItem>();
            this.Branches = new HashSet<Branch>();
        }
    
        public int id { get; set; }
        public string name { get; set; }
        public string address_line1 { get; set; }
        public string address_line2 { get; set; }
        public Nullable<int> city_id { get; set; }
        public string postcode { get; set; }
        public string contact_number { get; set; }
        public string email { get; set; }
        public string website { get; set; }
        public string facebook { get; set; }
        public Nullable<double> latitude { get; set; }
        public Nullable<double> longitude { get; set; }
        public string description { get; set; }
        public Nullable<int> status_id { get; set; }
        public Nullable<System.DateTime> last_created { get; set; }
        public Nullable<System.DateTime> last_updated { get; set; }
        public string last_action { get; set; }
    
        public virtual ICollection<Campaign> Campaigns { get; set; }
        public virtual City City { get; set; }
        public virtual ICollection<InventoryItem> InventoryItems { get; set; }
        public virtual Status Status { get; set; }
        public virtual ICollection<Branch> Branches { get; set; }
    }
}

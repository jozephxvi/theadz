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
    
    public partial class UserTrx
    {
        public int id { get; set; }
        public Nullable<int> user_id { get; set; }
        public string desc { get; set; }
        public Nullable<int> debit_amount { get; set; }
        public Nullable<int> credit_amount { get; set; }
        public Nullable<int> balance { get; set; }
        public Nullable<System.DateTime> created_date { get; set; }
        public Nullable<int> created_by { get; set; }
        public Nullable<int> transaction_month { get; set; }
        public Nullable<int> transaction_year { get; set; }
        public string account_from { get; set; }
        public string account_to { get; set; }
        public Nullable<System.DateTime> transaction_date { get; set; }
    
        public virtual User User { get; set; }
    }
}

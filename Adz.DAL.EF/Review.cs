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
    
    public partial class Review
    {
        public int redemption_id { get; set; }
        public Nullable<System.DateTime> review_date { get; set; }
        public Nullable<int> rating { get; set; }
        public string message { get; set; }
        public string last_action { get; set; }
    
        public virtual Redemption Redemption { get; set; }
    }
}

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
    
    public partial class State
    {
        public int id { get; set; }
        public string name { get; set; }
        public Nullable<int> country_id { get; set; }
        public string last_action { get; set; }
    
        public virtual Country Country { get; set; }
    }
}

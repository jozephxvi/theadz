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
    
    public partial class Game
    {
        public Game()
        {
            this.GameTransactions = new HashSet<GameTransaction>();
        }
    
        public int id { get; set; }
        public Nullable<int> prize_id { get; set; }
        public string name { get; set; }
        public string description { get; set; }
        public string instruction { get; set; }
        public Nullable<int> image_id { get; set; }
        public Nullable<System.DateTime> expiry_date { get; set; }
        public Nullable<double> hidden_latitude { get; set; }
        public Nullable<double> hidden_longitude { get; set; }
        public Nullable<System.DateTime> last_created { get; set; }
        public Nullable<System.DateTime> last_updated { get; set; }
        public string last_action { get; set; }
    
        public virtual ICollection<GameTransaction> GameTransactions { get; set; }
    }
}
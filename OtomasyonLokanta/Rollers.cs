//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OtomasyonLokanta
{
    using System;
    using System.Collections.Generic;
    
    public partial class Rollers
    {
        public Rollers()
        {
            this.Personellers = new HashSet<Personellers>();
        }
    
        public int Rol_Id { get; set; }
        public string Rol_Ad { get; set; }
    
        public virtual ICollection<Personellers> Personellers { get; set; }
    }
}

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
    
    public partial class Personellers
    {
        public int Personel_Id { get; set; }
        public string AdSoyad { get; set; }
        public int Masa_Id { get; set; }
        public int Rol_Id { get; set; }
    
        public virtual Masalars Masalars { get; set; }
        public virtual Rollers Rollers { get; set; }
    }
}
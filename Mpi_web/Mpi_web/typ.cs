//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Mpi_web
{
    using System;
    using System.Collections.Generic;
    
    public partial class typ
    {
        public typ()
        {
            this.uzytkownik = new HashSet<uzytkownik>();
        }
    
        public long id_typ { get; set; }
        public string nazwa { get; set; }
    
        public virtual ICollection<uzytkownik> uzytkownik { get; set; }
    }
}

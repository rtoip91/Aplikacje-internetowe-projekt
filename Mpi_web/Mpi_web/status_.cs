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
    
    public partial class status_
    {
        public status_()
        {
            this.zadanie = new HashSet<zadanie>();
        }
    
        public long id_status { get; set; }
        public string nazwa { get; set; }
    
        public virtual ICollection<zadanie> zadanie { get; set; }
    }
}
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Driving_School_Management_System.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class INSTRUCTOR
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public INSTRUCTOR()
        {
            this.CAR_DETAIL = new HashSet<CAR_DETAIL>();
        }
    
        public int ID { get; set; }
        public string FULLNAME { get; set; }
        public string EMAIL { get; set; }
        public string ADDRES { get; set; }
        public Nullable<int> TELEPHONE { get; set; }
        public string LISENCES { get; set; }
        public string GENDER { get; set; }
        public string EDUCATIONAL_LEVEL { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<CAR_DETAIL> CAR_DETAIL { get; set; }
    }
}

﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MVC_CRUB_EmpleadosDeptos.Models.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class EmpleadoDBEntities : DbContext
    {
        public EmpleadoDBEntities()
            : base("name=EmpleadoDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<TBL_DEPARTAMENTO> TBL_DEPARTAMENTO { get; set; }
        public virtual DbSet<TBL_EMPLEADO> TBL_EMPLEADO { get; set; }
    }
}

﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace STEM.Models
{
    public partial class Subjects
    {
        public Subjects()
        {
            UserSubject = new HashSet<UserSubject>();
        }

        public Guid SubjectId { get; set; }
        public string SubjectName { get; set; }
        public int? Grade { get; set; }
        public string Type { get; set; }

        [JsonIgnore]
        public virtual ICollection<UserSubject> UserSubject { get; set; }
    }
}
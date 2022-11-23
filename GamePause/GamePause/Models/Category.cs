using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;    /* ermöglicht [Key] oder [Required] */
using System.Linq;
using System.Threading.Tasks;

namespace GamePause.Models
{
    public class Category
    {
        [Key]
        public int Id { get; set; }

        [Required]
        public string Name { get; set; }

        public int TaxRate { get; set; }

        public int DisplayOrder { get; set; }

        public DateTime CreatedDateTime { get; set; } = DateTime.Now;
    }

    // TO-DO
}


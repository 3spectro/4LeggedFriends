using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace _4LeggedFriendsServer.Models
{
  public class ContactTypeEntity : IEntity
  {
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int IdContactType { get; set; }

    [Required]
    [Column(TypeName = "nvarchar(50)")]
    public string ContactType { get; set; } = string.Empty;

    [Required]
    [Column(TypeName = "nvarchar(5)")]
    public string ContactTypeCode { get; set; } = string.Empty;
  }

  public class ContactTypeModel : IModel
  {
    public int IdContactType { get; set; }
    public string ContactType { get; set; } = string.Empty;    
    public string ContactTypeCode { get; set; } = string.Empty;
  }
}

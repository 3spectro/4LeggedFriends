using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace _4LeggedFriendsServer.Models
{
  public class PetTypeEntity : IEntity
  {
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int IdPetType { get; set; }

    [Required]
    [Column(TypeName = "nvarchar(50)")]
    public string PetType { get; set; } = string.Empty;

    [Required]
    [Column(TypeName = "nvarchar(5)")]
    public string PetTypeCode { get; set; } = string.Empty;
  }

  public class PetTypeModel : IModel
  {
    public string PetType { get; set; } = string.Empty;

    public string PetTypeCode { get; set; } = string.Empty;
  }
}

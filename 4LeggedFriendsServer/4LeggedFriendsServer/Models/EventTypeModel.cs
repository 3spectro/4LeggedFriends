using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace _4LeggedFriendsServer.Models
{
  public class EventTypeEntity : IEntity
  {
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public int IdEventType { get; set; }

    [Required]
    [Column(TypeName = "nvarchar(50)")]
    public string EventType { get; set; } = string.Empty;

    [Required]
    [Column(TypeName = "nvarchar(5)")]
    public string EventTypeCode { get; set; } = string.Empty;
  }

  public class EventTypeModel : IModel
  {
    public string EventType { get; set; } = string.Empty;
    public string EventTypeCode { get; set; } = string.Empty;
  }
}

using _4LeggedFriendsServer.Models;
using Microsoft.EntityFrameworkCore;

namespace _4LeggedFriendsServer.Data
{
  public class DataContext : DbContext
  {
    public DataContext(DbContextOptions<DataContext> options)
      : base(options) { }

    public DbSet<ContactTypeEntity> ContactTypes { get; set; }
    public DbSet<EventTypeEntity> EventTypes { get; set; }
    public DbSet<PetTypeEntity> PetTypes { get; set; }
  }
}

using _4LeggedFriendsServer.Models;
using _4LeggedFriendsServer.Queries.Interfaces;

namespace _4LeggedFriendsServer.Repositories.Interfaces
{
  public interface IPartnerQueries : IQueries<ContactTypeModel>
  {

    Task<IApiResponse<IEnumerable<ContactTypeModel>>> GetAllContactTypes();
  }
}

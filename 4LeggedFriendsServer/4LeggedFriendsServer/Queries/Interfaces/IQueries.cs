using _4LeggedFriendsServer.Models;

namespace _4LeggedFriendsServer.Queries.Interfaces
{
  public interface IQueries<T> where T : IModel
  {

    Task<IApiResponse<IEnumerable<T>>> GetAllAsync();

    Task<IApiResponse<int>> InsertAsync(T model);

    Task<IApiResponse<int>> UpdateAsync(int id, T model);

    Task<IApiResponse<bool>> DeleteAsync(int id);
  }
}

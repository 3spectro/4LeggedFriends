using _4LeggedFriendsServer.Data;
using _4LeggedFriendsServer.Enums;
using _4LeggedFriendsServer.Models;
using _4LeggedFriendsServer.Queries.Interfaces;
using _4LeggedFriendsServer.Repositories.Interfaces;
using AutoMapper;
using Microsoft.EntityFrameworkCore;

namespace _4LeggedFriendsServer.Queries.Services
{
  public class PartnerQueries : BaseQuery, IPartnerQueries
  {

    public PartnerQueries(DataContext context, IMapper mapper)
    : base(context, mapper)
    { }

    public Task<IApiResponse<bool>> DeleteAsync(int id)
    {
      throw new NotImplementedException();
    }

    public Task<IApiResponse<IEnumerable<ContactTypeModel>>> GetAllAsync()
    {
      throw new NotImplementedException();
    }

    public async Task<IApiResponse<IEnumerable<ContactTypeModel>>> GetAllContactTypes()
    {
      var res = IApiResponse<IEnumerable<ContactTypeModel>>.GetDefault(Actions.GET);
      try
      {
        var list = _context.ContactTypes.ToListAsync().GetAwaiter().GetResult();
        res.Value = _mapper.Map<IEnumerable<ContactTypeModel>>(list);
      }
      catch (Exception ex)
      {
        // Log the ex info in somewhere
        res.SetServerError();
      }
      return res;
    }

    public Task<IApiResponse<int>> InsertAsync(ContactTypeModel model)
    {
      throw new NotImplementedException();
    }

    public Task<IApiResponse<int>> UpdateAsync(int id, ContactTypeModel model)
    {
      throw new NotImplementedException();
    }
  }
}

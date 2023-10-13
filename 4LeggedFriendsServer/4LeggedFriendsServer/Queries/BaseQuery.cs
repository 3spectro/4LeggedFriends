using _4LeggedFriendsServer.Data;
using AutoMapper;

namespace _4LeggedFriendsServer.Queries
{
    public abstract class BaseQuery
    {

        public readonly IMapper _mapper;
        public readonly DataContext _context;

        public BaseQuery(DataContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

    }
}

using _4LeggedFriendsServer.Models;
using AutoMapper;

namespace _4LeggedFriendsServer.IoC
{
  public class AutoMapperProfile : Profile
  {

    public AutoMapperProfile()
    {
      CreateMap<ContactTypeEntity, ContactTypeModel>().ReverseMap();
      CreateMap<EventTypeEntity, EventTypeModel>();
      CreateMap<PetTypeEntity, PetTypeModel>();
    }
  }
}

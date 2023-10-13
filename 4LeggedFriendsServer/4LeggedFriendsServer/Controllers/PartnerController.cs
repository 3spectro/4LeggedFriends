using _4LeggedFriendsServer.Models;
using _4LeggedFriendsServer.Repositories.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace _4LeggedFriendsServer.Controllers
{
  [Route("api/[controller]")]
  [ApiController]
  public class PartnerController : ControllerBase
  {

    private readonly IPartnerQueries _partnerRepository;

    public PartnerController(IPartnerQueries partnerRepository)
    {
      _partnerRepository = partnerRepository;
    }

    [HttpGet("get-contact-types")]
    public async Task<ActionResult<IEnumerable<ContactTypeModel>>> GetContactTypes()
    {
      var contactTypes = _partnerRepository.GetAllContactTypes();
      return Ok(contactTypes);
    }
  }
}

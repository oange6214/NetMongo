using DriversAppApi.Services;
using Microsoft.AspNetCore.Mvc;

namespace src.Controllers;

[ApiController]
[Route("api/[controller]")]
public class DriversController : ControllerBase
{
    private readonly DriverService _driverService;

    public DriversController(DriverService driverService) =>
        _driverService = driverService;

    [HttpGet("{id:length(24)}")]
    public async Task<IActionResult> Get(string id)
    {
        var existingDriver = await _driverService.GetAsync(id);

        if (existingDriver is null)
            return NotFound();

        return Ok(existingDriver);
    }
}

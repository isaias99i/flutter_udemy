using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;

namespace finance_project_api.Controllers
{
    public class UsuarioController : ControllerBase
    {
        private readonly ILogger<UsuarioController> _logger;
        public UsuarioController(ILogger<UsuarioController> logger)
        {
            _logger = logger;
        }
    }
}

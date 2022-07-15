using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnlineStore.Model;

namespace OnlineStoreSDP221Dapper.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        [HttpGet("products")]
        public async Task<IActionResult> GetProducts()
        {
            throw new NotImplementedException();
        }

        [HttpGet("product")]
        public async Task<IActionResult> GetProductById(int id)
        {
            throw new NotImplementedException();
        }

        [HttpPut("product")]
        public async Task<IActionResult> CreateProduct([FromBody] Product product)
        {
            throw new NotImplementedException();
        }

        [HttpPost("product")]
        public async Task<IActionResult> UpdateProduct([FromBody] Product product)
        {
            throw new NotImplementedException();
        }

        [HttpDelete("product")]
        public async Task<IActionResult> DeleteProduct(int id)
        {
            throw new NotImplementedException();
        }
    }
}

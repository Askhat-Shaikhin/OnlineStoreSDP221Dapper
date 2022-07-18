using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using OnlineStore.Model;
using OnlineStore.Services.Interfaces;

namespace OnlineStoreSDP221Dapper.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService)
        {
            _productService = productService;
        }

        [HttpGet("products")]
        public async Task<IActionResult> GetProducts(int? top = null)
        {
            var result = await _productService.GetProducts(top);
            return Ok(result);
        }

        [HttpGet("product")]
        public async Task<IActionResult> GetProductById(int id)
        {
            var result = await _productService.GetProductById(id);
            return Ok(result);
        }

        [HttpPut("product")]
        public async Task<IActionResult> CreateProduct([FromBody] Product product)
        {
            var result = await _productService.SaveProduct(product);
            return Ok(result);
        }

        [HttpPost("product")]
        public async Task<IActionResult> UpdateProduct([FromBody] Product product)
        {
            var result = await _productService.UpdateProduct(product);
            return Ok(result);
        }

        [HttpDelete("product")]
        public async Task<IActionResult> DeleteProduct(int id)
        {
            await _productService.DeleteProduct(id);
            return Ok();
        }
    }
}

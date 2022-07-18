using OnlineStore.Model;
using OnlineStore.Repository.Interfaces;
using OnlineStore.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineStore.Services.Impl
{
    public class ProductService : IProductService
    {
        private readonly IProductRepository _productRepository;

        public ProductService(IProductRepository productRepository)
        {
            _productRepository = productRepository;
        }

        public async Task<Product> GetProductById(int id)
        {
            var result = await _productRepository.GetProductById(id);
            return result;
        }

        public async Task<List<Product>> GetProducts(int? top = null)
        {
            var result = await _productRepository.GetProducts(top);

            return result;
        }

        public async Task<Product> SaveProduct(Product product)
        {
            var productId = await _productRepository.InsertProduct(product);

            var result = await _productRepository.GetProductById(productId);
            return result;
        }

        public async Task<Product> UpdateProduct(Product product)
        {
            var result = await _productRepository.UpdateProduct(product);
            return result;
        }

        public async Task DeleteProduct(int id)
        {
            await _productRepository.DeleteProductById(id);
        }
    }
}

using OnlineStore.Model;

namespace OnlineStore.Services.Interfaces
{
    public interface IProductService
    {
        Task<Product> GetProductById(int id);
        Task<List<Product>> GetProducts(int? top = null);
        Task<Product> SaveProduct(Product product);
        Task<Product> UpdateProduct(Product product);
        Task DeleteProduct(int id);
    }
}

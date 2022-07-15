using OnlineStore.Model;

namespace OnlineStore.Repository.Interfaces
{
    public interface IProductRepository
    {
        Task<Product> GetProductById(int id);
        Task<List<Product>> GetProducts(int? top = null);
        Task<int> InsertProduct(Product product);
        Task<Product> UpdateProduct(Product product);
        Task DeleteProductById(int id);
    }
}

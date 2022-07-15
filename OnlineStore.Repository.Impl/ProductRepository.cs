using Dapper;
using OnlineStore.Model;
using OnlineStore.Repository.Interfaces;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineStore.Repository.Impl
{
    public class ProductRepository : IProductRepository
    {
        private IDbConnection Connection => new SqlConnection("");

        public async Task<Product> GetProductById(int id)
        {
            var sqlQuery = @"select * from Products where Id = @id";

            using (var db = Connection)
            {
                var result = await db.QueryFirstOrDefaultAsync<Product>(sqlQuery, new { id = id });
                return result;
            }
        }

        public async Task<List<Product>> GetProducts(int? top = null)
        {
            string sqlQuery = string.Empty;

            if (top.HasValue)
                sqlQuery += "select top 10 * from Products";
            else
                sqlQuery += @"select * from Products";
            
            using var db = Connection;
            var result = await db.QueryAsync<Product>(sqlQuery);
            return result.ToList();
        }

        public async Task<int> InsertProduct(Product product)
        {
            throw new NotImplementedException();
        }

        public async Task<Product> UpdateProduct(Product product)
        {
            throw new NotImplementedException();
        }

        public async Task DeleteProductById(int id)
        {
            var sqlQuery = @"";

            throw new NotImplementedException();
        }
    }
}

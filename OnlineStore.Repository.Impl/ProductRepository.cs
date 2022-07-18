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
        private IDbConnection Connection => new SqlConnection("Server=(localdb)\\MSSQLLocalDB;Database=OnlineStoreDb;TrustServerCertificate=True;Trusted_Connection=True");

        public async Task<Product> GetProductById(int id)
        {
            var sqlQuery = @"select * from Products where Id = @id";

            using (var db = Connection)
            {
                var result = await db.QueryFirstOrDefaultAsync<Product>(sqlQuery, new { id});
                return result;
            }
        }

        public async Task<List<Product>> GetProducts(int? top = null)
        {
            string sqlQuery = string.Empty;

            if (top.HasValue)
                sqlQuery += "select top (@top) * from Products";
            else
                sqlQuery += @"select * from Products";
            
            using var db = Connection;
            var result = await db.QueryAsync<Product>(sqlQuery, new { top = top });
            return result.ToList();
        }

        public async Task<int> InsertProduct(Product product)
        {
            var sqlQuery = @"
                INSERT INTO [dbo].[Products]
                           ([Name]
                           ,[Price]
                           ,[Count]
                           ,[Description]
                           ,[CreatedDate]
                           ,[UpdatetDate])
                     OUTPUT INSERTED.Id
                     VALUES
                           (@Name
                           ,@Price
                           ,@Count
                           ,@Description
                           ,getdate()
                           ,getdate())";

            using var db = Connection;
            var result = await db.QueryFirstAsync<int>(sqlQuery, product);

            return result;
        }

        public async Task<Product> UpdateProduct(Product product)
        {
            var sqlQuery = @"
                UPDATE [dbo].[Products]
                   SET [Name] = @Name
                      ,[Price] = @Price
                      ,[Count] = @Count
                      ,[Description] = @Description
                      ,[CreatedDate] = getdate()
                      ,[UpdatetDate] = getdate()
                 WHERE Id = @id";

            using var db = Connection;
            var executeResult = await db.ExecuteAsync(sqlQuery, product);

            return await GetProductById(product.Id);
        }

        public async Task DeleteProductById(int id)
        {
            var sqlQuery = @"delete from Product where Id = @id";

            using var db = Connection;
            var result = await db.ExecuteAsync(sqlQuery, new { id });
        }
    }
}

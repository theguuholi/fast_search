defmodule FastSearch.Products.Create do
  alias FastSearch.Products.Data.Product
  alias FastSearch.ElasticsearchCluster, as: Cluster

  def build_product() do
    %Product{
      name: Faker.Commerce.product_name(),
      price: Faker.Commerce.price(),
      category: Faker.Commerce.department()
    }
  end

  def execute(%Product{} = product) do
    Elasticsearch.put_document(Cluster, product, "products")
  end
end

defmodule FastSearch.Products.Data.Product do
  defstruct ~W[id name price category]a

  defimpl Elasticsearch.Document, for: __MODULE__ do
    def id(product), do: product.id
    def routing(_), do: false

    def encode(product) do
      %{
        id: product.id,
        name: product.name,
        price: product.price,
        category: product.category,
      }
    end
  end
end

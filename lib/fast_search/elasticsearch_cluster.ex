defmodule FastSearch.ElasticsearchCluster do
  use Elasticsearch.Cluster, otp_app: :fast_search
end

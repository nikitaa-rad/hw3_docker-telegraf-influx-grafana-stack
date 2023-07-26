# app/controllers/products_controller.rb

class ProductsController < ApplicationController
  def search
    query = params[:query]

    # Query MySQL
    @mysql_results = Product.where("name LIKE ?", "%#{query}%").to_a

    # Query Elasticsearch
    @elasticsearch_results = Product.search(query).records.to_a

    render json: {
      mysql_results: @mysql_results,
      elasticsearch_results: @elasticsearch_results
    }
  end
end


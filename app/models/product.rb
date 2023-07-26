# app/models/product.rb

class Product < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :name, type: 'text'
    end
  end

  def as_indexed_json(_options = {})
    {
      name: name
    }
  end
end

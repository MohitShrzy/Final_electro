class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :store

  def total_price
    store.Price*quantity
  end
end

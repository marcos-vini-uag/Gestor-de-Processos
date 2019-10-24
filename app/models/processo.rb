class Processo < ApplicationRecord
  def self.search (query)
    where("num_processo like ?", "%#{query}%")
  end
end

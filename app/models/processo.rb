class Processo < ApplicationRecord
  has_and_belongs_to_many :advogados

  def self.search (query)
    where("num_processo like ?", "%#{query}%")
  end
end

class Author < ApplicationRecord
  has_many :books

  def get_book
    puts 'get'
  end

  def get_book
    puts 'get'
  end
end

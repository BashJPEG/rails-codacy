class Author < ApplicationRecord
  has_many :books

  def get_book
    puts 'get'
  end

  def get_book
    puts 'get'
  end

  def get_book
    puts 'get'
  end

  def get_book
    eval("puts 'test'")
  end

  def test
    age/0
  end
end

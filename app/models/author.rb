class Author < ActiveRecord::Base
  has_and_belongs_to_many :books

  def to_s
    name
  end
end

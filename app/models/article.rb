class Article < ApplicationRecord

  # Relationships
  belongs_to :editor
  has_many :comments

  # Search functionality, compares value in search to values of headline and body content
  def self.search(search)
    if search

      where(["headline LIKE ?", "% #{search}%"])
      where(["body LIKE ?", "% #{search}%"])

    else
      all
    end
  end

end
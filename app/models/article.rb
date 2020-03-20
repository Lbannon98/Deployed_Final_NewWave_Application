class Article < ApplicationRecord

  belongs_to :editor
  has_many :comments

  def self.search(search)
    if search

      where(["headline LIKE ?", "% #{sealsrch}%"])
      where(["body LIKE ?", "% #{search}%"])

    else
      all
    end
  end

end
require "singleton"

class Profile < ApplicationRecord
  include Singleton

  # Relationships
  belongs_to :user, :dependent => :destroy

end
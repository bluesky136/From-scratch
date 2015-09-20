class User < ActiveRecord::Base
  has_many :owned_projects, foreign_key: 'owner_id', class_name: 'Project'

  has_many :accesses
  has_many :projects, through: :accesses
  has_many :actions

  def initials
    name.scan(/(\w).*\W(\w)/).join
  end
end

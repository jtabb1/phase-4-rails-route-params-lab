# The official solution was credited below:

class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  # The following two methods are from the official solution and they both pass the bonus test:

  # class method written using a scope (https://www.rubyguides.com/2019/10/scopes-in-ruby-on-rails/)
  scope :by_name, ->(name) { where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%") }

  # class method written without using a scope
  # def self.by_name(name)
  #   Student.where("first_name LIKE ? OR last_name LIKE ?", "%#{name}%", "%#{name}%")
  # end

end

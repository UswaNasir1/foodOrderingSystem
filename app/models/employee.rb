class Employee < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :employees, class_name: 'Employee', foreign_key: 'manager_id'
  has_one :resturant, class_name: 'Resturant', foreign_key: 'manager_id'
  belongs_to :resturant,  class_name: "Resturant", foreign_key: "resturant_id"
  validate :manager_must_be_a_manager, unless: :manager?

  def manager?
    manager.nil?
  end

  private
    # our custom validation method
    def manager_must_be_a_manager
      errors.add(:manager, 'is not a manager') unless manager.manager?
    end
end
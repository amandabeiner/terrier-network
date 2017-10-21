class Profile < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :email, presence: true
  validates :role, presence: true, inclusion: { in: %w(alum student)}

  validates :contact_permissions, presence: true, inclusion: { in: %w(private public) }
  validates_format_of :email, with: /\b[A-Z0-9._%a-z\-]+@bu\.edu\z/, message: "You must have an active BU email address to register."
  
end


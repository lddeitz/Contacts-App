class Contact < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true

  # def friendly_updated_at
  #   updated_at: @contact.strftime(%Y)
  # end

  has_many :contact_groups
  has_many :groups, through: :contact_groups
  

end

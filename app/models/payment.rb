class Payment < ActiveRecord::Base
  belongs_to :loan

  validates :loan_id, presence: true

end

class CatRentalRequest < ApplicationRecord
  STATUS = ['PENDING', 'APPROVED', 'DENIED']

  belongs_to(
    :cat,
    class_name: 'Cat',
    foreign_key: :cat_id,
    primary_key: :id
  )

  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inlcusion: { in: CatRentalRequest::STATUS,
    message: 'must be a valid status.'}
end
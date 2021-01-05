class CatRentalRequest < ApplicationRecord
  STATUS = ['PENDING', 'APPROVED', 'DENIED']

  belongs_to(
    :cat,
    class_name: 'Cat',
    foreign_key: :cat_id,
    primary_key: :id
  )


  validates :cat_id, :start_date, :end_date, :status, presence: true
  validates :status, inclusion: { in: CatRentalRequest::STATUS,
    message: 'must be a valid status.'}
  validate :does_not_overlap_approved_request
  validate :date_order

  private

  def overlapping_requests
    CatRentalRequest
      .where.not(id: self.id)
      .where(cat_id: cat_id)
      .where.not('start_date > :end_date OR end_date < :start_date',
                 start_date: start_date, end_date: end_date)
  end

  def overlapping_approved_requests
    overlapping_requests.select { |request| request.status == 'APPROVED'}
  end

  def does_not_overlap_approved_request
    unless overlapping_approved_requests.empty?
      errors[:base] << 'dates cannot overlap an approved request.'
    end
  end

  def date_order
    if self.start_date > self.end_date
      errors[:base] << 'start_date must come before end_date'
    end
  end
end
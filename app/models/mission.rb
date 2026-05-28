class Mission < ApplicationRecord
  belongs_to :agent

  validates :title, presence: true
  validates :status, presence: true, inclusion: { in: ['assigned', 'in_progress', 'completed'] }

  def status=(value)
    if value.present? && !['assigned', 'in_progress', 'completed'].include?(value)
      raise ArgumentError, "Invalid status: #{value}"
    end
    super(value)
  end
  #enum  :status...
  #1 sql запросом  2  таска
end
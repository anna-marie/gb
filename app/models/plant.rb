class Plant < ActiveRecord::Base
  has_one  :type
  has_one  :light
  has_many :layer
  
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :common_name, presence: true, length: { maximum: 80 }
  validates :sci_name, presence: true, length: { maximum: 80 }
  validates :layer_id, presence: true
  validates :description, length: { maximum: 3000 }
  validates :sources, length: { maximum: 500 }
  validates :height_min, length: { maximum: 3 }
  validates :height_max, length: { maximum: 3 }
end

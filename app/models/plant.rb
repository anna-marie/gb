class Plant < ActiveRecord::Base
  has_one  :type
  has_one  :light
  has_many :layer
  
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true
  validates :common_name, presence: true, length: { in: 3..80 }, uniqueness: true
  validates :sci_name, presence: true, length: { in: 3..80 }, uniqueness: true
  validates :layer_id, presence: true
  validates :description, length: { maximum: 3000 }
  validates :sources, length: { maximum: 500 }
  validates :height_min, length: { in: 0..5 }
  validates :height_max, length: { in: 0..5 }
  validate :relative_values
  
  def relative_values
    if (!self.height_min.nil? && !self.height_max.nil?) && self.height_min >= self.height_max
      self.errors[:height_min] = " must be less than maximum height."
    end
	
    if (!self.ph_min.nil? && !self.ph_max.nil?) && self.ph_min >= self.ph_max
      self.errors[:ph_min] = " must be less than maximum pH."
    end
  end
end

class Product < ActiveRecord::Base
  after_create :set_attributes
  
  def set_attributes
    # 'ssid' = 'store item id'
    self.image = "siid_#{self.id}.png"
    self.permalink = "siid#{self.id}"
  end
  
end

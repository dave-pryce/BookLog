class Book < ActiveRecord::Base

belongs_to :type


validates :title, presence: true
validates :author, presence: true
validates :description, presence: true


 scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

 before_save :set_keywords



   protected
    def set_keywords
      self.keywords = [title, author, description].map(&:downcase).join(' ')
    end




end

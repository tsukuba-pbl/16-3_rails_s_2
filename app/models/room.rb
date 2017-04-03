class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  has_many :uxsers, dependent: :destroy
  has_many :ft_layouts
  
  belongs_to :article
  
  validates :article_id, presence: true
  validates :width, presence: true
  validates :height, presence: true
  
  validate :exsitence_of_article_id
  validate :uniqueness_of_article_id　, on: :registration
  
  private
    def exsitence_of_article_id
      errors.add(:article_id, "登録する部屋がどの物件の部屋であるか不明です　指定されたidの物件がみつかりません") unless Article.pluck(:id).include?(article_id)
    end
    
    def uniqueness_of_article_id
      errors.add(:article_id, "すみません　一つの物件に登録できる部屋は一つまでです すでにその物件には部屋が登録されています")  if Room.find_by(article_id: article_id)
    end
end

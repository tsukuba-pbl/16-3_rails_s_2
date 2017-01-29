class Room < ActiveRecord::Base
  mount_uploader :madori, MadoriUploader
  has_many :uxsers, dependent: :destroy
  has_many :ft_layouts
  
  belongs_to :article
  
  validates :article_id, presence: true
  validates :width, presence: true
  validates :height, presence: true
  
  validate :exsitence_of_article_id

  private
    def exsitence_of_article_id
      errors.add(:article_id, "登録する部屋がどの物件の部屋であるか不明です　指定されたidの物件がみつかりません") unless Article.pluck(:id).include?(article_id)
    end
end

class Knowledge < ActiveRecord::Base
  def self.search(search)
    if search.blank?
      all
    else
      where('title LIKE ? OR body LIKE ?', "%#{search}%", "%#{search}%").order('created_at DESC')
    end
  end
end

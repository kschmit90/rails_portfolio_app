class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  validates :body, :title, presence: true
  
  def excerpt(string)
      excerptarray = string.split("")
      excerptarray[0...29].join("")
    end
  
    def relative_length
      @article = Article.find(params[:id])
      wordsarray = @article.body.split(" ")
      if wordsarray >= 500
        return "Long"
      elsif (wordsarray >= 100) && (wordsarray < 500)
        return "medium"
      else wordsarray <= 99
        return "short"
      end
    end
    
end

Given("I click {string} on {string}") do |element, article|
  within ("#article-#{find_article(article)}") { click_link_or_button element }
end

def find_article(article)
  Article.find_by(title: article).id
end

Given("the following articles exist") do |table|
  table.hashes.each do |article|
    Article.create(article)
  end
end

Given("I visit the {string} page") do |page_name|
  visit page_path_from(page_name)
end

Then("I should see {string}") do |text|
  expect(page).to have_content text
end

Given("I click {string}") do |element|
  click_link_or_button element
end

When("I fill in {string} with {string}") do |field, value|
  fill_in field, with: value
end

Then("I should be redirected to the {string} page") do |page_name|
  @article = Article.find_by(title: page_name)
  expect(page.current_path).to eq page_path_from(page_name)
end

Then("I should be on the {string} page") do |page_name|
  expect(page.current_path).to eq page_path_from(page_name)
end

Then("show me the page") do
  save_and_open_page
end

def page_path_from(page_name)
  case page_name.downcase
    when 'landing' then root_path
    when 'new article' then new_article_path
    when 'lmfao' then article_path(@article)
    when 'thomas' then article_path(@article)
  end
end

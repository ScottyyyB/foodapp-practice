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

Then("show me the page") do
  save_and_open_page
end


def page_path_from(page_name)
  case page_name.downcase
    when 'landing' then root_path
  end
end

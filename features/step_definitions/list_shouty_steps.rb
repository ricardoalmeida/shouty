Then /^I should see shouties table$/ do |table|
  table.diff! Hpricot(response.body).search(".shouty > .body").collect { |body| body.inner_text }
end
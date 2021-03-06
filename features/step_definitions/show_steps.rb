Given 'some existing gitshots' do

end

When 'I visit the list of gitshots' do
  visit('/index.html')
end

Then 'I should see a list of gitshots' do
  page.should have_selector('img')
end

Given 'there is a gitshots' do

end

When 'I visit it' do
  visit '/gitshot/2013-01-29-095917.cms/index.html'
end

Then 'I should see informations about it' do
  page.should have_selector('.info')
end

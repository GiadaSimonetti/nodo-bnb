def fill_in_listing(name: 'My house',
                    description: 'Nice place!',
                    price: '100',
                    from_date: '12/10/2018',
                    to_date: '19/10/2018')

  visit('/spaces/new')
  fill_in :name, with: name
  fill_in :description, with: description
  fill_in :price, with: price
  fill_in :from_date, with: from_date
  fill_in :to_date, with: to_date
  click_button 'List my space'
end

def signup(username: 'Fran', password: 'password')
  visit '/'
  fill_in 'username', with: username
  fill_in 'password', with: password
  click_button 'Submit'
end

def login(username: 'Fran', password: 'password')
  visit('/login')
  fill_in 'username', with: username
  fill_in 'password', with: password
  click_button 'login'
end

def fill_in_with_makers
  fill_in_listing(name: 'Makers Academy',
                  description: 'We love a good diagram!',
                  price: '8000',
                  from_date: '02/01/2018',
                  to_date: '16/03/2018')
end

def fill_in_with_st_pauls
  fill_in_listing(name: 'St Pauls',
                  description: 'The best place!',
                  price: '10',
                  from_date: '16/03/2018',
                  to_date: '16/04/2018')
end

def logout
  click_button 'Log Out'
end

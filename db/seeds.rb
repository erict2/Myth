puts 'Starting Players'
Player.delete_all
Player.create(firstname: 'Jane', lastname: 'Doe', emailaddress: 'no@email.com', playertype: 'Cast')
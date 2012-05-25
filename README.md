## Ohai: a personal social media timeline

Ohai is a personal timeline that pulls in feeds from your Twitter, Foursquare, Instagram, Tumblr and Last.fm accounts. It was created by Becky and Chris Carella, Ryan Buskirk and Giff Constable. 

### Examples of Ohai in action
* [http://fridalovelace.com/](http://fridalovelace.com/)
* [http://ccarella.com/](http://ccarella.com/)
* [http://giffc.ohai.me/](http://giffc.ohai.me/)
* [http://ryanbuskirk.com/](http://ryanbuskirk.com/)

### Detailed Instructions

Full instructions for hosting your own can be found here: [https://github.com/giffc/ohai_its_me/wiki/Hosting-Your-Own-Ohai-on-Heroku](https://github.com/giffc/ohai_its_me/wiki/Hosting-Your-Own-Ohai-on-Heroku)


### Notes for running locally:

in ``~/.bash_profile``

```
  export TWITTER_KEY="u7wnUBikdHd4n2hXOqcg"
  export TWITTER_SECRET="YRXXhFz8SiAuYjHtEHYGd6Jn7C54H4YPGgmdhQ8mU"
  
  export EMBEDLY_KEY="8e99ebaaa11c11e1b7a14040aae4d8c9"
  
  export INSTAGRAM_KEY="5514305314d64036b495104345911dfa"
  export INSTAGRAM_SECRET="70d8e9f8b77b4637ad919514a807c046"
```
restart terminal

```
  rake db:setup

  rails c
  > User.create(:username => "your_username", :email => "your@email.com", :password => "test", :password_confirmation => "test")
  exit
```

``rails s``
go to [http://localhost:3000/signin](http://localhost:3000/signin)
signin
go to [http://localhost:3000/accounts](http://localhost:3000/accounts) link your accounts

``rails c``
```
  User.first.linked_accounts.each{|a| a.import}
  exit
```

go to [http://localhost:3000/](http://localhost:3000/)

### Final Notes
This repository is the front end to [https://github.com/becarella/navel_gazer](https://github.com/becarella/navel_gazer)

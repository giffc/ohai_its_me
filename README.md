## Ohai: a personal social media timeline

Ohai is a personal timeline that pulls in feeds from your Twitter, Foursquare, Instagram, Tumblr and Last.fm accounts. It was created by Becky and Chris Carella, Ryan Buskirk and Giff Constable. 

### Examples of Ohai in action
* [http://ohai.giffconstable.com/](http://ohai.giffconstable.com/)
* [http://fridalovelace.com/](http://fridalovelace.com/)
* [http://ccarella.com/](http://ccarella.com/)
* [http://ryanbuskirk.com/](http://ryanbuskirk.com/)

### Detailed Instructions

Full instructions for hosting your own can be found here: [https://github.com/giffc/ohai_its_me/wiki/Hosting-Your-Own-Ohai-on-Heroku](https://github.com/giffc/ohai_its_me/wiki/Hosting-Your-Own-Ohai-on-Heroku)


### Notes for running locally:

in ``~/.bash_profile``

```
  export TWITTER_KEY="xxxxx"
  export TWITTER_SECRET="xxxxx"
  
  export EMBEDLY_KEY="xxxxx"
  
  export INSTAGRAM_KEY="xxxxxx"
  export INSTAGRAM_SECRET="xxxxxx"
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

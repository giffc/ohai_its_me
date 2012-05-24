## This repo is the front end to [https://github.com/becarella/navel_gazer](https://github.com/becarella/navel_gazer)

You can see an example of it running at [http://fridalovelace.com/](http://fridalovelace.com/)

Notes:

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

## Created by

Becky Carella, Ryan Buskirk, Giff Constable, Chris Carella
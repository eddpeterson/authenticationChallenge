## Understand authentication and authorization in Rails 3 

*   Simplest possible thing: http_basic_authenticate_with project
    
    >Create a simple http basic authentication storing password in the controller without any database
    
    
    
*   Simplest possible thing that can be applied in production: has_secure_password project

    >Use Rails 3.1 has_secure_password option on model that allows for simple authentication from scratch 
    
    >It is not a good idea to send password over http, so use SSL:
    
    >Mark controller with `force_ssl`
    
    >Start rails in production mode as in debug mode ssl is not used and use https, however it will not work with rails default WEBrick server as you will get an error most likely because you run localhost on port 3000. SSL uses port 443 and all the bla bla related to certificates - google it up
    
    >`rails s -e production`
    
    >Reference http://railscasts.com/episodes/270-authentication-in-rails-3-1
    
    >To use it with mongoid `include ActiveModel::SecurePassword` in your model
    
    >You could as well BCrypt your password if using `has_secure_password` is not an option: http://railscasts.com/episodes/250-authentication-from-scratch?view=asciicast



*   Authentication with Warden

    >Rack based authentication. Probably not necessarily to be used directly, but shows how easy it is. Devise uses Warden.

    >http://railscasts.com/episodes/305-authentication-with-warden



*   Simple OmniAuth demo allows to easily authenticate users from twitter, facebook etc.
    
    >To get twitter app, go to dev.twitter.com. Or choose facebook or both twitter and facebook together.
      
    >You need to modify simple_omniauth/config/initializer/omniauth.rb file with valid twitter key/secret
    
    >If you are getting OAuth::Unauthorized (401 Unauthorized), go to dev.twitter.com and specify callback url to `http://127.0.0.1:3000/auth/twitter/callback`    

    >Episode 241: Simple OmniAuth


    
*   Allow user to sign in with multiple authentications at the same time using Devise and Omniauth: 
omniauth_with_multiple_authentications project

    >You need to modify simple_omniauth/config/initializer/omniauth.rb file with valid twitter key/secret

    When creating such a solution first add devise gem, run `rails generate devise:install` and `rails generate devise user` and `rake db:migrate`

    >http://railscasts.com/episodes/235-omniauth-part-1
    
    >http://railscasts.com/episodes/236-omniauth-part-2
    
    >Optional since I am using Devise to handle no password user sign in: http://railscasts.com/episodes/304-omniauth-identity



*   Authorization with CanCan
    
    >`rails g cancan:ability`
    
    > https://github.com/ryanb/cancan
    
    > Video is a bit outdated, but still very valuable: http://railscasts.com/episodes/192-authorization-with-cancan

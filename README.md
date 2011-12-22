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

*   TODO: http://railscasts.com/episodes/305-authentication-with-warden

*   TODO: OmniAuth 1.0

    >Episode 241: Simple OmniAuth

    >http://railscasts.com/episodes/304-omniauth-identity
    
*   TODO: Using identity with facebook and twitter allowing users to use all their identities 

*   TODO: Authorization with CanCan

*   Test Devise 2.0 RC if it is not yet released


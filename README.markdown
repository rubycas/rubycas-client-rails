RubyCAS-Client-Rails
====================

Rails plugin for using the RubyCAS-Client as a controller filter.

This uses a Railtie, so will only work with Rails 3.0 and up.


Installation
============

Add the following to your `Gemfile`:

    gem 'rubycas-client-rails'
    
Then run bundler in your Rails app's root directory:

    bundle install

Now add both to your `Gemfile`:

    gem 'rubycas-client'
    gem 'rubycas-client-rails', :path => '/path/where/you/cloned/rubycas-client-rails'
    gem 'rubycas-client-rails', github: 'recruiting-tech/rubycas-client-rails', branch: 'ncsa-rails6'

Once the necessary gems have been installed, in your `application.rb` add:

    config.rubycas.cas_base_url = 'https://cas.example.com/'
    config.rubycas.session_store_klass = RubyCAS::RailsCacheStore

Session Store Klass:

There are two options, `RubyCAS::RailsCacheStore` and `RubyCAS::SessionStore`.  The default is SessionStore, but is not recommended because it causes a CookieOverflow issue.

    config.rubycas.session_store_klass = RubyCAS::RailsCacheStore

Finally, to enable the CAS filter for a controller:

    class MyController < ApplicationController

      before_filter RubyCAS::Filter
      
If you want authentication to be optional, use the GatewayFilter instead:

      before_filter RubyCAS::GatewayFilter
  

Many other configuration options are available. For example you can instruct
the client to log its actions to the default Rails logger using:

    config.rubycas.logger = Rails.logger

See the (outdated) documentation at [http://rubycas-client.rubyforge.org/](http://rubycas-client.rubyforge.org/)
for a full list of config options.


Copyright (c) 2011 University of Toronto, released under the MIT license

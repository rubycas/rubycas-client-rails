RubyCAS-Client-Rails
====================

Rails plugin for using the RubyCAS-Client as a controller filter.

This uses a Railtie, so will only work with Rails 3.0 and up.


Example
=======

First, install the `rubycas-client` gem:

    gem install rubycas-client

Next, clone the `rubycas-client-rails` code from Github (this will eventually
be released as a gem too).

Now add both to your `Gemfile`:

    gem 'rubycas-client'
    gem 'rubycas-client-rails', :path => '/path/where/you/cloned/rubycas-client-rails'

In your `application.rb` add:

    config.rubycas.cas_base_url = 'https://cas.example.com/'
  
Finally, to enable the CAS filter for a controller:

    class MyController < ApplicationController
  
      before_filter RubyCAS::Filter
  
Many other configuration options are available. For example you can instruct
the client to log its actions to the default Rails logger using:

    config.rubycas.logger = Rails.logger

See the (outdated) documentation at [http://rubycas-client.rubyforge.org/](http://rubycas-client.rubyforge.org/)
for a full list of config options.


Copyright (c) 2011 University of Toronto, released under the MIT license

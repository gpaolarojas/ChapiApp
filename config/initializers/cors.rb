<<<<<<< HEAD
# config/initializers/cors.rb
=======
>>>>>>> 54f82f633f2f61f369f6909ede5f424e7cda00cf
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'
      resource '*',
        headers: :any,
        methods: %i(get post put patch delete options head)
    end
  end
<<<<<<< HEAD
=======
  
>>>>>>> 54f82f633f2f61f369f6909ede5f424e7cda00cf

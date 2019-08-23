class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'
end

class MyMailer < ActionMailer::Base
end

# app/mailers/user_mailer.rb
class UserMailer < ApplicationMailer
end
class ApplicationMailer < ActionMailer::Base
  default from: '"kotozute運営チーム" <sasakamaboko2018@gmail.com>', charset: 'iso-2022-jp'
  layout 'mailer'
end

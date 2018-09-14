class ApplicationMailer < ActionMailer::Base
  add_template_helper ApplicationHelper
  default from: "no-reply@jungle.com"
  layout 'mailer'

end

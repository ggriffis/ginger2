class InquiryMailer < ActionMailer::Base

  def inquiry(inquiry)
    mail(to: "gingergriffis@hotmail.com", subject: (inquiry.subject_type + ' from my website from ' + inquiry.name),
          reply_to: inquiry.email, body: inquiry.message, from: inquiry.email)
  end

end

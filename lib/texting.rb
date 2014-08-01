require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class Texting
  def initialize
    # put your own credentials here
    account_sid = 'ACe330ba04d082392df4cb3511dcb72cec'
    auth_token = '2008ea097713e401a16c54029058da82'

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new account_sid, auth_token
  end

  def send(message)
    @client.account.messages.create(
      :from => '+18152642023',
      :to => '+15165190814', 
      :body => message
    )
  end
end

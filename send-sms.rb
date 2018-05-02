require("bundler")
Bundler.require

account_sid= "ACda02ef494695706a2db99caea8921245"
auth_token= "39a7f713c065a32959ed69867d4071a6"

@client = Twilio::REST::Client.new(account_sid, auth_token)

@client.messages.create(
    to: '14156963777',
    from: '12183166643',
    body: 'testing!!!!'
)

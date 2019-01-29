ruleset com.stoutsuidae.krl.twilio {
  meta {
    name "twilio_module"
    description <<
For Lab2
>>
    use module com.stoutsuidae.krl.twilio.keys alias keys
    provides send_sms
  }
  global {
    account_sid = keys:sid;
    auth_token = keys:auth;
    send_sms = defaction(to, from, message, account_sid, auth_token){
        base_url = <<https://#{account_sid}:#{auth_token}@api.twilio.com/2010-04-01/Accounts/#{account_sid}/>>
        http:post(base_url + "Messages.json", form =
            {"From":from,
                "To":to,
                "Body":message
            })
}
  }
}
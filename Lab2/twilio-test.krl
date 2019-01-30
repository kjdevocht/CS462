ruleset com.stoutsuidae.krl.twilio.test {
  meta {
    name "twilio_test_module"
    description <<
For Lab2 testing
>>
use module com.stoutsuidae.krl.twilio.keys alias keys
    use module com.stoutsuidae.krl.twilio alias twilio 
        with account_sid = keys:twilio{"sid}
        auth_token = keys:twilio{"auth"}
    
  }
  global {

  }

    rule send {
      select when echo testTwilio
        twilio:send_sms("+18012349292", "+13853360183", "From pico");
  }
}
ruleset com.stoutsuidae.krl.twilio.test {
  meta {
    name "twilio_test_module"
    description <<
For Lab2 testing
>>
    use module com.stoutsuidae.krl.twilio alias twilio
  }
  global {


  }

    rule send {
      select when echo testTwilio
    twilio:send_sms(18012349292, 13853360183, "From pico");
  }
}
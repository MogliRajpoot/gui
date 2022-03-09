import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gui/dashboard.dart';

class OtpScreen extends StatefulWidget {
  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  int _counter = 30;
  late Timer _timer;
  bool pressed = true;
  @override
  Widget build(BuildContext context) {
    void startTimer() {
      Timer _timer = Timer.periodic(
        Duration(seconds: 1),
        (timer) {
          if (_counter == 0) {
            setState(() {
              timer.cancel();
            });
          } else {
            setState(() {
              _counter--;
            });
          }
        },
      );
    }

    _resendOTP() async {
      Future.delayed(Duration(seconds: 5), () {
        setState(
          () {},
        );
      });
    }

    _textFieldOTP(bool first, bool last) {
      return Container(
        height: 50,
        width: 50,
        child: AspectRatio(
          aspectRatio: 1.0,
          child: TextFormField(
            autofocus: false,
            onEditingComplete: () {},
            onChanged: (value) {
              if (value.length == 1 && last == false) {
                FocusScope.of(context).nextFocus();
              }
              if (value.isEmpty && first == false) {
                FocusScope.of(context).previousFocus();
              }
            },
            cursorColor: Colors.blue,
            maxLength: 1,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
                contentPadding: EdgeInsets.all(7),
                counter: Offstage(),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(width: 4))),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('lib/assets/otp_icon.jpg'),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Verification',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'Enter the 4-digit OTP sent to your mobile number.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey.shade500),
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _textFieldOTP(true, false),
                    _textFieldOTP(false, false),
                    _textFieldOTP(false, false),
                    _textFieldOTP(false, true),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24))),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue)),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Dasboard(),
                      ),
                    );
                  },
                  child: Text('Verify'),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Did'nt Recieved OTP",
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        setState(() {
                          if (pressed == true || _counter == 0) {
                            startTimer();
                            pressed = false;
                            _counter = 30;
                            pressed == true;
                          }
                        });
                      },
                      child: Text('Resend'),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'in 00:$_counter',
                        style: TextStyle(color: Colors.black54),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

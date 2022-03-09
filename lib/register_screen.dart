// ignore_for_file: prefer_const_constructor, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gui/otp_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double device_width = MediaQuery.of(context).size.width;
    double device_height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(
                  'lib/assets/mobi_khata_logo.png',
                  height: 200,
                  color: Colors.blue,
                ),
                // Container(
                //   margin: EdgeInsets.all(10),
                //   child: Text(
                //     'Register',
                //     style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                //   ),
                // ),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Enter your phone number to continue, we will send you a OTP to verify.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    // ignore: prefer_const_literals_to_create_immutables
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blue,
                        blurRadius: 5,
                        offset: Offset(0, 0),
                      )
                    ],
                  ),
                  height: 50,
                  margin: EdgeInsets.all(20),
                  child: TextFormField(
                    enabled: true,
                    keyboardType: TextInputType.number,
                    maxLength: 10,
                    textAlignVertical: TextAlignVertical.center,
                    style: TextStyle(fontSize: 20, wordSpacing: 2),
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        counter: Offstage(),
                        prefix: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('+92'),
                        ),
                        hintText: 'Enter mobile number',
                        hintStyle: TextStyle(color: Colors.black38)),
                  ),
                ),
                Container(
                  width: device_width,
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => OtpScreen(),
                        ),
                      );
                    },
                    child: Text('Request OTP'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// InternationalPhoneNumberInput(
//                   keyboardType: TextInputType.phone,
//                   maxLength: 11,
//                   initialValue: PhoneNumber(isoCode: 'PK'),
//                   onInputChanged: (value) {},
//                   cursorColor: Colors.orange.shade500,
//                   inputDecoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Enter Phone Number',
//                     hintStyle: TextStyle(
//                       color: Colors.grey.shade400,
//                     ),
//                   ),
//                   selectorConfig: SelectorConfig(
//                       selectorType: PhoneInputSelectorType.BOTTOM_SHEET),
//                 ),
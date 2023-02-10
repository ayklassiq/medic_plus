import 'package:flutter/material.dart';
import 'package:medic_plus/Views/widgets/phoneNumberTextFlied.dart';
import '../main/homePage_scren.dart';
import '../main/tabScreen.dart';
import '../widgets/button.dart';
import '../widgets/emailTextField.dart';
import '../widgets/passwordTextField.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const routeName = '/signUp-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;


    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Color(0xff6583ED),
                        )),
                    const SizedBox(
                      width: 7.5,
                    ),
                    const Text(
                      'Back',
                      style: TextStyle(
                        color: Color(0xff6583ED),
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 43,
                width: double.infinity,
                child: Center(
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                      color: Color(0xff6583ED),
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Email address',
                  style: TextStyle(
                    color: Color(0xff797982),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(16.0), child: EmailTextField()),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: PhoneNumberTextField(),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Color(0xff797982),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: PasswordTextField(),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    height: 46,
                    child: NavigationButton(
                        text: 'Create an account',
                        textColor: const Color(0xffffffff),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const TabScreen()));

                        },
                        color: const Color(0xff6583ED))),
              ),

              Padding(
                padding: const EdgeInsets.only(
                  left: 85,
                ),
                child: Row(
                  children: const [
                    Text(
                      'Already have an account ?  ',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        'Log in',
                        style: TextStyle(
                          color: Color(0xff6583ED),
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:screenSize.height/20,),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'By signing up, you are agreeing to our ',
                  style: TextStyle(
                    color:Color(0xff797982),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'terms and condition',
                      style: TextStyle(
                        color: Color(0xff6583ED),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'and',
                      style: TextStyle(
                        color: Color(0xff797982),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    ),
                    TextSpan(
                      text: 'privacy policy',
                      style: TextStyle(
                        color: Color(0xff6583ED),
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                    )
                  ]
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

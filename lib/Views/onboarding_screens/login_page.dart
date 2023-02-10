import 'package:flutter/material.dart';
import 'package:medic_plus/Views/widgets/button.dart';

import '../main/homePage_scren.dart';
import '../main/tabScreen.dart';
import '../widgets/emailTextField.dart';
import '../widgets/passwordTextField.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = '/login-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
          const Center(
            child: SizedBox(
              height: 43,
              width: 151,
              child: Text(
                'Log in',
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
          const Padding(padding: EdgeInsets.all(16.0), child: EmailTextField()),
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
                    text: 'Login',
                    textColor: const Color(0xffffffff),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx)=>const TabScreen()));

                    },
                    color: const Color(0xff6583ED))),
          ),
          InkWell(
            onTap: () {},
            child: const Center(
              child: Text(
                'Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 85,
            ),
            child: Row(
              children: const [
                Text(
                  'Don’t have an account yet ? ',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
                InkWell(
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Color(0xff6583ED),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:softagi_challenge_1/modules/sign_up_screen/signup_screen.dart';
import 'package:softagi_challenge_1/shared/component/component.dart';

class login_screen extends StatelessWidget {
  var emailAddressController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25.0,
          horizontal: 20,
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Image(
                    image: AssetImage('assets/images/login.jpg'),
                  ),
                ),
                Text(
                  'Welcome back!',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Log in to your existant account of Q Allure',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                default_TextFormField(
                  controller: emailAddressController,
                  radius: 50,
                  keyboardType: TextInputType.emailAddress,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Icon(
                      Icons.email_outlined,
                      size: 25,
                    ),
                  ),
                  labelText: 'Email Address',
                  onFieldSubmitted: (value) {},
                  onChange: (value) {},
                ),
                SizedBox(
                  height: 15,
                ),
                default_TextFormField(
                  controller: passwordController,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      size: 25,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 15),
                    child: Icon(Icons.remove_red_eye_outlined),
                  ),
                  obscureText: true,
                  labelText: 'Password',
                  onFieldSubmitted: (value) {},
                  onChange: (value) {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: default_MaterialButton(
                      width: 210,
                      height: 55,
                      Reduis: 50,
                      ButtonText: 'log in',
                      color: Colors.blue.shade700),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Or connect using ',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue.shade700,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.facebook_sharp,
                                color: Colors.white,
                                size: 25,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        print('facebook');
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            children: [
                              Text(
                                'G',
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Google',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {
                        print('google');
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => sign_up_screen()),
                        );
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

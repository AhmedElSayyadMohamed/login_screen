import 'package:flutter/material.dart';
import 'package:softagi_challenge_1/shared/component/component.dart';

class sign_up_screen extends StatelessWidget {
  var user_name_controller = TextEditingController();
  var emailAddressController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: MaterialButton(
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Let\'s Get started!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Create an account to Q Allure to get all features',
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
                controller: user_name_controller,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Icon(
                    Icons.person_outline,
                    size: 25,
                  ),
                ),
                labelText: 'Username',
                onFieldSubmitted: (value) {},
                onChange: (value) {},
              ),
              SizedBox(
                height: 15,
              ),
              default_TextFormField(
                controller: emailAddressController,
                radius: 50,
                keyboardType: TextInputType.emailAddress,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                controller: emailAddressController,
                radius: 50,
                keyboardType: TextInputType.phone,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Icon(
                    Icons.phone_android,
                    size: 25,
                  ),
                ),
                labelText: 'Phone',
                onFieldSubmitted: (value) {},
                onChange: (value) {},
              ),
              SizedBox(
                height: 15,
              ),
              default_TextFormField(
                controller: passwordController,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Icon(
                    Icons.lock_outline_rounded,
                    size: 25,
                  ),
                ),
                suffixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Icon(Icons.remove_red_eye_outlined),
                ),
                obscureText: true,
                labelText: 'Password',
                onFieldSubmitted: (value) {},
                onChange: (value) {},
              ),
              SizedBox(
                height: 15,
              ),
              default_TextFormField(
                controller: passwordController,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Icon(
                    Icons.lock_outline_rounded,
                    size: 25,
                  ),
                ),
                suffixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Icon(Icons.remove_red_eye_outlined),
                ),
                obscureText: true,
                labelText: 'Confirm Password',
                onFieldSubmitted: (value) {},
                onChange: (value) {},
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: default_MaterialButton(
                    ButtonText: 'Create',
                    width: 210,
                    height: 55,
                    Reduis: 50,
                    color: Colors.blue.shade700),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Log in here',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

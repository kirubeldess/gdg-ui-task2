import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task2/home/signup.dart';
import 'package:task2/home/homepage.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5,),
              Text(
                'Sign In',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height:25),
              Text(
                'Login to your account',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height:25),
              Text(
                'Email',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
              SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: 'Enter email',
                  hintStyle: TextStyle(color: Colors.grey),
                  ),
              ),
              SizedBox(height: 10,),
              Text(
                'Password',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                  ),
                  hintText: 'Enter Password',
                  hintStyle: TextStyle(color: Colors.grey),
                  ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password',
                    textAlign: TextAlign.end,
                    style: TextStyle(

                    ),
                    ),
                ],
              ),
              SizedBox(height: 30,),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 2),
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                      style: ElevatedButton.styleFrom(
                        padding:
                            const EdgeInsets.symmetric(horizontal: 140, vertical: 16),
                        backgroundColor: Color.fromARGB(255, 57, 135, 180),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                          )),
                    ),
                  ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OR', 
                    style: TextStyle(
                            
                    )
                    ),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 10,),
                  FaIcon(
                    FontAwesomeIcons.google,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Dont have an account?'),
                  TextButton(
                    child: Text('Sign Up',
                    style:TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
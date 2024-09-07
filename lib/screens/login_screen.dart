import 'package:shop_flare/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Log in',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 365,
                color: Colors.white54,
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Welcome back!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Login for faster checkout and get updates on your order.')
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          labelText: 'Email Address',
                          border:InputBorder.none),
                        ),
                        //keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          border:InputBorder.none,
                          //icon: Icon(Icons.remove_red_eye_sharp)
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.bottomRight,
            child:
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.blue,
                    fontWeight: FontWeight.bold),
                  )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(onPressed: (){

                },
                    style: ButtonStyle(
                      backgroundColor:WidgetStatePropertyAll(Colors.black),
                      shape: WidgetStatePropertyAll(LinearBorder(side: BorderSide(color: Colors.black,style: BorderStyle.none)))

                    ),
                    child: Text('Log in',style: TextStyle(color: Colors.white),)
                ),
              )
            ],
          ),
          Text('-Or-'),

       SizedBox(height: 8,),

          //sign in with google

          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40,
              width: 445,
              //color: Colors.black,
              decoration: BoxDecoration(border: Border.symmetric(horizontal: BorderSide(color: Colors.black),vertical: BorderSide(color: Colors.black))),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 6,),
                      Image.asset('assets/images/google.png',height: 25,),
                  SizedBox(width: 118,),
                  Text('Contiue with Google',style: TextStyle(fontSize: 18,letterSpacing: 1),)
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 15,),

          //sign in with Facebook

          GestureDetector(
            onTap: (){},
            child: Container(
              height: 40,
              width: 445,
              //color: Colors.black,
              decoration: BoxDecoration(border: Border.symmetric(horizontal: BorderSide(color: Colors.black),vertical: BorderSide(color: Colors.black))),
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      SizedBox(width: 5,),

                      Image.asset('assets/images/facebook.png',height: 30,),
                  SizedBox(width: 117,),
                  Text('Contiue with Facebook',style: TextStyle(fontSize: 18,letterSpacing: 1),)
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 8,),

          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                 text: TextSpan(
                   children: [
                 TextSpan(text : 'By creating account or signing in,you have read and agreed to ',style: TextStyle(color: Colors.black)),
                     TextSpan(text : 'parivacy policy ',style: TextStyle(color: Colors.blue)),
                     TextSpan(text: 'and ',style: TextStyle(color: Colors.black)),
                     TextSpan(text: 'tram of service',style: TextStyle(color: Colors.blue))
                   ]
                 ),

              ),
            ),
          ),
          SizedBox(height: 70,),

          Container(
            height: 100,
            width: 150,
           // color: Colors.black,
            child: Column(
              children: [
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    children: [
                      TextSpan(text : "Don't have an account?",style: TextStyle(color: Colors.black45)),
                      TextSpan(text : 'Sign Up Now ',style: TextStyle(color: Colors.blue)),
                    ]
                ),

              ),
                ]
          )
          )
        ],
          )
      );
  }
}


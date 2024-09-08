import 'package:shop_flare/screens/home_screen.dart';
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
        title: const Text('Log in',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 50,
                    width: 365,
                    color: Colors.white54,
                    child: const Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(1.0),
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
                          padding: EdgeInsets.all(1.0),
                          child: Row(
                            children: [
                              Text('Login for faster checkout and get updates on your order.')
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),

        
            const Padding(
              padding: EdgeInsets.all(1.0),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(

                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          labelText: 'Email Address',
                          border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2)))),
                        ),
                        //keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  Padding(
                    padding: EdgeInsets.all(1.0),
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
                          //icon: Icon(Icons.remove_red_eye_sharp)
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        ),
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(7.0),
              child: Container(
                alignment: Alignment.bottomRight,
              child:
                    const Text(
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
                  },
                      style: const ButtonStyle(
                        backgroundColor:WidgetStatePropertyAll(Colors.black),
                        shape: WidgetStatePropertyAll(LinearBorder(side: BorderSide(color: Colors.black,style: BorderStyle.none)))
        
                      ),
                      child: const Text('Log in',style: TextStyle(color: Colors.white),)
                  ),
                )
              ],
            ),
        
         const SizedBox(height: 2,),
        
            //sign in with google
            const SizedBox(height: 3,),
            //sign in with Facebook
        

            const SizedBox(height: 8,),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                textAlign: TextAlign.center,
                 text: const TextSpan(
                   children: [
                 TextSpan(text : 'By creating account or signing in,you have read and agreed to ',style: TextStyle(color: Colors.black)),
                     TextSpan(text : 'privacy policy ',style: TextStyle(color: Colors.blue)),
                     TextSpan(text: 'and ',style: TextStyle(color: Colors.black)),
                     TextSpan(text: 'tram of service',style: TextStyle(color: Colors.blue))
                   ]
                 ),

              ),
            ),
            const SizedBox(height: 40,),
        
            SizedBox(
              height: 100,
              width: 150,
             // color: Colors.black,
              child: Column(
                children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      children: [
                        TextSpan(text : "Don't have an account?",style: TextStyle(color: Colors.black45)),
                        TextSpan(text : 'Sign Up Now ',style: TextStyle(color: Colors.blue)),
                      ]
                  ),
        
                ),
                  ]
            )
            )
          ]
        ),
            ),
      );
  }
}


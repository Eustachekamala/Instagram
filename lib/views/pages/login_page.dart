import 'package:flutter/material.dart';
import 'package:instagram/views/pages/register_page.dart';
import 'package:instagram/views/widget_tree.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({
    super.key,
    required this.title
  });

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController controllerEmail = TextEditingController(text: 'eustachekamala@gmail.com');
  TextEditingController controllerPassword = TextEditingController(text: '123456');

  String confirmedEmail = 'eustachekamala@gmail.com';
  String confirmedPassword = '123456';
  String confirmedUsername = 'Eustache Kamala';

  bool _isPasswordObscured = true;

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Login Page',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Welcome to the login page',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        children: [
                          TextField(
                            controller: controllerEmail,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'Email',
                              hintText: 'Enter your email or username',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextField(
                            controller: controllerPassword,
                            obscureText: _isPasswordObscured,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'Password',
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      _isPasswordObscured = !_isPasswordObscured;
                                    });
                                  },
                                  icon: Icon(
                                    _isPasswordObscured ? Icons.visibility : Icons.visibility_off,
                                  )
                              )
                            ),
                          ),
                          SizedBox(height: 20,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Colors.grey,
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsetsGeometry.symmetric(horizontal: 24, vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    minimumSize: Size(double.infinity, 40.0)
                                ),
                                onPressed: (){
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(builder: (context) => WidgetTree()),
                                        (Route<dynamic> route) => false,
                                  );
                                },
                                child: Text(
                                  widget.title,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                            ),
                          ),
                          SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                  'Don\'t have an account?'
                              ),
                              SizedBox(width: 5,),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => RegisterPage())
                                  );
                                },
                                child: Text(
                                  'Register',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 16,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void onLoginPressed(){
    if(controllerEmail.text == confirmedEmail || controllerEmail.text == confirmedUsername && controllerPassword.text == confirmedPassword){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WidgetTree()),
      );
    }
  }
}
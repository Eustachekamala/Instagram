import 'package:flutter/material.dart';
import 'package:instagram/views/pages/register_page.dart';
import 'package:instagram/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget{
  const OnboardingPage({
    super.key,
    required this.title
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Lottie.asset('assets/lotties/welcome.json', height: 200.0, ),
                SizedBox(height: 20,),
                SizedBox(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
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
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage())
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:form_validation/navagation/onboarding_page.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Splash"),
      ),
      backgroundColor: Colors.redAccent,
      body: Center(
          child: TextButton(
        onPressed: () {
          Navigator.of(context).push(PageTransition(
                  child: OnboardPage(
                    title: "hello",
                  ),
                  duration: Duration(seconds: 5),
                  type: PageTransitionType.fade)
              // MaterialPageRoute(
              //   builder: (context) {
              //     return OnboardPage();
              //   },
              // ),
              );
        },
        child: Text("splash screen to onboard page"),
      )),
    );
  }
}

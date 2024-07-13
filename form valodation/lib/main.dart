import 'package:flutter/material.dart';
import 'package:form_validation/create_todo_screen.dart';
import 'package:form_validation/navagation/checkout.dart';
import 'package:form_validation/navagation/dashboard.dart';
import 'package:form_validation/navagation/invalid_routes_screen.dart';
import 'package:form_validation/navagation/login.dart';
import 'package:form_validation/navagation/onboarding_page.dart';
import 'package:form_validation/navagation/product_details.dart';
import 'package:form_validation/navagation/routes.dart';
import 'package:form_validation/navagation/splash.dart';
import 'package:form_validation/navagation/success.dart';
import 'package:form_validation/todo/todo_screen.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // onGenerateRoute: (settings) {
      //   if (settings.name == Routes.createTodo) {
      //     return PageTransition(
      //       child: TodoListingScreen(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   }
      // if (settings.name == Routes.splash) {
      //   return PageTransition(
      //     child: SplashScreen(),
      //     settings: settings,
      //     type: PageTransitionType.fade,
      //   );
      //   } else if (settings.name == Routes.onboarding) {
      //     return PageTransition(
      //       child: OnboardPage(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   } else if (settings.name == Routes.login) {
      //     return PageTransition(
      //       child: LoginPage(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   } else if (settings.name == Routes.dashboard) {
      //     return PageTransition(
      //       child: DashBoardPage(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   } else if (settings.name == Routes.product) {
      //     return PageTransition(
      //       child: ProductDetails(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   } else if (settings.name == Routes.checkout) {
      //     return PageTransition(
      //       child: CheckoutPage(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   } else if (settings.name == Routes.success) {
      //     return PageTransition(
      //       child: SuccessPage(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      // }
      //   else {
      //     return PageTransition(
      //       child: InvalidScreenRoutes(),
      //       settings: settings,
      //       type: PageTransitionType.fade,
      //     );
      //   }
      // },
      home: TodoListingScreen(),
    );
  }
}

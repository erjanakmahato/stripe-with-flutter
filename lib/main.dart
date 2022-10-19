import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:get/get.dart';
import 'package:stripepaymentwithflutter/payment/pages/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //your publishable key here
  Stripe.publishableKey =
      'pk_test_51Ls2hBFjgBcbzZRimbHOzlwWKq2L0bXB4vUOSVDRHTwyy00qtaAUwM1MEZI6U8uMQV4mfMYKnLpU5keG07zPSB6Q00YfkKczs4'; // Replace with your publishable key
  runApp(GetMaterialApp(
    initialRoute: '/',
    //fade in transition
    transitionDuration: const Duration(milliseconds: 500),
    defaultTransition: Transition.fadeIn,
    getPages: [
      GetPage(
        name: '/',
        page: () => const HomePage(),
      ),
    ],
  ));
}

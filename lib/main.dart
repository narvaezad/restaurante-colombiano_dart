import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
 
void main() {
  runApp(const KitchenNApp());
}
 
class KitchenNApp extends StatelessWidget {
  const KitchenNApp({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kitchen N',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 212, 127, 30),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 156, 85, 85),
      ),
      home: const HomeScreen(),
    );
  }
}
 
import 'package:flutter/material.dart';
import 'package:food_shop/pages/HomePage.dart';
import 'package:food_shop/widgets/BarBawah.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

const supabaseUrl =  'https://qglcrrfuaavqthwfwosl.supabase.co';
const supabaseKey =  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InFnbGNycmZ1YWF2cXRod2Z3b3NsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA5NjYzMzMsImV4cCI6MjA0NjU0MjMzM30.PWs3OizwHt-_7flGcP3iAVYqdFprSHbUhFL04qiF9ds';
Future<void> main() async {
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseKey);
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.white,
      ),
      routes:{
        '/': (context) =>  BarBawah()
      }
    );
  }
}

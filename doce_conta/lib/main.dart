import 'package:doce_conta/view/Initial/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Initial/initial_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://wjnlpyfjqwdcsjujddpi.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndqbmxweWZqcXdkY3NqdWpkZHBpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA1MDY5ODUsImV4cCI6MjA0NjA4Mjk4NX0.OFnkGA71m9hKoxmEP4_GdYvKZfFKsu5x_EGKl2vA3kQ',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: RegisterScreen(),
    );
  }
}
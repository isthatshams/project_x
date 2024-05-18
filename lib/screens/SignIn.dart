import 'package:flutter/material.dart';
import 'package:project_x/screens/HomePage.dart';
import 'package:project_x/screens/SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
              margin: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  header(context),
                  inputFeild(context),
                  forgotPass(context),
                  const signUp(),
                ],
              )),
        ));
  }
}

header(context) {
  return const Column(
    children: <Widget>[
      Text(
        'Welcome Back!',
        style: TextStyle(fontSize: 42.0, fontWeight: FontWeight.bold),
      ),
      Text(
        'Welcome back! Sign in to your account',
        style: TextStyle(fontSize: 16.0, color: Colors.grey),
      ),
    ],
  );
}

inputFeild(context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        focusNode: FocusNode(),
        decoration: InputDecoration(
          hintText: 'Email',
          contentPadding: const EdgeInsets.all(10.0),
          labelText: 'Email',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          fillColor: Colors.green.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(
            Icons.email,
          ),
        ),
      ),
      const SizedBox(height: 12.0),
      TextField(
        decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide.none),
          fillColor: Colors.green.withOpacity(0.1),
          filled: true,
          prefixIcon: const Icon(Icons.lock),
        ),
        obscureText: true,
      ),
      const SizedBox(height: 12.0),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          backgroundColor: Colors.green,
        ),
        child: const Text(
          'Sign In',
          style: TextStyle(fontSize: 20.0),
        ),
      )
    ],
  );
}

forgotPass(context) {
  return TextButton(
    onPressed: () {},
    child: const Text(
      'Forgot Password?',
      style: TextStyle(color: Colors.green),
    ),
  );
}

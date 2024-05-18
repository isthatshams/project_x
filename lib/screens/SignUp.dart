import 'package:flutter/material.dart';

class signUp extends StatefulWidget {
  const signUp({super.key});

  @override
  State<signUp> createState() => SsignStateUp();
}

class SsignStateUp extends State<signUp> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUpPage()),
              );
            },
            child: const Text(
              "Sing Up",
              style: TextStyle(color: Colors.green),
            ))
      ],
    );
  }
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              height: MediaQuery.of(context).size.height - 50,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      const SizedBox(height: 60.0),
                      const Text(
                        'Create Account',
                        style: TextStyle(
                            fontSize: 42.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20.0),
                      Text(
                        "Create your account",
                        style:
                            TextStyle(fontSize: 16.0, color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          contentPadding: const EdgeInsets.all(10.0),
                          labelText: 'Full Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.green.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          contentPadding: const EdgeInsets.all(10.0),
                          labelText: 'Username',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.green.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.tag),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          contentPadding: const EdgeInsets.all(10.0),
                          labelText: 'Email',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.green.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.email),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          contentPadding: const EdgeInsets.all(10.0),
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.green.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                      const SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          contentPadding: const EdgeInsets.all(10.0),
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide.none),
                          fillColor: Colors.green.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.lock),
                        ),
                        obscureText: true,
                      ),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.only(top: 3, left: 3),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            backgroundColor: Colors.green),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 20),
                        ),
                      )),
                  const Center(
                    child: Text("Or"),
                  ),
                  Container(
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.green),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 32,
                            width: 32,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'data:image/png;base64,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'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.circle),
                          ),
                          const SizedBox(width: 16.0),
                          const Text(
                            'Sign Up with Google',
                            style: TextStyle(color: Colors.green),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Already have an account?"),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Sign In",
                            style: TextStyle(color: Colors.green),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

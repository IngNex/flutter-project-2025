import 'package:flutter/material.dart';

class SignInUI extends StatelessWidget {
  const SignInUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color.fromARGB(255, 224, 24, 24),
            const Color.fromARGB(255, 78, 3, 101),
          ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Text("Hello Sign in!"),
            ),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(color: Colors.white),
                padding: EdgeInsets.only(
                  top: 40,
                  bottom: 10,
                  left: 30,
                  right: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("Gmail"),
                    TextField(),
                    const SizedBox(height: 10),
                    Text("Password"),
                    TextField(),
                    const SizedBox(height: 10),
                    Text('Forgot password?'),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        //Navigator.of(context).pushNamed(AppRoutes.signin);
                      },
                      style: ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.all(15)),
                        backgroundColor:
                            WidgetStatePropertyAll(Colors.transparent),
                        shape: WidgetStatePropertyAll(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(width: 1, color: Colors.white),
                          ),
                        ),
                      ),
                      child: Text(
                        'Sign In'.toUpperCase(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

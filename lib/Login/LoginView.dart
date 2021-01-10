import 'package:flutter/material.dart';
import 'package:fog_app/widgets/InputWidget.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(
          24.0,
        ),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Find your way",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "through fog",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            InputWidget(
              textInputType: TextInputType.emailAddress,
              labelText: "Email",
            ),
            InputWidget(
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
              labelText: "Password",
              suffixIcon: Icons.visibility,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: 24),
                      ),
                      onPressed: () {
                        //handleLogin
                      },
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  TextButton(
                    child: Text("Register", style: TextStyle(fontSize: 16)),
                    onPressed: () {
                      //go to register page
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

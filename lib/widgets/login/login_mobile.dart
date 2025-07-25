import 'package:flutter/material.dart';

class LoginMobile extends StatelessWidget {
  final String email;
  final String password;
  final ValueChanged<String> onEmailChanged;
  final ValueChanged<String> onPasswordChanged;
  final VoidCallback onLoginPressed;

  const LoginMobile(
    {
      super.key,
      required this.email,
      required this.password,
      required this.onEmailChanged,
      required this.onPasswordChanged,
      required this.onLoginPressed,
    }
  );

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final containerWidth = screenWidth * 0.85;
    final containerHeight = screenHeight * 0.45;
    final inputWidth = containerWidth * 0.85;
    final inputHeight = 48.0;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        width: containerWidth.clamp(250, 400),
        height: containerHeight.clamp(320, 500),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withValues(alpha: 0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: inputWidth.clamp(200, 350),
              height: inputHeight,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  label: Text(
                    "Email",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  color: Colors.black87,
                ),
                onChanged: onEmailChanged,
              ),
            ),
            SizedBox(height: 16),
            Text(
              "Your email: $email",
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.blueGrey[700],
              ),
            ),
            SizedBox(
              width: inputWidth.clamp(200, 350),
              height: inputHeight,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  label: Text(
                    "Senha",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.blueGrey,
                    ),
                  ),
                  labelStyle: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.blueGrey,
                  ),
                ),
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  color: Colors.black87,
                ),
                onChanged: onPasswordChanged,
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: onLoginPressed,
              child: Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: SafeArea(child: _buildBodyPage()),
    );
  }

  Widget _buildBodyPage() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [_buildIconSplash(), _buildTextSplash()],
      ),
    );
  }

  Widget _buildIconSplash() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Image.asset(
        'assets/images/splash.png',
        height: 80,
        width: 95,
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildTextSplash() {
    return Text(
      'UpTodo',
      style: TextStyle(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

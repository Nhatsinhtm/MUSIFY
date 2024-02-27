import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      extendBody: true,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset('assets/images/logo/logo.png',
        width: 200,
          height: 50,
        ),
        Image.asset('assets/images/logo/Title.png',
        width: 250,
        height: 80,)
          ],
        )

      ),
    );
  }
}

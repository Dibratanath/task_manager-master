import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/screens/login_screen.dart';
import 'package:task_manager/ui/widgets/bodybackground.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    goToLogin();
  }

  void goToLogin(){
    Future.delayed(const Duration(seconds: 2)).then((value)
    {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginScreen()), (route) => false);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BodyBackground(
        child: Center(
            child: SvgPicture.asset('assets/images/logo.svg'),
          ),
      ),
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_app/core/constans/app_router.dart';
import 'package:food_app/core/widget/custom_bottom_widget.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                "assets/images/home.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 30,
              left: MediaQuery.of(context).size.width * .1,
              child: CustomBottomWidget(
                colorContainer: Colors.white,
                textColor: Color(0xffFF460A),
                title: "Get Started",
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kloginView);
                },
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

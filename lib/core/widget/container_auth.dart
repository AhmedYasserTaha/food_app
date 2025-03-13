import 'package:flutter/material.dart';
import 'package:food_app/core/constans/app_router.dart';
import 'package:food_app/core/widget/custom_auth_bottom.dart';
import 'package:go_router/go_router.dart';

class ContainerAuth extends StatelessWidget {
  const ContainerAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height * .4,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Image.asset(
              "assets/images/icon.png",
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomAuthBottom(
                  title: 'Login',
                  onPressed: () {
                    GoRouter.of(context).push(
                      AppRouter.kloginView,
                    );
                  },
                ),
                Spacer(),
                CustomAuthBottom(
                  title: "Register",
                  onPressed: () {
                    GoRouter.of(context).push(
                      AppRouter.kregisterView,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

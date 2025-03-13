import 'package:flutter/material.dart';
import 'package:food_app/core/constans/app_router.dart';

void main() {
  runApp(Food());
}

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
    );
  }
}

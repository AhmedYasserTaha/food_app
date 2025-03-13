import 'package:flutter/material.dart';
import 'package:food_app/core/constans/app_colors.dart';
import 'package:food_app/core/widget/container_auth.dart';
import 'package:food_app/core/widget/custom_auth_bottom.dart';
import 'package:food_app/core/widget/custom_bottom_widget.dart';
import 'package:food_app/core/widget/custom_text_field_widget.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContainerAuth(),
            SizedBox(
              height: 50,
            ),
            CustomTextFieldWidget(
              controller: _controller,
              prefixIcon: Icon(Icons.person_outline_sharp),
              labelText: "Your Name",
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFieldWidget(
              controller: _controller,
              prefixIcon: Icon(Icons.person_outline_sharp),
              labelText: "Your Email",
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFieldWidget(
              controller: _controller,
              prefixIcon: Icon(Icons.password),
              labelText: "Password",
            ),
            CustomAuthBottom(
              title: "Forget password ?",
              style: TextStyle(color: AppColors.Korange),
              onPressed: () {},
            ),
            SizedBox(
              height: 100,
            ),
            CustomBottomWidget(
                title: "Register",
                onPressed: () {},
                textColor: Colors.white,
                colorContainer: AppColors.Korange)
          ],
        ),
      ),
    );
  }
}

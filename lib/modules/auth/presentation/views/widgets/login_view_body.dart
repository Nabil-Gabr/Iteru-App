import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custom_text_button.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/modules/auth/presentation/views/forgot_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/custtom_button_social.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/or_divider_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        //Padding horizontal screen
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //logo App
            Image.asset(
              Assets.imagesWhatsAppImage,
            ),

            //SizedBox
            const SizedBox(
              height: 26,
            ),

            //Welcome back
            Text(
              'Welcome back! Please enter your details.',
              style: AppTextStyles.semiBold20(context)
            ),

            //SizedBox
            const SizedBox(
              height: 24,
            ),

            //text field e-mail
            const CusttomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'e-mail',
            ),

            //SizedBox
            const SizedBox(
              height: 16,
            ),

            //text field Password
            const CusttomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Password',
              suffixIcon: Icons.visibility,
            ),

            //SizedBox
            const SizedBox(
              height: 16,
            ),

            //Button Forgot your password
            CustomTextButton(
              text: 'Forgot your password?',
              textColor: AppColors.blackColor,
              onTap: () {
                Navigator.of(context).pushNamed(ForgotPasswordView.routeName);
              },
              alignment: Alignment.centerLeft,
            ),

            //SizedBox
            const SizedBox(
              height: 33,
            ),

            //Button Login
            CusttomButton(
              backgroundColor: AppColors.primaryColor,
              textColor: AppColors.lightBlackColor,
              text: 'Login',
              onPressed: () {},
            ),

            //SizedBox
            const SizedBox(
              height: 26,
            ),

            //Dont Have Account Widget
            const DontHaveAccountWidget(),

            //SizedBox
            const SizedBox(
              height: 26,
            ),

            //Or Divider Widget
            const OrDividerWidget(),

            //SizedBox
            const SizedBox(
              height: 16,
            ),

            //Button 'Login with Google'
            const CusttomButtonSocial(
              title: 'Login with Google',
              image: Assets.imagesGoogleLogo,
            ),

            //SizedBox
            const SizedBox(
              height: 16,
            ),

            //Button 'Login with FaceBook'
            const CusttomButtonSocial(
              title: 'Login with FaceBook',
              image: Assets.imagesFaceBookLogo,
            ),

            //SizedBox 
            const SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
    );
  }
}

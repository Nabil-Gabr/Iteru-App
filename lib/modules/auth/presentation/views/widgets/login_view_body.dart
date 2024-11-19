import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/modules/auth/presentation/views/forgot_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/custtom_button_social.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/or_divider_widget.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/custtom_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: 175,
            //   width: 175,
            //   child: Image.asset(
            //     Assets.imagesFreepikLoginP,
            //     fit: BoxFit.fill,
            //   ),
            // ),
            Image.asset(
              Assets.imagesWhatsAppImage,
              // fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Welcome back! Please enter your details.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1D2E),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CusttomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'e-mail',
            ),
            const SizedBox(
              height: 16,
            ),
            const CusttomTextFormField(
              textInputType: TextInputType.emailAddress,
              hintText: 'Password',
              suffixIcon: Icons.visibility,
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () {
                // SharedPrefs.removeShared(kIsOnboardingViewSeen);
                // Navigator.of(context)
                //     .pushReplacementNamed(OnboardingView.routeName);
                
                Navigator.of(context)
                    .pushNamed(ForgotPasswordView.routeName);

              },
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  )),
            ),
            const SizedBox(
              height: 33,
            ),
            CusttomButton(
              backgroundColor: const Color(0xFFDBB13B),
              textColor: const Color(0xFF1A1D2E),
              text: 'Login',
              onPressed: () {},
            ),
            const SizedBox(
              height: 33,
            ),
            const DontHaveAccountWidget(),
            const SizedBox(
              height: 26,
            ),
            const OrDividerWidget(),
            const SizedBox(
              height: 26,
            ),
            const CusttomButtonSocial(
              title: 'Login with Google',
              image: Assets.imagesGoogleLogo,
            ),
            const SizedBox(
              height: 16,
            ),
            const CusttomButtonSocial(
              title: 'Login with FaceBook',
              image: Assets.imagesFaceBookLogo,
            ),
            const SizedBox(
              height: 26,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/custtom_button.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
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
                  height: 100,
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Color(0xFF1A1D2E),
              ),
                ),
                const SizedBox(height: 10,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Don’t worry! It’s happens. Please enter the email address associated with your account.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF808B9A),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const CusttomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Insert email address / mobile number',
                ),

                // Center(
                //   child: GestureDetector(
                //     onTap: () {
                //       SharedPrefs.removeShared(kIsOnboardingViewSeen);
                //       Navigator.of(context)
                //           .pushReplacementNamed(OnboardingView.routeName);
                //     },
                //     child: const Text(
                //       'Login View',
                //       style: TextStyle(fontSize: 24),
                //     ),
                //   ),
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
                // TextButton(
                //     onPressed: () {
                //       Navigator.of(context)
                //           .pushReplacementNamed(OnboardingView.routeName);
                //     },
                //     child: const Text('Back')),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                CusttomButton(
                  backgroundColor: const Color(0xFFDBB13B),
                  textColor: const Color(0xFF1A1D2E),
                  text: 'Submit',
                  onPressed: () {},
                ),
                const SizedBox(
                  // height: 26, bace
                  height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

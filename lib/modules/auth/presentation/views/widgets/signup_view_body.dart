import 'package:flutter/material.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/terms_and_condition.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/widgets/custtom_button.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

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
                  height: 26,
                ),
                const Text(
                  'Hello there! Let’s create your account.',
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
                  hintText: 'Name or surname',
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
                const TermsAndCondition(),

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
                  text: 'Create Account',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 26,
                ),
                const HaveAnAccountWidget(),
                const SizedBox(
                  height: 26,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

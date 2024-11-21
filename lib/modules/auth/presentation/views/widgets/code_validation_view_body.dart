import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/services/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custom_text_button.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/pin_code_text_field_widget.dart';
import 'package:iteru_app/modules/onboarding/presentation/views/onboarding_view.dart';

class CodeValidationViewBody extends StatelessWidget {
  const CodeValidationViewBody({super.key});

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
                  'Code validation',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1A1D2E),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Please enter the 4 digit code sent to your mobile number +010123456789',
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
                PinCodeTextFieldWidget(
                  onChanged: (value) {},
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                CusttomButton(
                  backgroundColor: const Color(0xFFDBB13B),
                  textColor: const Color(0xFF1A1D2E),
                  text: 'Check the code',
                  onPressed: () {
                    SharedPrefs.removeShared(kIsOnboardingViewSeen);
                    Navigator.of(context)
                        .pushReplacementNamed(OnboardingView.routeName);
                  },
                ),
                const SizedBox(
                  height: 26, //bace
                ),
                const CustomTextButton(
                  text: 'Resend code?',
                  textColor: Color(0xFF616A6B),
                  alignment: Alignment.center,
                ),
                const SizedBox(
                  height: 26, //bace
                  // height: 50,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

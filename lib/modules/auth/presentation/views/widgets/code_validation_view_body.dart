import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/services/shared_preferences_singleton.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
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
      //Padding horizontal screen
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //custom scroll view widget
      child: CustomScrollView(
        slivers: [
          //sliver to box adapter
          SliverToBoxAdapter(
            //column
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
                // text widget 'Code validation'
                const Text(
                  'Code validation',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: AppColors.lightBlackColor,
                  ),
                ),
                //SizedBox
                const SizedBox(
                  height: 10,
                ),
                //text widget 'Please enter the 4 digit code'
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Please enter the 4 digit code sent to your mobile number +010123456789',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppColors.captionColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                //SizedBox
                const SizedBox(
                  height: 32,
                ),
                //Pin code text Field widget through the Package pin_code_fields
                PinCodeTextFieldWidget(
                  onChanged: (value) {},
                ),
              ],
            ),
          ),
          //Sliver fill remaining
          SliverFillRemaining(
            hasScrollBody: false,
            //column
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //Expanded
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                //Button 'Check the code'
                CusttomButton(
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.lightBlackColor,
                  text: 'Check the code',
                  onPressed: () {
                    SharedPrefs.removeShared(kIsOnboardingViewSeen);
                    Navigator.of(context)
                        .pushReplacementNamed(OnboardingView.routeName);
                  },
                ),
                //SizedBox
                const SizedBox(
                  height: 26,
                ),
                //TextButton 'Resend code?'
                const CustomTextButton(
                  text: 'Resend code?',
                  textColor: AppColors.captionColor,
                  alignment: Alignment.center,
                ),
                //SizedBox
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

import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/modules/auth/presentation/views/code_validation_view.dart';

class ForgotPasswordViewBody extends StatelessWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding horizontal screen
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),

      //Custom Scroll View Widget
      child: CustomScrollView(
        slivers: [
          //sliver to box adapter
          SliverToBoxAdapter(
            //Column
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
                //Text Widget 'Forgot password?'
                Text(
                  'Forgot password?',
                  style: AppTextStyles.bold30(context),
                ),
                //SizedBox
                const SizedBox(
                  height: 10,
                ),
                // Text widget 'Don’t worry!'
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    'Don’t worry! It’s happens. Please enter the email address associated with your account.',
                    style: AppTextStyles.medium16(context)
                        .copyWith(color: AppColors.captionColor),
                    textAlign: TextAlign.center,
                  ),
                ),
                //SizedBox
                const SizedBox(
                  height: 32,
                ),
                //text field widget
                const CusttomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Insert email address / mobile number',
                ),
              ],
            ),
          ),

          //sliver fill remaining
          SliverFillRemaining(
            hasScrollBody: false,
            //Column
            child: Column(
              children: [
                //Expanded
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),

                //Button 'Submit'
                CusttomButton(
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.lightBlackColor,
                  text: 'Submit',
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed(CodeValidationView.routeName);
                  },
                ),
                //SizedBox
                const SizedBox(
                  height: 26, // bace
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

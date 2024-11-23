import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding horizontal screen
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),

      //CustomScrollView
      child: CustomScrollView(
        slivers: [
          //sliver to aox adapter
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

                //Hello there!
                Text(
                  'Hello there! Let’s create your account.',
                  style: AppTextStyles.semiBold20(context)
                ),

                //SizedBox
                const SizedBox(
                  height: 26,
                ),

                //text field 'Name or surname'
                const CusttomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Name or surname',
                ),

                //SizedBox
                const SizedBox(
                  height: 16,
                ),

                //text field 'e-mail'
                const CusttomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'e-mail',
                ),

                //SizedBox
                const SizedBox(
                  height: 16,
                ),

                //text field 'Password'
                const CusttomTextFormField(
                  textInputType: TextInputType.emailAddress,
                  hintText: 'Password',
                  suffixIcon: Icons.visibility,
                ),

                //SizedBox
                const SizedBox(
                  height: 16,
                ),

                //TermsAndCondition widget
                const TermsAndCondition(),
              ],
            ),
          ),

          //SliverFillRemaining
          SliverFillRemaining(
            hasScrollBody: false,
            //Column
            child: Column(
              children: [
                //Expanded widget
                const Expanded(
                    child: SizedBox(
                  height: 33,
                )),

                //Button 'Create Account'
                CusttomButton(
                  backgroundColor: AppColors.primaryColor,
                  textColor: AppColors.lightBlackColor,
                  text: 'Create Account',
                  onPressed: () {},
                ),

                //SizedBox
                const SizedBox(
                  height: 26,
                ),

                //Have an account widget
                const HaveAnAccountWidget(),

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

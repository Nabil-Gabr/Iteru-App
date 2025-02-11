import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';

class CreateNewPasswordViewBody extends StatefulWidget {
  const CreateNewPasswordViewBody({super.key});

  @override
  State<CreateNewPasswordViewBody> createState() =>
      _CreateNewPasswordViewBodyState();
}

class _CreateNewPasswordViewBodyState extends State<CreateNewPasswordViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userNewPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding horizontal screen
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),

      //Custom Scroll View Widget
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
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
                    'New password',
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
                      'Create a new password to log in.',
                      style: AppTextStyles.medium20n(context)
                          .copyWith(color: AppColors.captionColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //SizedBox
                  const SizedBox(
                    height: 32,
                  ),
                  //text field widget
                  CusttomTextFormField(
                    onSaved: (value) {
                      userNewPassword = value!;
                    },
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Insert new password',
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
                    text: 'Create a new password',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                        
                      }
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
      ),
    );
  }
}

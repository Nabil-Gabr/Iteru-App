import 'package:flutter/material.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/core/widgets/password_text_field.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/have_an_account_widget.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/terms_and_condition.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  late String userName, userEmail, userPassword, userPhone;
  @override
  Widget build(BuildContext context) {
    return Padding(
      //Padding horizontal screen
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),

      //CustomScrollView
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
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
                  Text('Hello there! Let’s create your account.',
                      style: AppTextStyles.semiBold20(context)),

                  //SizedBox
                  const SizedBox(
                    height: 26,
                  ),

                  //text field 'Name or surname'
                  CusttomTextFormField(
                    onSaved: (value) {
                      userName = value!;
                    },
                    textInputType: TextInputType.emailAddress,
                    hintText: 'Name or surname',
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 16,
                  ),

                  //text field 'e-mail'
                  CusttomTextFormField(
                    onSaved: (value) {
                      userEmail = value!;
                    },
                    textInputType: TextInputType.emailAddress,
                    hintText: 'e-mail',
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 16,
                  ),

                  //text field 'Password'
                  PasswordTextField(
                    onSaved: (value) {
                      userPassword = value!;
                    },
                  ),

                  //SizedBox
                  const SizedBox(
                    height: 16,
                  ),

                  //text field 'Password'
                  CusttomTextFormField(
                    onSaved: (value) {
                      userPassword = value!;
                    },
                    textInputType: TextInputType.phone,
                    hintText: 'Phone number',
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        setState(() {
                          autovalidateMode = AutovalidateMode.always;
                        });
                      }
                    },
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
      ),
    );
  }
}

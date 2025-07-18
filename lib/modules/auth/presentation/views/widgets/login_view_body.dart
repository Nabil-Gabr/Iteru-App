import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iteru_app/core/constants/constant.dart';
import 'package:iteru_app/core/utils/app_colors.dart';
import 'package:iteru_app/core/utils/app_images.dart';
import 'package:iteru_app/core/utils/app_text_styles.dart';
import 'package:iteru_app/core/widgets/custom_button.dart';
import 'package:iteru_app/core/widgets/custom_text_button.dart';
import 'package:iteru_app/core/widgets/custtom_text_form_field.dart';
import 'package:iteru_app/core/widgets/password_text_field.dart';
import 'package:iteru_app/modules/auth/presentation/manager/sign_in_cubits/sign_in_cubit.dart';
import 'package:iteru_app/modules/auth/presentation/views/forgot_password_view.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/custtom_button_social.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:iteru_app/modules/auth/presentation/views/widgets/or_divider_widget.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userEmail, userPassword;

  @override
  Widget build(BuildContext context) {
    // 🔹 تحديد اللون بناءً على الثيم الحالي
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color textColor =
        isDarkMode ? AppColors.captionColor : const Color(0xff000000);
    return SingleChildScrollView(
      child: Padding(
        //Padding horizontal screen
        padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
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
              Text('Welcome back! Please enter your details.',
                  style: AppTextStyles.semiBold20(context)),

              //SizedBox
              const SizedBox(
                height: 24,
              ),

              //text field e-mail
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

              //text field Password
              PasswordTextField(
                onSaved: (value) {
                  userPassword = value!;
                },
              ),
              //SizedBox
              const SizedBox(
                height: 16,
              ),

              //Button Forgot your password
              CustomTextButton(
                text: 'Forgot your password?',
                textColor: textColor,
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
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    //6-trigger Cubit
                    context.read<SignInCubit>().signIn(
                        userEmail: userEmail, userPassowrd: userPassword);
                    // Navigator.of(context).pushNamed(MainView.routeName);
                  }
                },
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
      ),
    );
  }
}

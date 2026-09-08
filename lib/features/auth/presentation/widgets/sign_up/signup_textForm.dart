import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tele_store/core/common/animation/animate_do.dart';
import 'package:tele_store/core/common/widgets/custom_text_field.dart';
import 'package:tele_store/core/extentions/context_extension.dart';
import 'package:tele_store/core/utils/app_regex.dart';
import 'package:tele_store/features/auth/presentation/bloc/bloc/auth_bloc.dart';
import 'package:tele_store/language/lang_keys.dart';

class SignupTextForm extends StatefulWidget {
  const SignupTextForm({super.key});

  @override
  State<SignupTextForm> createState() => _SignupTextFormState();
}

class _SignupTextFormState extends State<SignupTextForm> {
  bool isPasswordVisible = false;
  late AuthBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<AuthBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.emailController.dispose();
    _bloc.emailController.dispose();
    _bloc.nameController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _bloc.formkey,
      child: Column(
        children: [
          CustomFadeInRight(
            duration: 1000,
            child: CustomTextField(
              controller: _bloc.nameController,
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validName);
                }
                return null;
              },
            ),
          ),

          SizedBox(height: 20.h),

          CustomFadeInRight(
            duration: 1000,
            child: CustomTextField(
              controller: _bloc.emailController,
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || value.isEmpty ) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),

          SizedBox(height: 20.h),

          CustomFadeInRight(
            duration: 1000,
            child: CustomTextField(
              controller: _bloc.passwordController,
              hintText: context.translate(LangKeys.password),
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
              obscureText: isPasswordVisible,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isPasswordVisible = !isPasswordVisible;
                  });
                },
                icon: Icon(
                  isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color: context.color.textColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

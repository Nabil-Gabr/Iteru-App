import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PinCodeTextFieldWidget extends StatelessWidget {
  const PinCodeTextFieldWidget({
    super.key,
    this.onChanged,
  });
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: PinCodeTextField(
        appContext: context,
        onChanged: onChanged,
        length: 4,
        cursorHeight: 19,
        enableActiveFill: true,
        textStyle: const TextStyle(fontSize: 20),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.box,
          fieldWidth: 50,
          inactiveColor: Colors.grey,
          selectedColor: Colors.lightBlue,
          activeFillColor: const Color(0xFFDBB13B),
          selectedFillColor: Colors.white,
          inactiveFillColor: Colors.grey.shade100,
          activeColor: const Color(0xFFDCDEDE),
          borderWidth: 1,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';



class AppOtpFormField extends StatefulWidget {
  final bool? autoValidate;
  final bool? isPasswordField;
  final String? initialValue;
  final String? label;
  final String? hint;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final TextStyle? fontStyle;
  final Color? fillColor;
  final Color? borderColor;
  final Widget? prefixIcon;

  const AppOtpFormField({
    Key? key,
    this.autoValidate,
    this.isPasswordField,
    this.initialValue,
    this.label,
    this.maxLength,
    this.maxLines,
    this.minLines,
    this.validator,
    this.controller,
    this.fontStyle,
    this.inputType,
    this.hint,
    this.fillColor,
    this.borderColor,
    this.prefixIcon,
  }) : super(key: key);

  @override
  State<AppOtpFormField> createState() => _AppOtpFormFieldState();
}

class _AppOtpFormFieldState extends State<AppOtpFormField> {
  bool hidePassword = false;
  bool autoValidate = false;
  bool showErrorIcon = false;
  bool isChanged = false;

  TextInputType? inputType;

  @override
  void initState() {
    super.initState();
    hidePassword = widget.isPasswordField ?? false;
    autoValidate = widget.autoValidate ?? false;
    if (widget.inputType == TextInputType.phone) {
      inputType = TextInputType.text;
    } else if (widget.inputType == const TextInputType.numberWithOptions()) {
      inputType = TextInputType.text;
    } else {
      inputType = widget.inputType;
    }
  }

  @override
  Widget build(BuildContext context) {
    // the below condition is added to handle the auto validate change from the parent
    if (widget.autoValidate == true && autoValidate != true) {
      autoValidate = true;
      showErrorIcon =
          widget.validator?.call(widget.controller?.text)?.isNotEmpty == true;
    }
    return PinInputTextField(
      pinLength: 4,
      // autovalidateMode: autoValidate == true
      //     ? AutovalidateMode.always
      //     : AutovalidateMode.disabled,

      // inputFormatters: widget.inputType == TextInputType.phone
      //     ? <TextInputFormatter>[MaskedInputFormatter('000-000-0000')]
      //     : widget.inputType == const TextInputType.numberWithOptions()
      //     ? <TextInputFormatter>[MaskedInputFormatter('000000')]
      //     : null,
      // validator: (String? val) {
      //   return widget.validator?.call(val);
      // },
      // autofocus: true,
      controller: widget.controller,
      keyboardType: inputType ?? TextInputType.text,
      // obscureText: hidePassword,
      // initialValue: widget.initialValue,
      //focusNode: _focusNode,
      // style: widget.fontStyle ??
      //     AppTextStyle.bodyMedium_14_w400(context,
      //         color: AppColors.textBlackColor),
      textInputAction: TextInputAction.next,
      // maxLines:
      // widget.maxLines ?? (inputType == TextInputType.multiline ? null : 1),
      // minLines: widget.minLines,
      // maxLength: widget.maxLength,
      onChanged: (String val) {
        //to show/hide the clear icon, when the field is in error state
        isChanged = true;
        if (autoValidate) {
          showErrorIcon =
              widget.validator?.call(widget.controller?.text)?.isNotEmpty ==
                  true;
          setState(() {});
        }
      },
      decoration: UnderlineDecoration(colorBuilder: PinListenColorBuilder(Colors.grey, Colors.grey.withOpacity(.5))),
      //   decoration: BoxLooseDecoration(
      //     strokeWidth: 1,
      //     bgColorBuilder: PinListenColorBuilder(
      //       AppColors.phoneFieldLoginColor,
      //       AppColors.phoneFieldLoginColor.withOpacity(.7)),radius: Radius.circular(16),
      //   strokeColorBuilder: PinListenColorBuilder(
      //       Colors.grey, Colors.grey.withOpacity(.5)
      //       ),
      //   obscureStyle: ObscureStyle(
      //     isTextObscure: true,
      //     obscureText: '*',
      //   ),
      // )
    );
  }
}

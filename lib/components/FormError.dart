import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
          children: List.generate(
              errors.length, (index) => formErrorText(error: errors[index]))),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset("assets/icons/Error.svg"),
        SizedBox(
          width: getProportionateScreenWidth(14),
          height: getProportionateScreenHeight(14),
        ),
        Text(error)
      ],
    );
  }
}

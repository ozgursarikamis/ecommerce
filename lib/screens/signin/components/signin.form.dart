
import 'package:flutter/material.dart';
import 'package:ecommerce/components/FormError.dart';
import 'package:ecommerce/constants.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/components/CustomSuffixIcon.dart';
import 'package:ecommerce/components/DefaultButton.dart';

class SignForm extends StatefulWidget {
  SignForm({Key key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  String email, password;

  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          Row(
            children: [
              Checkbox(value: rememberMe, activeColor: kPrimaryColor, onChanged: (value){ 
                setState(() {
                  rememberMe = value;
                });
              }),
              Text("Remember Me"),
              Spacer(),
              Text("Forgot Password", style: TextStyle(decoration: TextDecoration.underline))
            ],
          ),
          DefaultButton(
            text: "Sign in",
            press: () {
              if (_formKey.currentState.validate()) {
                _formKey.currentState.save();
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) {
        password = newValue;
      },
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
          return "";
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
          labelText: "Password",
          hintText: "Enter your password...",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg")),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          setState(() {
            errors.remove(kEmailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty && !errors.contains(kEmailNullError)) {
          setState(() {
            errors.add(kEmailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          labelText: "Email",
          hintText: "Enter your email...",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Mail.svg")),
    );
  }
}

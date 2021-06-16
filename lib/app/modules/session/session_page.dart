import 'package:course_purchase/app/modules/components/custom_surfix_icon.dart';
import 'package:course_purchase/app/modules/components/default_button.dart';
import 'package:course_purchase/app/modules/components/form_error.dart';
import 'package:course_purchase/app/modules/helper/keyboard.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:course_purchase/app/modules/session/session_store.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class SessionPage extends StatefulWidget {
  final String title;
  const SessionPage({Key? key, this.title = 'SessionPage'}) : super(key: key);
  @override
  SessionPageState createState() => SessionPageState();
}

class SessionPageState extends State<SessionPage> {
  final SessionStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    final List<String> errors = [];

    MediaQueryData queryData = MediaQuery.of(context);
    double getProportionateScreenHeight(double inputHeight) {
      double height = queryData.size.height;
      return (inputHeight / 812.0) * height;
    }

    double getProportionateScreenWidth(double inputWidth) {
      double width = queryData.size.width;
      return (inputWidth / 375.0) * width;
    }

    void addError(String error) {
      if (errors.contains(error))
        setState(() {
          errors.add(error);
        });
    }

    void removeError(String error) {
      if (errors.contains(error))
        setState(() {
          errors.remove(error);
        });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: queryData.size.width * 0.04),
                  Text(
                    "Course Purchase",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(28),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: queryData.size.height * 0.02),
                  Text(
                    "Faça o seu Login",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: queryData.size.height * 0.08),
                  Form(
                    child: Column(
                      children: [
                        // Login
                        TextFormField(
                          controller: store.email,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (newValue) =>
                              store.email.text = newValue.toString(),
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              removeError(kEmailNullError);
                            } else if (emailValidatorRegExp.hasMatch(value)) {
                              removeError(kInvalidEmailError);
                            }
                            return null;
                          },
                          validator: (value) {
                            if (value != null) {
                              addError(kEmailNullError);
                              return "";
                            } else if (!emailValidatorRegExp
                                .hasMatch(value.toString())) {
                              addError(kInvalidEmailError);
                              return "";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Enter your email",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffixIcon: CustomSurffixIcon(
                              svgIcon: "assets/icons/Mail.svg",
                            ),
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(30)),

                        //Password
                        TextFormField(
                          controller: store.password,
                          obscureText: true,
                          onSaved: (newValue) =>
                              store.password.text = newValue.toString(),
                          onChanged: (value) {
                            if (value.isNotEmpty) {
                              removeError(kPassNullError);
                            } else if (value.length >= 8) {
                              removeError(kShortPassError);
                            }
                            return null;
                          },
                          validator: (value) {
                            if (value != null) {
                              addError(kPassNullError);
                              return "";
                            } else if (value.toString().length < 8) {
                              addError(kShortPassError);
                              return "";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Enter your password",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            suffixIcon: CustomSurffixIcon(
                              svgIcon: "assets/icons/Lock.svg",
                            ),
                          ),
                        ),

                        SizedBox(height: getProportionateScreenHeight(30)),
                      ],
                    ),
                  ),
                  SizedBox(height: queryData.size.height * 0.04),
                  FormError(errors: errors),
                  DefaultButton(
                    text: "Continue",
                    press: () {
                      if (store.validate()) {
                        store.signIn();
                        Modular.to.pushNamed("/course");
                        KeyboardUtil.hideKeyboard(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

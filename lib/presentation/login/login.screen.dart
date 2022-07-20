import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../domain/base/base.controller.dart';
import '../../domain/core/interfaces/app_constants.dart';
import '../../infrastructure/theme/app_theme.dart';
import '../widget/app.footer.dart';
import 'controllers/login.controller.dart';

// class LoginScreen extends GetView<LoginController> {
//   const LoginScreen({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('LoginScreen'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'LoginScreen is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final FocusNode _pass = FocusNode();
  final FocusNode _mob = FocusNode();

  @override
  Widget build(BuildContext context) {
    // _user.text = "SBU001";
    // _password.text = "S@#2021@17@09";
    _user.text = "lovinmaxwell_sales@gmail.com";
    _password.text = "Lovin@1234";
    return Scaffold(
      bottomSheet: isPhone ? const AppFooter() : null,
      // appBar: AppBar(
      //   title: const Text('Login'),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
        child: Center(
          child: Container(
            width: isTablet ? MediaQuery.of(context).size.width * 0.50 : null,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: MediaQuery.of(context).size.height * 0.12),
                    Center(child: Image(image: const AssetImage(Images.logo), width: MediaQuery.of(context).size.height * 0.20)),
                    // Center(child: FlutterLogo(size: MediaQuery.of(context).size.height * 0.10)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "User",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: "Lato"),
                        )),

                    const SizedBox(
                      height: 10.0,
                    ),

                    TextFormField(
                      focusNode: _mob,
                      textInputAction: TextInputAction.done,
                      onFieldSubmitted: (term) {
                        FocusScope.of(context).requestFocus(_pass);
                      },
                      controller: _user,
                      decoration: const InputDecoration(
                        //filled: true,
                        fillColor: Color.fromRGBO(119, 119, 119, 0.12),
                        hintStyle: TextStyle(
                          color: Color.fromARGB(0xFF, 0xe1, 0xe1, 0xe1),
                          fontSize: 16.0,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),

                    //get password
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
                        )),

                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      focusNode: _pass,
                      textInputAction: TextInputAction.done,
                      controller: _password,
                      decoration: const InputDecoration(
                        //filled: true,
                        fillColor: Color.fromRGBO(119, 119, 119, 0.12),
                        hintStyle: TextStyle(
                          color: Color.fromARGB(0xFF, 0xe1, 0xe1, 0xe1),
                          fontSize: 16.0,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 30.0),

                    //login button
                    SizedBox(
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: AppTheme.header,
                        ),
                        onPressed: (() {
                          if (_password.value.text.isEmpty || _user.value.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                              content: Text('Please fill files!!'),
                            ));
                            return;
                          }
                          controller.loginUser(name: _user.value.text, password: _password.value.text, context: context);
                          // controller.authenticateMe();
                        }),
                        child: Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                          child: const Center(
                            child: Text(
                              "Log In",
                              style: TextStyle(color: Colors.black, fontSize: 18.0, fontFamily: "Lato"),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),
                    Center(
                        child: Obx(() => Text(
                              controller.message.string,
                              style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 12.0, fontFamily: "Lato"),
                            ))),
                    // const SizedBox(
                    //   height: 10.0,
                    // ),
                    // Center(
                    //     child: Obx(() => Text(
                    //           "canCheckBiometrics = ${controller.canCheckBiometrics} & authenticated = ${controller.store.appSetting.authenticated}",
                    //           style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 12.0, fontFamily: "Lato"),
                    //         ))),
                  ],
                ),
                Positioned(
                    right: 0,
                    child: Obx(() => Visibility(
                        visible: controller.canCheckBiometrics.isTrue,
                        child: Padding(
                          padding: const EdgeInsets.all(AppTheme.kDefaultPadding),
                          child: Icon(controller.store.appSetting.authenticated ? Icons.lock_outline_rounded : Icons.lock_open_rounded,
                              color: Colors.black.withOpacity(0.3)),
                        )))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

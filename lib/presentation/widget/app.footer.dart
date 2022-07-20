import 'package:flutter/material.dart';

import '../../infrastructure/theme/app_theme.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.footer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RichText(
              text:
                  const TextSpan(text: 'Powered by', style: TextStyle(color: Colors.white, fontSize: 10.0, fontFamily: "Lato"), children: <TextSpan>[
                TextSpan(
                  text: ' 4TH Solutions',
                  style: TextStyle(color: Color.fromARGB(255, 227, 65, 56), fontSize: 10.0, fontFamily: "Lato"),
                )
              ]),
            ),

            // ),
          ),
        ],
      ),
    );
  }
}

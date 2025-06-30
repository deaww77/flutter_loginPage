import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _navigatorKey = GlobalKey<NavigatorState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      onGenerateInitialRoutes: (setting) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(child: Padding(padding: EdgInsets.all(16.0))),
          ),
        );
      },
    );
  }
}

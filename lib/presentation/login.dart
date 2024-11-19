import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:dururu/providers/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String? username;
  String? password;
  String? serverUrl;
  Future<void>? loginFuture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Hey there 👋',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Please Sign In',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    onSaved: (v) => username = v,
                    initialValue: kDebugMode ? 'demo' : '',
                    decoration: const InputDecoration(
                      hintText: "Username",
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    onSaved: (v) => password = v,
                    initialValue: kDebugMode ? 'demo' : '',
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(Icons.password),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
                        return "This field is required";
                      }
                      return null;
                    },
                    initialValue:
                        kDebugMode ? 'https://demo.navidrome.org' : '',
                    onSaved: (v) => serverUrl = v,
                    decoration: const InputDecoration(
                      hintText: "Server URL",
                      suffixIcon: Icon(Icons.http),
                    ),
                  ),
                  const SizedBox(height: 8),
                  FutureBuilder<void>(
                      future: loginFuture,
                      builder: (context, snapshot) {
                        return FilledButton(
                          onPressed: snapshot.connectionState ==
                                  ConnectionState.waiting
                              ? null
                              : () {
                                  if (!formKey.currentState!.validate()) return;
                                  formKey.currentState!.save();

                                  loginFuture = ref
                                      .read(authProvider.notifier)
                                      .login(
                                        username: username!,
                                        password: password!,
                                        serverUrl: serverUrl!,
                                      )
                                      .catchError((e) {
                                    debugPrint(e.toString());
                                    AnimatedSnackBar.material(
                                      "Failed to login, $e",
                                      type: AnimatedSnackBarType.error,
                                      // ignore: use_build_context_synchronously
                                    ).show(context);
                                  }).then((v) {
                                    // ignore: use_build_context_synchronously
                                    GoRouter.of(context).go('/');
                                  });
                                  setState(() {});
                                },
                          child: const Text("Login"),
                        );
                      })
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

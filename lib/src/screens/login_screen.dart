import 'package:ccaguaviva/src/screens/home_screen.dart';
import 'package:ccaguaviva/src/settings/settings_controller.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final SettingsController controller;

  const LoginScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  String? user = '';
  String? password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: SingleChildScrollView(
            child: Wrap(
              spacing: 50,
              runSpacing: 50,
              children: [
                const SizedBox(),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: SizedBox(
                        height: 100,
                        child: Center(
                          child: Text(
                            'Inicia session',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Usuario',
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return 'Usuario requerido';
                            }
                            return null;
                          },
                          onChanged: (String? value) {
                            setState(() {
                              user = value;
                            });
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: FractionallySizedBox(
                        widthFactor: 0.9,
                        child: TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Contraseña',
                          ),
                          validator: (String? value) {
                            if (value != null && value.isEmpty) {
                              return 'Contraseña requerida';
                            }
                            return null;
                          },
                          onChanged: (String? value) {
                            setState(() {
                              password = value;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Center(
                  child: FractionallySizedBox(
                    widthFactor: 0.9,
                    child: ElevatedButton(
                      child: const Text('Iniciar sesión'),
                      onPressed: () async {
                        final FormState _form = _formKey.currentState!;
                        if (_form.validate()) {
                          if (await widget.controller
                                  .updateIsloged(user, password) ==
                              true) {
                            _form.save();
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                  controller: widget.controller,
                                ),
                              ),
                              (Route<dynamic> route) => false,
                            );
                          } else {
                            _form.reset();
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                              content: Text("Usuario o contraseña incorrectos"),
                            ));
                          }
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

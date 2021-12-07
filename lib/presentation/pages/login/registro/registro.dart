import 'package:appcomoencasa/presentation/bloc/cubit/auth_cubit.dart';
import 'package:appcomoencasa/presentation/pages/login/login.dart';
import 'package:appcomoencasa/presentation/pages/login/registro/widgets/email_input.dart';
import 'package:appcomoencasa/presentation/pages/login/registro/widgets/password_input.dart';
import 'package:appcomoencasa/presentation/pages/login/registro/widgets/verify_password_input.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Registro extends StatefulWidget {
  Registro({Key? key}) : super(key: key);

  @override
  _RegistroState createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  String hotmail = "";
  String password = "";
  String verifyPassword = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    var maxHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: BlocBuilder<AuthCubit, AuthState>(
        builder: (_, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 60.0,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text(
                    '"Como en casa"',
                    style: TextStyle(
                      fontFamily: "AbrilFatface",
                      color: Colors.orange,
                      fontSize: 30.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Divider(),
                  Card(
                    child: Image.asset(
                      'assets/images/Imagen1.jpg',
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  EmailInput(
                    hotmail: hotmail,
                    onHotmailChange: (String val) => setState(() {
                      hotmail = val;
                    }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PasswordInput(
                    password: password,
                    onPasswordChange: (String val) => setState(() {
                      password = val;
                    }),
                  ),
                  VerifyPasswordInput(
                    verifyPassword: verifyPassword,
                    onPasswordChange: (String val) => setState(() {
                      verifyPassword = val;
                    }),
                    password: password,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    child: const Text(
                      'Registrar',
                      style: TextStyle(
                        fontFamily: "AbrilFatface",
                        color: Colors.black,
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState?.validate() == true) {
                        context
                            .read<AuthCubit>()
                            .createUserWithEmailAndPassword(
                              hotmail,
                              password,
                            );
                      }
                    },
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Inicio de sesión",
                        style: TextStyle(
                          fontFamily: "AbrilFatface",
                          color: Colors.black,
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                        ),
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

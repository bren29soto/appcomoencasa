import 'package:appcomoencasa/presentation/bloc/cubit/auth_cubit.dart';
import 'package:appcomoencasa/presentation/pages/login/registro/registro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isObscure = true;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
          vertical: 60.0,
        ),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (_, state) {
            return Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text(
                    '!Regristrate!',
                    style: TextStyle(
                      fontFamily: "AbrilFatface",
                      color: Colors.orange,
                      fontSize: 30.0,
                    ),
                  ),
                  Card(
                    child: Image.asset(
                      'assets/images/Imagen1.jpg',
                      height: 100,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Unete a nuestra gran familia, "Como en casa".',
                    style: TextStyle(
                      fontFamily: "AbrilFatface",
                      color: Colors.black,
                      fontSize: 16.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _emailController,
                    maxLength: 30,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(FontAwesomeIcons.envelope),
                      hintText: "Ingrese un hotmail",
                      labelText: "Hotmail",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  const Divider(
                    height: 10,
                    color: Colors.black,
                  ),
                  TextFormField(
                    controller: _passwordController,
                    maxLength: 30,
                    validator: (value) {
                      if (value!.length < 6) {
                        return 'Deben ser más de 6 dígitos';
                      }
                      return null;
                    },
                    obscureText: isObscure,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isObscure = !isObscure;
                          });
                        },
                        icon: Icon(
                          isObscure
                              ? Icons.visibility_outlined
                              : Icons.visibility_off,
                        ),
                      ),
                      prefixIcon: const Icon(Icons.lock_outlined),
                      hintText: "Ingrese una contraseña",
                      labelText: "Contraseña",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (!_formKey.currentState!.validate()) {
                          return;
                        }
                        if (_formKey.currentState!.validate()) {
                          context.read<AuthCubit>().signInWithEmailAndPassword(
                                _emailController.text,
                                _passwordController.text,
                              );
                        }
                      },
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(
                          fontFamily: "AbrilFatface",
                          color: Colors.black,
                          fontSize: 15.0,
                          fontStyle: FontStyle.italic,
                        ),
                      )),
                  const Divider(
                    color: Colors.brown,
                    height: 5,
                  ),
                  ElevatedButton(
                    onPressed: () =>
                        context.read<AuthCubit>().signInAnonymously(),
                    child: const Text(
                      'Inicia Sesión como invitado.',
                      style: TextStyle(
                        fontFamily: "AbrilFatface",
                        color: Colors.black,
                        fontSize: 15.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(onPrimary: Colors.black),
                  ),
                  const Divider(
                    color: Colors.brown,
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text('Otros medios para \n iniciar sesión: ',
                          style: TextStyle(
                              fontFamily: "AbrilFatface",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () =>
                                  context.read<AuthCubit>().signInWithGoogle(),
                              icon: const Icon(
                                FontAwesomeIcons.google,
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.brown,
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿No estás registrado?',
                        style: TextStyle(
                            color: Colors.cyan, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Registro(),
                                ));
                          },
                          child: const Text(
                            '¡Registrate!',
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

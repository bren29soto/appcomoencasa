import 'package:appcomoencasa/data/repositories/auth/auth_repository_impl.dart';
import 'package:appcomoencasa/my_app.dart';
import 'package:appcomoencasa/presentation/bloc/cubit/auth_cubit.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro2.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro3.dart';
import 'package:appcomoencasa/presentation/pages/introduccion/intro4.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final authCubit = AuthCubit(AuthRepositoryImpl());
  runApp(
    BlocProvider(
      create: (_) => authCubit..init(),
      child: MyApp.create(),
    ),
  );
}

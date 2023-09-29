import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/model/bloc/bloc/api_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/model/routes/routes.dart';

import 'view/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final ApiBloc _apiBloc = ApiBloc();

  // ignore: override_on_non_overriding_member
  void initsate() {
    _apiBloc.add(NewsList());
    super.initState();
  }

  @override
  void dispose() {
    _apiBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ApiBloc()..add(NewsList()),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: AppRoute(),
        home: const Scaffold(
          backgroundColor: Colors.white,
          body: HomePage(),
        ),
      ),
    );
  }
}

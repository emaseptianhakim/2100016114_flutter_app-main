// ignore_for_file: depend_on_referenced_packages, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_appmain_2100016114/providers/app_state.dart';
import 'package:flutter_appmain_2100016114/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    String nim = '2100016114';
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        title: "Namer App",
        home: Consumer<AppState>(
          builder: (context, appState, _) => Scaffold(
            appBar: AppBar(
              title: Text(nim),
            ),
            body: const HomeScreen(),
          ),
        ),
      ),
    );
  }
}

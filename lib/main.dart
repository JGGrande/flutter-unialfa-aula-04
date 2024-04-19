import 'package:aula04/ui/pages/login_page.dart';
import 'package:aula04/ui/theme/global_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Meu app bonito",
    home: const LoginPage(),
    debugShowCheckedModeBanner: false,
    theme: globalTheme(),
  ));
}

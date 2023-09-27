import 'package:flutter/material.dart';
import 'package:notable/presentation/notable_app.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  runApp(NotableApp());
}

import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:notable/injection.dart';
import 'package:notable/presentation/notable_app.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  Paint.enableDithering = true;
  await configureInjection(Environment.prod);
  runApp(NotableApp());
}

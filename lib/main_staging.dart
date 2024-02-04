import 'package:catbreeds/bootstrap.dart';
import 'package:catbreeds/injection_container.dart';
import 'package:catbreeds/modules/presentation/app/app.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initLocator();
  await bootstrap(() => const App());
}

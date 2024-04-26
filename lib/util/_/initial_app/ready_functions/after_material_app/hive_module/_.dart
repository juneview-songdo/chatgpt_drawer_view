import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../../../../../main.dart';

@ReadyAfterMaterialApp()
Future<void> readyForHiveModule(BuildContext context) async {
  final dir = await getApplicationDocumentsDirectory();
  Hive.defaultDirectory = dir.path;
}

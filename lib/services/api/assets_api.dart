import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

mixin AssetsHelper {
  Future<File> assetFileGenerator(String path)async{
final data=await rootBundle.load(path);
final bytes=data.buffer.asUint8List();
return storeFiles(path,bytes);
}

Future<File> storeFiles(String path, Uint8List bytes) async{
    final filename = basename(path);
    final dir = await getApplicationDocumentsDirectory();
   final file =File("${dir.path}/$filename");
   await file.writeAsBytes(bytes,flush: true);
   return file;
}

}
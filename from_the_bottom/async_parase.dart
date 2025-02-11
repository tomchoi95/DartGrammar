import 'dart:io';
import 'dart:async';

Future<void> main() async {
  final filePath = 'example.txt';

  // 파일에 쓰기
  await writeFile(filePath, 'Hello, Dart!');

  // 파일에서 읽기
  final content = await readFile(filePath);
  print('File content: $content');
}

Future<void> writeFile(String path, String content) async {
  final file = File(path);
  await file.writeAsString(content);
  print('File written: $path');
}

Future<String> readFile(String path) async {
  final file = File(path);
  return await file.readAsString();
}
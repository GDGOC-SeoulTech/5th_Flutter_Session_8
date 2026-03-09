import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // 여기부터! 해봅시다.
      // 우리의 예상대로라면, 300x300 파란 박스 속에 100x100짜리 빨간 박스가 생겨야 합니다.
      // 앱 실행시, 어떤 화면이 보이시나요? 예상대로 되었나요?
      body: Container(
        width: 300,
        height: 300,
        color: Colors.blue,
        child: Center(
          // Step 2. 중재자 등장!(Center)
          child: Container(width: 100, height: 100, color: Colors.red),
        ),
      ),
    );
  }
}

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
      // 다시 body부분을 바꿔봅시다.
      body: Column(
        // 여기서는 우리의 예상대로라면
        // "포켓몬 도감" 텍스트가 아래로 세로 스크롤되는 리스트 20개가 떠야 하겠군요.
        children: [
          const Text('포켓몬 도감', style: TextStyle(fontSize: 24)),
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(title: Text('포켓몬 $index'));
            },
          ),
        ],
      ),
    );
  }
}

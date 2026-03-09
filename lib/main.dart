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
      body: Column(
        children: [
          const Text('포켓몬 도감', style: TextStyle(fontSize: 24)),
          // Expanded로 남은 공간의 한계 정해주기
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return
                // 의도적으로 에러를 유발하는 망가진 카드 UI
                // 어느 곳을 손봐야할지 생각해봅시다.
                Card(
                  margin: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      // 가짜 포켓몬 이미지 (회색 박스)
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey.shade300,
                        child: const Icon(Icons.image, size: 50),
                      ),
                      // 포켓몬 정보
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '포켓몬 $index',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // (에러 발생) 텍스트가 너무 길어서 화면 오른쪽으로 뚫고 나감
                          const Text(
                            '이 포켓몬은 매우 강력한 힘을 가지고 있으며, 숲속 깊은 곳에서 주로 발견됩니다. 성격이 온순하여 사람을 잘 따르지만 화가 나면 무섭습니다.',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

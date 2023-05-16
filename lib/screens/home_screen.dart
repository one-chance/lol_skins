import 'package:flutter/material.dart';
import 'deatil_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String championImageUrl =
      "http://ddragon.leagueoflegends.com/cdn/13.9.1/img/champion/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('챔피언 목록'),
      ),
      body: Center(
        child: GridView.builder(
            itemCount: 100,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.9,
                crossAxisSpacing: 4,
                mainAxisSpacing: 2),
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DetailScreen(championName: "아트록스")));
                    // 챔피언 개별 상세 화면으로 이동
                  },
                  child: Column(
                    children: [
                      Image.network(
                        '${championImageUrl}Aatrox.png',
                        fit: BoxFit.cover,
                      ),
                      const Text("아트록스")
                    ],
                  ));
            }),
      ),
    );
  }
}

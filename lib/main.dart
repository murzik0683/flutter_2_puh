import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Happy birthday Ослик!',
            style: TextStyle(fontFamily: 'DancingScript-Bold', fontSize: 28),
          ),
          centerTitle: true,
        ),
        body: const FirstScreen(),
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildSpacer(10),
        const Text(
          'Поздравляю с Днем Рождения!\n Желаю счастья в личной жизни!!!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Lobster-Regular',
          ),
        ),
        const Image(
          image: AssetImage('assets/images/puh.jpg'),
        ),
        const Text(
          'ПУХ!',
          style: TextStyle(
            color: Colors.red,
            fontSize: 50,
            fontFamily: 'RubikMoonrocks-Regular',
          ),
        ),
        _buildSpacer(20),
      ],
    );
  }

  Widget _buildSpacer(double space) {
    return SizedBox(
      height: space,
    );
  }
}

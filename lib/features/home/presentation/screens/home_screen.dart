import 'package:flutter/material.dart';
import 'package:juchari_uandakua/features/home/presentation/widgets/background.dart';
import 'package:juchari_uandakua/features/home/presentation/widgets/custom_navigator_bar.dart';
import 'package:juchari_uandakua/features/home/presentation/widgets/dashboard.dart';
import 'package:juchari_uandakua/features/home/presentation/widgets/header.dart';
import 'package:juchari_uandakua/features/home/presentation/widgets/learned_words_counter.dart';
import 'package:juchari_uandakua/features/home/presentation/widgets/word_search.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'HomeScreen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter, child: Background()),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Header(),
                  WordSearch(),
                  Dashboard(),
                  LearnedWordsCounter(),
                ],
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: CustomNavigatorBar()),
        ],
      ),
    );
  }
}

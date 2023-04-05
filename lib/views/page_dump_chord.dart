import 'package:flutter/material.dart';
import 'package:flutter_tonetrainer/models/entity_dump.dart';

class PageChord extends StatelessWidget {
  final String title, content;
  final Level level;
  final IconData iconData;
  const PageChord(
      {super.key,
      required this.title,
      required this.content,
      required this.level,
      required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: 20,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 230),
          child: Hero(
            tag: title,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20))),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        iconData,
                        size: 30,
                      ),
                      Text(title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(level.name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(content,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

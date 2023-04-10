import 'package:flutter/material.dart';
import 'package:flutter_tonetrainer/models/entity_dump.dart';
import 'package:piano/piano.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: title,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: Colors.amber.shade800,
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(20, 20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      iconData,
                      size: 40,
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(color: Colors.lightGreen.shade700),
                width: 400,
                height: 200,
                child: InteractivePiano(
                    noteRange: NoteRange.forClefs([Clef.Treble])))
          ],
        ),
      ),
    );
  }
}

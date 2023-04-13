import 'package:flutter/material.dart';
import 'package:flutter_tonetrainer/models/entity_dump.dart';
import 'package:piano/piano.dart';

class PageChord extends StatefulWidget {
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
  State<PageChord> createState() => _PageChordState();
}

class _PageChordState extends State<PageChord> {
  final List<String> tappedNote = [];

  void isTappedNote(NotePosition position) {
    String str =
        position.name.toString().substring(0, position.name.length - 1);
    if (!tappedNote.contains(str)) {
      tappedNote.add(str);
    }
    setState(() {});
  }

  String getTappedNote() {
    String str = '';
    for (int i = 0; i < tappedNote.length; i++) {
      str += '${tappedNote[i]} ';
    }
    return str.substring(0, str.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Expanded(
            child: Column(
              children: [
                Hero(
                  tag: widget.title,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade800,
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(20, 20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          widget.iconData,
                          size: 30,
                        ),
                        Text(
                          widget.title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Container(
                        decoration:
                            BoxDecoration(color: Colors.lightGreen.shade700),
                        width: 400,
                        height: 150,
                        child: InteractivePiano(
                            noteRange: NoteRange.forClefs([Clef.Treble]),
                            highlightColor: Colors.greenAccent.shade700,
                            onNotePositionTapped: (position) =>
                                isTappedNote(position))),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  child: Text(
                    tappedNote.isEmpty ? '선택' : getTappedNote(),
                    style: const TextStyle(fontSize: 30),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

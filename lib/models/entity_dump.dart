import 'package:flutter/material.dart';

enum Level { easy, nomal, hard }

class Dump {
  late final String title, content;
  Level level;
  IconData icons;
  Dump(this.title, this.content, this.level, this.icons);
}

class DumpList {
  late final List<Dump> dumplist = [];
  DumpList.creatDumpList() {
    dumplist.add(Dump(
        'Triad Chord',
        'A triad chord is a type of musical chord \nthat consists of three notes played simultaneously. \nIt is the most basic type of chord \nand is made up of a root note, \na third, and a fifth interval above the root.',
        Level.easy,
        Icons.ac_unit_outlined));
    dumplist.add(Dump(
        'Sevens Chord',
        'A Seventh Chord is a type of musical chord \nthat consists of a root note, a third, a fifth, \nand a seventh interval above the root.\n There are several types of seventh chords, \nbut one common type is \nthe "Dominant Seventh" chord, \nalso known as the "Seventh Chord."',
        Level.nomal,
        Icons.accessibility_new_sharp));
    dumplist
        .add(Dump('Tension Chord', 'content3', Level.hard, Icons.adb_rounded));
    dumplist
        .add(Dump('title4', 'content4', Level.easy, Icons.audiotrack_outlined));
  }
}

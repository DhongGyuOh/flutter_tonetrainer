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
    dumplist
        .add(Dump('title1', 'content1', Level.easy, Icons.ac_unit_outlined));
    dumplist.add(
        Dump('title2', 'content2', Level.nomal, Icons.accessibility_new_sharp));
    dumplist.add(Dump('title3', 'content3', Level.hard, Icons.adb_rounded));
    dumplist
        .add(Dump('title4', 'content4', Level.easy, Icons.audiotrack_outlined));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tonetrainer/models/entity_dump.dart';
import 'package:flutter_tonetrainer/views/page_dump_chord.dart';

class PageDump extends StatelessWidget {
  PageDump({super.key});
  final DumpList dumpList = DumpList.creatDumpList();

  void listItemTap(BuildContext context, Dump dumpl) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => PageChord(
                  title: dumpl.title,
                  content: dumpl.content,
                  level: dumpl.level,
                  iconData: dumpl.icons,
                ),
            fullscreenDialog: true));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 200),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: dumpList.dumplist.length,
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 40,
                width: 10,
              );
            },
            itemBuilder: (context, index) {
              var dumpl = dumpList.dumplist[index];
              return GestureDetector(
                onTap: () {
                  listItemTap(context, dumpl);
                },
                child: Hero(
                  tag: dumpl.title,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 30),
                    decoration: BoxDecoration(
                        color: Colors.amber.shade800,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              dumpl.icons,
                              size: 30,
                            ),
                            Text(
                              dumpl.title,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            )
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              dumpl.level.name,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              dumpl.content,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 12),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )),
    );
  }
}

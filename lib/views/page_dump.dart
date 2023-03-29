import 'package:flutter/material.dart';
import 'package:flutter_tonetrainer/models/entity_dump.dart';

class PageDump extends StatelessWidget {
  PageDump({super.key});
  final DumpList dumpList = DumpList.creatDumpList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            var dumpl = dumpList.dumplist[index];
            return Container(
              decoration: BoxDecoration(color: Colors.amber.shade800),
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
                      Text(
                        dumpl.content,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      )
                    ],
                  )
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: dumpList.dumplist.length),
    );
  }
}

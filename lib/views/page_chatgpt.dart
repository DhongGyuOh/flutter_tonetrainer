import 'package:flutter/material.dart';

class PageChatGPT extends StatefulWidget {
  const PageChatGPT({super.key});

  @override
  State<PageChatGPT> createState() => _PageChatGPTState();
}

class _PageChatGPTState extends State<PageChatGPT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(20, 20)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(.23),
                              offset: const Offset(1.2, 1.2),
                              blurRadius: 12)
                        ]),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PageReward extends StatelessWidget {
  const PageReward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                offset: const Offset(4, 4),
                                spreadRadius: 4,
                                blurRadius: 10)
                          ],
                          color: Colors.amberAccent.shade700,
                          borderRadius: const BorderRadiusDirectional.all(
                              Radius.elliptical(20, 20))),
                      height: 160,
                      child: Builder(builder: (context) {
                        return Lottie.network(
                            'https://assets6.lottiefiles.com/packages/lf20_touohxv0.json',
                            frameRate: FrameRate(60),
                            repeat: false);
                      }),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -150),
                      child: const Text(
                        '1st Complete',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blueAccent.shade400,
                      borderRadius: const BorderRadiusDirectional.all(
                          Radius.elliptical(20, 20))),
                  child: Lottie.network(
                      'https://assets6.lottiefiles.com/private_files/lf30_bunlnbcp.json',
                      height: 160,
                      frameRate: FrameRate(60),
                      repeat: false),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: const BorderRadiusDirectional.all(
                          Radius.elliptical(20, 20))),
                  child: Lottie.network(
                    'https://assets6.lottiefiles.com/private_files/lf30_iiouv6r0.json',
                    height: 160,
                    frameRate: FrameRate(60),
                    repeat: false,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.yellowAccent.shade700,
                      borderRadius: const BorderRadiusDirectional.all(
                          Radius.elliptical(20, 20))),
                  child: Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_o2hGVm.json',
                    height: 160,
                    frameRate: FrameRate(60),
                    repeat: false,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red.shade200,
                      borderRadius: const BorderRadiusDirectional.all(
                          Radius.elliptical(20, 20))),
                  child: Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_TZvjSDdby2.json',
                    height: 160,
                    frameRate: FrameRate(60),
                    repeat: false,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.lime.shade900,
                      borderRadius: const BorderRadiusDirectional.all(
                          Radius.elliptical(20, 20))),
                  child: Lottie.network(
                    'https://assets6.lottiefiles.com/private_files/lf30_fnh9mbud.json',
                    height: 160,
                    frameRate: FrameRate(60),
                    repeat: false,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}

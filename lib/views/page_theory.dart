import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class PageTheory extends StatelessWidget {
  PageTheory({super.key});
  final List<Image> imageList = [
    Image.network('https://source.unsplash.com/random/1'),
    Image.network('https://source.unsplash.com/random/2'),
    Image.network('https://source.unsplash.com/random/3'),
    Image.network('https://source.unsplash.com/random/4'),
    Image.network('https://source.unsplash.com/random/5'),
    Image.network('https://source.unsplash.com/random/6'),
    Image.network('https://source.unsplash.com/random/7'),
    Image.network('https://source.unsplash.com/random/9'),
    Image.network('https://source.unsplash.com/random/10'),
    Image.network('https://source.unsplash.com/random/11'),
    Image.network('https://source.unsplash.com/random/12'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 50),
      child: Center(
        child: Expanded(
          child: Swiper(
            control: const SwiperControl(),
            pagination:
                const SwiperPagination(alignment: Alignment.bottomCenter),
            itemCount: imageList.length,
            viewportFraction: 1,
            autoplay: true,
            autoplayDisableOnInteraction: true,
            itemBuilder: (context, index) {
              var images = imageList[index];
              return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.grey.withOpacity(0.5))
                      ]),
                  child: images);
            },
          ),
        ),
      ),
    ));
  }
}

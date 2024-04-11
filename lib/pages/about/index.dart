import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with AutomaticKeepAliveClientMixin {
  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("关于"),
      ),
      body: SizedBox(
        height: 240,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.network(
              "https://via.placeholder.com/350x150",
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            );
          },
          itemCount: 3,
          viewportFraction: 0.8,
          scale: 0.9,
          pagination: const SwiperPagination(),
          control: const SwiperControl(),
        ),
      ),
    );
  }
}

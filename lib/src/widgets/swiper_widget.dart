import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:web_landing_page/src/widgets/cards_widget.dart';

class SwiperCardWidget extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SwiperCardWidgetState createState() => _SwiperCardWidgetState();
}

class _SwiperCardWidgetState extends State<SwiperCardWidget> {
  List<String> imagenes = [
    'assets/images/fire.png',
    'assets/images/node.png',
    'assets/images/npm.png',
    'assets/images/ps.png',
    'assets/images/ui.png',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Swiper(
      layout: SwiperLayout.TINDER,
      itemWidth: size.width * 0.5,
      itemHeight: size.height * 0.5,
      viewportFraction: 0.8,
      scale: 0.9,
      
      itemCount: imagenes.length,
      itemBuilder: (BuildContext context, int index) {
        return CardWidget(image: imagenes[index],
            title: 'Node.js',
            grandientRight: Color.fromARGB(255, 253, 254, 255),
            grandientLeft: Color.fromARGB(255, 111, 201, 250),
            backgroundColorAvatar: Colors.white,
            color: Colors.black,
            sizeHeight: 0.70,
            sizeWith: 0.55,);
        
      },
    );
  }
}

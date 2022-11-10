import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_landing_page/src/widgets/cards_widget.dart';

import 'package:web_landing_page/src/widgets/responsive_widget.dart';

const tikTok = 'https://github.com/rodrigoBak-flutter/TikTok_clon_BakApp';

const amazon = 'https://github.com/rodrigoBak-flutter/app_amazon';

class ContactContent extends ResponsiveWidget {
  const ContactContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => DesktopHomeContent();

  @override
  Widget buildMobile(BuildContext context) => MobileHomeContent();
}

class DesktopHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 111, 201, 250),
            Color.fromARGB(255, 253, 254, 255),
          ],
        ),
      ),
      height: size.height * .99,
      child: Row(
        children: [
          Container(
            width: size.width * 0.5,
            height: size.height * 0.5,
            child: Lottie.asset('assets/lottie/working.json'),
          ),
          Column(
            children: [
              CupertinoButton(
                onPressed: () => launchUrlString(tikTok),
                child: const CardWidget(
                  image: 'assets/images/tiktok.png',
                  title: 'Clon de Tiktok',
                  grandientRight: Color.fromARGB(255, 253, 254, 255),
                  grandientLeft: Color.fromARGB(255, 111, 201, 250),
                  backgroundColorAvatar: Colors.transparent,
                  color: Colors.black,
                  sizeHeight: 0.25,
                  sizeWith: 0.15,
                ),
              ),
              CupertinoButton(
                onPressed: () => launchUrlString(amazon),
                child: const CardWidget(
                  image: 'assets/images/amazon.png',
                  title: 'Clon de Amazon',
                  grandientRight: Color.fromARGB(255, 253, 254, 255),
                  grandientLeft: Color.fromARGB(255, 111, 201, 250),
                  backgroundColorAvatar: Colors.transparent,
                  color: Colors.black,
                  sizeHeight: 0.25,
                  sizeWith: 0.15,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 111, 201, 250),
            Color.fromARGB(255, 253, 254, 255),
          ],
        ),
      ),
      height: size.height * .93,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            width: size.width * 0.3,
            height: size.height * 0.25,
            child: Lottie.asset('assets/lottie/working.json'),
          ),
          CupertinoButton(
            onPressed: () => launchUrlString(tikTok),
            child: const CardWidget(
              image: 'assets/images/tiktok.png',
              title: 'Clon de Tiktok',
              grandientRight: Color.fromARGB(255, 253, 254, 255),
              grandientLeft: Color.fromARGB(255, 111, 201, 250),
              backgroundColorAvatar: Colors.transparent,
              color: Colors.black,
              sizeHeight: 0.20,
              sizeWith: 0.45,
            ),
          ),
          CupertinoButton(
            onPressed: () => launchUrlString(amazon),
            child: const CardWidget(
              image: 'assets/images/amazon.png',
              title: 'Clon de Amazon',
              grandientRight: Color.fromARGB(255, 253, 254, 255),
              grandientLeft: Color.fromARGB(255, 111, 201, 250),
              backgroundColorAvatar: Colors.transparent,
              color: Colors.black,
              sizeHeight: 0.20,
              sizeWith: 0.45,
            ),
          ),
        ],
      ),
    );
  }
}

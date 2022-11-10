import 'package:flutter/material.dart';
import 'package:web_landing_page/src/widgets/cards_widget.dart';
import 'package:web_landing_page/src/widgets/responsive_widget.dart';

class ToolsContent extends ResponsiveWidget {
  const ToolsContent({Key? key}) : super(key: key);

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
      height: size.height * .93,
      child: Column(
        children: [
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CardWidget(
                image: 'assets/images/dart.png',
                title: 'Front-end',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
            ],
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CardWidget(
                image: 'assets/images/node.png',
                title: 'Back-end y DDBB',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/fire.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/db_1.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/mysql.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
            ],
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CardWidget(
                image: 'assets/images/postman.png',
                title: 'Herramientas',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/git_.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/vs.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/ps.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
              ),
              const CardWidget(
                image: 'assets/images/figma.png',
                title: '',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.25,
                sizeWith: 0.15,
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
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 111, 201, 250),
            Color.fromARGB(255, 253, 254, 255),
          ],
        ),
      ),
      height: height * .93,
      width: double.infinity,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CardWidget(
            image: 'assets/images/dart.png',
            title: 'Front-end',
            grandientRight: Color.fromARGB(255, 253, 254, 255),
            grandientLeft: Color.fromARGB(255, 111, 201, 250),
            backgroundColorAvatar: Colors.transparent,
            color: Colors.black,
            sizeHeight: 0.25,
            sizeWith: 0.55,
          ),
          const CardWidget(
            image: 'assets/images/node.png',
            title: 'Back-end',
            grandientRight: Color.fromARGB(255, 253, 254, 255),
            grandientLeft: Color.fromARGB(255, 111, 201, 250),
            backgroundColorAvatar: Colors.transparent,
            color: Colors.black,
            sizeHeight: 0.25,
            sizeWith: 0.55,
          ),
          const CardWidget(
            image: 'assets/images/fire.png',
            title: 'Back-end y BBDD',
            grandientRight: Color.fromARGB(255, 253, 254, 255),
            grandientLeft: Color.fromARGB(255, 111, 201, 250),
            backgroundColorAvatar: Colors.transparent,
            color: Colors.black,
            sizeHeight: 0.25,
            sizeWith: 0.55,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_landing_page/src/widgets/cards_widget.dart';
import 'package:web_landing_page/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

const scanner =
    'https://play.google.com/store/apps/details?id=com.bak.scanner.qr';

class ProjectsContent extends ResponsiveWidget {
  const ProjectsContent({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) => DesktopHomeContent();

  @override
  Widget buildMobile(BuildContext context) => MobileHomeContent();
}

class DesktopHomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CupertinoButton(
            child: const CardWidget(
              image: 'assets/images/scanner.png',
              title: 'Node.js',
              grandientRight: Color.fromARGB(255, 253, 254, 255),
              grandientLeft: Color.fromARGB(255, 111, 201, 250),
              backgroundColorAvatar: Colors.transparent,
              color: Colors.black,
              sizeHeight: 0.35,
              sizeWith: 0.25,
            ),
            onPressed: () => launchUrlString(scanner),
          ),
          CupertinoButton(
            child: const CardWidget(
              image: 'assets/images/scanner.png',
              title: 'Node.js',
              grandientRight: Color.fromARGB(255, 253, 254, 255),
              grandientLeft: Color.fromARGB(255, 111, 201, 250),
              backgroundColorAvatar: Colors.transparent,
              color: Colors.black,
              sizeHeight: 0.35,
              sizeWith: 0.25,
            ),
            onPressed: () => launchUrlString(scanner),
          ),
          CupertinoButton(
            child: const CardWidget(
              image: 'assets/images/scanner.png',
              title: 'Node.js',
              grandientRight: Color.fromARGB(255, 253, 254, 255),
              grandientLeft: Color.fromARGB(255, 111, 201, 250),
              backgroundColorAvatar: Colors.transparent,
              color: Colors.black,
              sizeHeight: 0.35,
              sizeWith: 0.25,
            ),
            onPressed: () => launchUrlString(scanner),
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
      height: height * 0.93,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CupertinoButton(
              child: const CardWidget(
                image: 'assets/images/scanner.png',
                title: 'Node.js',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.35,
                sizeWith: 0.25,
              ),
              onPressed: () => launchUrlString(scanner),
            ),
            CupertinoButton(
              child: const CardWidget(
                image: 'assets/images/scanner.png',
                title: 'Node.js',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.35,
                sizeWith: 0.25,
              ),
              onPressed: () => launchUrlString(scanner),
            ),
            CupertinoButton(
              child: const CardWidget(
                image: 'assets/images/scanner.png',
                title: 'Node.js',
                grandientRight: Color.fromARGB(255, 253, 254, 255),
                grandientLeft: Color.fromARGB(255, 111, 201, 250),
                backgroundColorAvatar: Colors.transparent,
                color: Colors.black,
                sizeHeight: 0.35,
                sizeWith: 0.25,
              ),
              onPressed: () => launchUrlString(scanner),
            ),
          ],
        ),
      ),
    );
  }
}

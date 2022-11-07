import 'package:flutter/cupertino.dart';
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
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const CardWidget(
            image: 'assets/images/node.png',
            title: 'Node.js',
            grandientRight: Color.fromARGB(255, 253, 254, 255),
            grandientLeft: Color.fromARGB(255, 111, 201, 250),
            backgroundColorAvatar: Colors.white,
            color: Colors.black,
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
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: 5),
        ],
      ),
    );
  }
}

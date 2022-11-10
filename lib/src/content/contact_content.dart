import 'package:flutter/cupertino.dart';

import 'package:web_landing_page/src/widgets/responsive_widget.dart';


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

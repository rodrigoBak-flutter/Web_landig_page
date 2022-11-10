import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:web_landing_page/src/widgets/flow_widget.dart';

class FlowButton extends StatefulWidget {
  @override
  State<FlowButton> createState() => _FlowButtonState();
}

class _FlowButtonState extends State<FlowButton>
    with SingleTickerProviderStateMixin {
  late AnimationController animation;
  final menuIsOpen = ValueNotifier<bool>(false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    animation.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  toggleMenu() {
    menuIsOpen.value ? animation.reverse() : animation.forward();
    menuIsOpen.value = !menuIsOpen.value;
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FabVerticalDelegate(animation: animation),
      clipBehavior: Clip.none,
      children: [
        FloatingActionButton(
          heroTag: '1',
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 111, 201, 250),
          child: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: animation,
          ),
          onPressed: () => toggleMenu(),
        ),
        FloatingActionButton(
          heroTag: '2',
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 111, 201, 250),
          child: Icon(Icons.whatsapp),
          onPressed: () {
            whatsapp();
          },
        ),
        FloatingActionButton(
          heroTag: '2',
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 111, 201, 250),
          child: Icon(Icons.email),
          onPressed: () {
            email();
          },
        ),
      ],
    );
  }

  whatsapp() async {
    const url = "whatsapp://send?phone=+34617154892";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  email() async {
    final Uri _emailurl = Uri(
        scheme: 'Rodrigo',
        path: 'rodrigobakapp@gmail.com',
        queryParameters: {'subject': ' '});

    if (await canLaunch(_emailurl.toString())) {
      await launch(_emailurl.toString());
    } else {
      throw 'Could not launch $_emailurl';
    }
  }
}

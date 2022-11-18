import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:url_launcher/url_launcher_string.dart';

import 'package:web_landing_page/src/widgets/flow_widget.dart';

const linkedin = 'https://es.linkedin.com/in/rodrigo-bak-flutter';
const git = 'https://github.com/rodrigoBak-flutter';
const instagram = 'https://www.instagram.com/bak_app/';
const tiktok = 'https://www.tiktok.com/@bakapps';

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
          child: Icon(FontAwesomeIcons.linkedinIn),
          onPressed: () => launchUrlString(linkedin),
        ),
        FloatingActionButton(
          heroTag: '2',
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 111, 201, 250),
          child: Icon(FontAwesomeIcons.github),
          onPressed: () => launchUrlString(git),
        ),
        FloatingActionButton(
          heroTag: '2',
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 111, 201, 250),
          child: Icon(FontAwesomeIcons.tiktok),
          onPressed: () => launchUrlString(tiktok),
        ),
        FloatingActionButton(
          heroTag: '2',
          elevation: 0,
          backgroundColor: Color.fromARGB(255, 111, 201, 250),
          child: Icon(FontAwesomeIcons.instagram),
          onPressed: () => launchUrlString(instagram),
        ),
      ],
    );
  }

  

  
}

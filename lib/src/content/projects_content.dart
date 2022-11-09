import 'package:flutter/cupertino.dart';

import 'package:url_launcher/url_launcher_string.dart';
import 'package:web_landing_page/src/widgets/cardApps_widgets.dart';
import 'package:web_landing_page/src/widgets/cards_widget.dart';
import 'package:web_landing_page/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';

const proyectos =
    'https://play.google.com/store/apps/developer?id=bak_app&pli=1';

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
      child: CupertinoButton(
        child: const CardAppsWidget(
          title: 'Proyectos',
          image: 'assets/images/bak_app.png',
          imagenApps: 'assets/images/flutter_apps.png',
          grandientRight: Color.fromARGB(255, 253, 254, 255),
          grandientLeft: Color.fromARGB(255, 111, 201, 250),
          backgroundColorAvatar: Colors.transparent,
          color: Colors.black,
          sizeHeight: 0.75,
          sizeWith: 0.85,
        ),
        onPressed: () => launchUrlString(proyectos),
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
      child: CupertinoButton(
        child: const CardAppsWidget(
          title: 'Proyectos Flutter',
          image: 'assets/images/bak_app.png',
          imagenApps: 'assets/images/flutter_apps.png',
          grandientRight: Color.fromARGB(255, 253, 254, 255),
          grandientLeft: Color.fromARGB(255, 111, 201, 250),
          backgroundColorAvatar: Colors.transparent,
          color: Colors.black,
          sizeHeight: 0.90,
          sizeWith: 0.95,
        ),
        onPressed: () => launchUrlString(proyectos),
      ),
    );
  }
}

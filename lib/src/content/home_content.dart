import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:web_landing_page/src/widgets/responsive_widget.dart';

import 'package:url_launcher/url_launcher_string.dart';

const googlePlayURL = 'https://play.google.com/store/apps/developer?id=bak_app';
const linkedin = 'https://es.linkedin.com/in/rodrigo-bak-flutter';
const git = 'https://github.com/rodrigoBak-flutter';
const instagram = 'https://www.instagram.com/bak_app/';
const tiktok = 'https://www.tiktok.com/@bakapps';
const appStoreURL = 'https://apps.apple.com/tw/app/youtube/id544007664';

const title =
    'Estoy en busqueda de nuevos retos y experiencias para seguir aprendiendo y mejorando';
const subtitle =
    'Me interesa trabajar en tecnología para colaborar en proyectos de alto impacto social, donde realmente pueda resolver las necesidades de las personas, aportando todo mi conocimiento en desarrollo, diseño y cumpliendo mi sueño de idear y crear servicios digitales en el mundo real.';

class HomeContent extends ResponsiveWidget {
  const HomeContent({Key? key}) : super(key: key);

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
        children: [
          FadeInLeft(
            duration: Duration(milliseconds: 3000),
            child: Container(
              width: width * .3,
              child: Align(
                child: Lottie.asset('assets/lottie/desk.json'),
              ),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FadeInDown(
                  duration: Duration(milliseconds: 3000),
                  child: const Text(
                    title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Color.fromARGB(255, 1, 64, 115)),
                  ),
                ),
                SizedBox(height: 24),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: FadeInUpBig(
                      duration: Duration(milliseconds: 3000),
                      child: Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    )),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spin(
                      delay: const Duration(milliseconds: 2000),
                      child: CupertinoButton(
                        onPressed: () => launchUrlString(linkedin),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 253, 254, 255),
                                Color.fromARGB(255, 111, 201, 250),
                              ],
                            ),
                          ),
                          child: const Icon(
                            FontAwesomeIcons.linkedin,
                            size: 40,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Spin(
                      delay: const Duration(milliseconds: 2000),
                      child: CupertinoButton(
                        onPressed: () => launchUrlString(git),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 253, 254, 255),
                                Color.fromARGB(255, 111, 201, 250),
                              ],
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.github,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Spin(
                      delay: const Duration(milliseconds: 2000),
                      child: CupertinoButton(
                        onPressed: () => launchUrlString(instagram),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 253, 254, 255),
                                Color.fromARGB(255, 111, 201, 250),
                              ],
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.instagram,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                    Spin(
                      delay: const Duration(milliseconds: 2000),
                      child: CupertinoButton(
                        onPressed: () => launchUrlString(tiktok),
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(50.0),
                              bottomLeft: Radius.circular(50.0),
                              topRight: Radius.circular(50.0),
                              bottomRight: Radius.circular(50.0),
                            ),
                            gradient: LinearGradient(
                              colors: <Color>[
                                Color.fromARGB(255, 253, 254, 255),
                                Color.fromARGB(255, 111, 201, 250),
                              ],
                            ),
                          ),
                          child: Icon(
                            FontAwesomeIcons.tiktok,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 24),
                  ],
                ),
              ],
            ),
          )
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
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: size.width * 0.2,
            height: size.height * 0.2,
            child: Align(
              child:
                  Lottie.asset('assets/lottie/desk.json', fit: BoxFit.contain),
            ),
          ),
          SizedBox(width: 24),
          Text(
            title,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 1, 64, 115)),
          ),
          SizedBox(height: 24),
          Text(
            subtitle,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 84),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CupertinoButton(
                onPressed: () => launchUrlString(linkedin),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 253, 254, 255),
                        Color.fromARGB(255, 111, 201, 250),
                      ],
                    ),
                  ),
                  child: Icon(
                    FontAwesomeIcons.linkedin,
                    size: 40,
                  ),
                ),
              ),
              SizedBox(width: 5),
              CupertinoButton(
                onPressed: () => launchUrlString(git),
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      bottomLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color.fromARGB(255, 253, 254, 255),
                        Color.fromARGB(255, 111, 201, 250),
                      ],
                    ),
                  ),
                  child: Icon(
                    FontAwesomeIcons.github,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

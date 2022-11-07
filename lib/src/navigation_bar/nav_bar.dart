import 'package:web_landing_page/src/my_web_page.dart';
import 'package:web_landing_page/src/navigation_bar/nav_bar_button.dart';
import 'package:web_landing_page/src/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const title = '¡Hola a todos, soy Rodrigo!';

class NavBar extends ResponsiveWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget buildDesktop(BuildContext context) {
    return const DesktopNavBar();
  }

  @override
  Widget buildMobile(BuildContext context) {
    return const MobileNavBar();
  }
}

class DesktopNavBar extends HookConsumerWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isScrolled = ref.watch(scrolledProvider);
    //final navBarColor = isScrolled ? Colors.white : Colors.white;

    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 111, 201, 250),
            Color.fromARGB(255, 253, 254, 255),
          ],
        ),
      ),
     // color: navBarColor,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              height: 40.0,
            ),
            SizedBox(width: 10.0),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 1, 64, 115),
                fontSize: 32,
              ),
            ),
            Expanded(child: Container()),
            NavBarButton(
              onTap: () => ref.read(currentPageProvider.state).state = homeKey,
              text: "Inicio",
            ),
            
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.state).state = tecnologiaKey,
              text: "Proyectos",
            ),
            
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.state).state = toolsKey,
              text: "Tecnologias",
            ),
            NavBarButton(
              onTap: () =>
                  ref.read(currentPageProvider.state).state = contactKey,
              text: "Contacto",
            ),
             
            
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends HookConsumerWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final containerHeight = useState<double>(0.0);
    //final isScrolled = ref.watch(scrolledProvider);

   // final navBarColor = isScrolled ? Colors.white : Colors.white;
    return Stack(
      children: [
        AnimatedContainer(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 111, 201, 250),
            Color.fromARGB(255, 253, 254, 255),
          ],
        ),
      ),
          margin: EdgeInsets.only(top: 70.0),
          duration: Duration(milliseconds: 350),
          curve: Curves.ease,
          height: containerHeight.value,
          child: SingleChildScrollView(
            child: Column(
              children: [
                NavBarButton(
                  text: "Inicio",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = homeKey;
                    containerHeight.value = 0;
                  },
                ),
                
                NavBarButton(
                  text: "Proyectos",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = tecnologiaKey;
                    containerHeight.value = 0;
                  },
                ),
                
                NavBarButton(
                  text: "Tecnologias",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = toolsKey;
                    containerHeight.value = 0;
                  },
                ),

                NavBarButton(
                  text: "Contacto",
                  onTap: () {
                    ref.read(currentPageProvider.state).state = contactKey;
                    containerHeight.value = 0;
                  },
                ),
                 
                
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(255, 111, 201, 250),
            Color.fromARGB(255, 253, 254, 255),
          ],
        ),
      ),
          
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                
                FittedBox(
                  child: Text(
                              title,
                              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 1, 64, 115),
                  fontSize: 20,
                              ),
                            ),
                ),
                Expanded(
                  child: Container(),
                ),
                Material(
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () {
                      final height = containerHeight.value > 0 ? 0.0 : 240.0;
                      containerHeight.value = height;
                    },
                    child: Icon(
                      Icons.menu,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

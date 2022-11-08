import 'package:flutter/material.dart';

/*
  Para que el CardWidget se agrande o
  se achique se debe manejar el double de size a la vez, 
  tanto del with, como del height
  
*/

class CardAppsWidget extends StatefulWidget {
  final String image, title, imagenApps;
  final Color color, grandientLeft, grandientRight, backgroundColorAvatar;
  final double sizeHeight, sizeWith;

  const CardAppsWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      required this.grandientLeft,
      required this.grandientRight,
      required this.backgroundColorAvatar,
      required this.sizeHeight,
      required this.sizeWith,
      required this.imagenApps});

  @override
  State<CardAppsWidget> createState() => _CardAppsWidgetState();
}

class _CardAppsWidgetState extends State<CardAppsWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.all(20),
      height: size.height * widget.sizeHeight,
      width: size.width * widget.sizeWith,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: size.height * widget.sizeHeight,
              width: size.width * widget.sizeWith,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    widget.grandientRight,
                    widget.grandientLeft,
                  ],
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              child: Image.asset(
                widget.imagenApps,
                
              ),
            ),
          ),

          //use the positioned widget to place

          Positioned(
            bottom: 0,
            left: 40,
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 150,
              width: 100,
              child: CircleAvatar(
                backgroundColor: widget.backgroundColorAvatar,
                // ignore: sort_child_properties_last
                child: Image.asset(widget.image),
                radius: 30,
              ),
            ),
          ),

          Positioned(
            top: 25,
            left: 30,
            child: Text(
              widget.title,
              style: TextStyle(
                  color: widget.color,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700),
            ),
          ),

          Positioned(
            top: 100,
            left: 40,
            child: Text(
              "",
              style: TextStyle(
                  color: widget.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),

          Positioned(
            top: 120,
            left: 40,
            child: Text(
              "",
              style: TextStyle(
                  color: widget.color,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
          ),

          Positioned(
            bottom: 55,
            left: 20,
            child: SizedBox(
              width: 300,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                          color: widget.color,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "",
                      style: TextStyle(
                          color: widget.color,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ]),
            ),
          ),

          const Positioned(
            right: 40,
            top: 85,
            child: Center(
              child: Text(
                "",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

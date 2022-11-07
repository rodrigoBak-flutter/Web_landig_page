import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String image, title;
  final Color color;
  final Color grandientLeft;
  final Color grandientRight;
  final Color backgroundColorAvatar;

  const CardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      required this.grandientLeft,
      required this.grandientRight,
      required this.backgroundColorAvatar});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 250,
      width: 350,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 180,
              width: 350,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    widget.grandientRight,
                    widget.grandientLeft,
                  ],
                ),
                borderRadius: BorderRadius.circular(18),
              ),
            ),
          ),

          //use the positioned widget to place

          Positioned(
            top: 0,
            right: 40,
            child: Container(
              height: 80,
              width: 80,
              child: CircleAvatar(
                backgroundColor: widget.backgroundColorAvatar,
                child: Image.asset(widget.image),
                radius: 30,
              ),
            ),
          ),

          Positioned(
            top: 65,
            left: 40,
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

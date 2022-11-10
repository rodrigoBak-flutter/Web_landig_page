import 'package:flutter/material.dart';

/*
  Para que el CardWidget se agrande o
  se achique se debe manejar el double de size a la vez, 
  tanto del with, como del height
  
*/

class CardWidget extends StatefulWidget {
  final String image, title;
  final Color color, grandientLeft, grandientRight, backgroundColorAvatar;
  final double sizeHeight, sizeWith;

  const CardWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.color,
      required this.grandientLeft,
      required this.grandientRight,
      required this.backgroundColorAvatar,
      required this.sizeHeight,
      required this.sizeWith});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
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
            ),
          ),
          //use the positioned widget to place
          Positioned(
            top: 20,
            bottom: 5,
            left: 60,
            // ignore: sized_box_for_whitespace
            child: Container(
              height: 150,
              width: 100,
              child: CircleAvatar(
                backgroundColor: widget.backgroundColorAvatar,
                // ignore: sort_child_properties_last
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.cover,
                ),
                radius: 30,
              ),
            ),
          ),

          Positioned(
            top: 15,
            left: 30,
            child: Text(
              widget.title,
              style: TextStyle(
                  color: widget.color,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}

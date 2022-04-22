import 'package:flutter/material.dart';


class Indicator extends AnimatedWidget {
  final PageController controller;
  // ignore: use_key_in_widget_constructors
  const Indicator({required this.controller}) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _createIndicator(index);
                })
          ],
        ),
      ),
    ); 
  }

  Widget _createIndicator(index) {
  
    return Container(
      width:14,
      height: 14,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          color: controller.page == index
              ?const Color(0xff18224C) 
              : Colors.white),
    );
  }
}

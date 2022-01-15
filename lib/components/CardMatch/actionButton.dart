import 'package:flutter/material.dart';


class ActionCustomButton extends StatefulWidget {
  final IconData icon;
  final Color color; 
  final double padding;
  final double sizeIcon;
  final Function() onPressed;

  const ActionCustomButton({ Key? key, required this.icon , required this.color , required this.sizeIcon, required this.onPressed, required this.padding}) : super(key: key);

  @override
  State<ActionCustomButton> createState() => _ActionCustomButtonState();
}

class _ActionCustomButtonState extends State<ActionCustomButton> {
  bool isPressed = false;
  

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onPanDown: (_) {
          widget.onPressed();
          setState(() {
            isPressed = true;
          });
        },
        onPanCancel: () {
          setState(() {
            isPressed = false;
          });
        },
        child: AnimatedContainer(
                
                duration: const Duration(milliseconds: 100),
                padding:  EdgeInsets.all(widget.padding) ,
                decoration: BoxDecoration(
                  color: isPressed ? widget.color : Colors.transparent,
                  border: Border.all(
                    color: widget.color,
                    width: 2.0,
                  ),
                  shape: BoxShape.circle,
                ),
                child:   Icon(
                  widget.icon,
                  color: isPressed ? Colors.white : widget.color,
                  size: isPressed ? widget.sizeIcon * 1 : widget.sizeIcon * 1.6, 
                ),
              ),
      ),
    );
  }
}
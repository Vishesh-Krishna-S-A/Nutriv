import 'package:flutter/material.dart';
import 'package:nutriv/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap, required this.buttonTitle});

  final void Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // color: kBottomContainerColour,
        margin: const EdgeInsets.only(top: 10.0,left: 20,right: 20,bottom: 16),
        padding: const EdgeInsets.only(bottom: 6.0),
        width:  double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(36, 225, 43, 238),
          ),
          color: kBottomContainerColour,
          borderRadius: const BorderRadius.all(Radius.circular(30))
          ),
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
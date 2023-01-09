import 'package:flutter/material.dart';
import 'package:login/colors.dart';

class RaisedGradientButton extends StatelessWidget {
  final Widget child;
  final Function()? onPressed;
  const RaisedGradientButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        width: double.infinity,
        height: 40.0,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(40.0)),
          gradient: ColorUtils.appBarGradient,
        ),
        child: InkWell(
          child: Center(
            child: child,
          ),
        ));
  }
}

class Mediabuttons extends StatelessWidget {
  const Mediabuttons({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: MaterialButton(
            color: const Color(0xFF1DA1F2),
            onPressed: () {},
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            child: Icon(
              icon,
              color: const Color(0xFF090909),
              size: 35,
            )),
      ),
    );
  }
}

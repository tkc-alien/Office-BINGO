import 'package:flutter/material.dart';
import 'package:office_bingo/const/view/app_materials.dart';

class ShadowedButton extends StatelessWidget {
  const ShadowedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(40)),
        boxShadow: [
          // BoxShadow(
          //   color: Colors.blue,
          //   spreadRadius: 2,
          // ),
          AppMaterials.shadowOnScaffold,
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}

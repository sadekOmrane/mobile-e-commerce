import 'package:flutter/material.dart';

class LinkWidget extends StatelessWidget {
  final String label;
  final String path;
  const LinkWidget({super.key, required this.label, required this.path});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, path);
          },
          child: Text(label,
              style: TextStyle(
                decoration: TextDecoration.underline,
              )),
        ),
      ],
    );
  }
}

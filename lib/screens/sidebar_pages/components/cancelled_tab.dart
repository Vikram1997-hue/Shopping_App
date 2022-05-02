import 'package:flutter/material.dart';

class CancelledTab extends StatelessWidget {
  const CancelledTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Orders that are cancelled will appear here"),
    );
  }
}

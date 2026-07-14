import 'package:flutter/material.dart';

class StarredScreen extends StatelessWidget {
  const StarredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Starred Repositories')),
      body: const Center(child: Text('Starred Repositories Screen')),
    );
  }
}

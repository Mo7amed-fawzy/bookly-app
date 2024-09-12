import 'package:flutercoursetwo/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SeacrchView extends StatelessWidget {
  const SeacrchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}

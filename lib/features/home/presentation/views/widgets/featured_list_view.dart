import 'package:flutercoursetwo/features/home/presentation/views/widgets/custom_list_view_intem.dart';
import 'package:flutter/material.dart';

class FeatureBoxListView extends StatelessWidget {
  const FeatureBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        // mainAxisSize:
        //     MainAxisSize.min, //عشان تضمن ان الكولمن ياخد مساحة العنصر فقط
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: CustomListViewItem(),
                );
              },
            ),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

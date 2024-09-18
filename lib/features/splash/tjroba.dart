import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SkeletonizedPage(),
      ),
    );
  }
}

class SkeletonizedPage extends StatelessWidget {
  const SkeletonizedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Skeletonizer(
        enabled: true,
        // استخدم الخصائص المناسبة هنا
        child: CustomListView(
          list: getDummyList(), // استبدل بالبيانات الفعلية
        ),
        // يمكنك تحديد خيارات التكوين المناسبة هنا إذا كانت موجودة
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  const CustomItem({super.key, required this.data});

  final CustomModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        title: Text(data.title),
        subtitle: Text(data.subtitle),
        leading: Icon(data.icon),
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.list});

  final List<CustomModel> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 16),
          child: CustomItem(data: list[index]),
        );
      },
    );
  }
}

class CustomModel {
  final String title;
  final String subtitle;
  final IconData icon;

  CustomModel({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}

List<CustomModel> getDummyList() {
  return [
    CustomModel(title: 'Title 1', subtitle: 'Subtitle 1', icon: Icons.abc),
    CustomModel(title: 'Title 2', subtitle: 'Subtitle 2', icon: Icons.abc),
    CustomModel(title: 'Title 3', subtitle: 'Subtitle 3', icon: Icons.abc),
    CustomModel(title: 'Title 4', subtitle: 'Subtitle 4', icon: Icons.abc),
  ];
}

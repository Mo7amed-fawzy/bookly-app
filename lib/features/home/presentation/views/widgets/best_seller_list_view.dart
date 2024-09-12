import 'package:flutercoursetwo/features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});
  // هعمل كوستوم سكرولفيو وبتعتمد علي حاجه اسمها سليفرز الهي بتخلي مجموعة ويدجتس تسكرول مع بعض

  @override
  Widget build(BuildContext context) {
    return SliverList(
      // دا احسن حاجه تستعملها لليستس العاوزه سكرول
      // ودي البقول بيها هسكرول ف ايه
      // SliverChildListDelegate كان في دي برضه بس دي للحجات الصغيره المحدوده
      delegate: SliverChildBuilderDelegate(
        // مسؤول عن بناء العناصر الخاصة بالـ سليفر بطريقة ديناميكية الهي طريقة بنا العناصر وبتبني الفلشاشه بس
        childCount: 10, // عدد العناصر
        (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookSliverListItem(),
          );
        },
      ),
    );
  }
}
// كود ثروت سامي القديم
    // شلت هنا اكسبانديد عشان مينفعش يكون في 2 اسبانديد
//     return ListView.builder(
//       // بتبني الويدجيتس البتظهر علي السكرين عشان كدا الهايت بتاعها بياكسباند براحتو ولكن استعملت شرنك راب بتروو عشان تقدر تحدد الارتفاع بتاعها وبتالي استعملت فيزكس نوتسكرولابل واحطها جوا حاجه بتسكرول
//       // shrinkWrap: true, // عاوزك تاخد الهايت بتاع التشيلدرن بتوعك
//       physics:
//           const NeverScrollableScrollPhysics(), // هنا مربط الفرس بخليها متسكرولش
//       padding: EdgeInsets.zero, // بشيل البادنج الديفولت
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return const Padding(
//           padding: EdgeInsets.symmetric(vertical: 10),
//           child: BestSallerListViewItem(),
//         );
//       },
//     );
//   }
// }

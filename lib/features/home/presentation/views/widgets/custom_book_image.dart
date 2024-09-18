// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutercoursetwo/features/home/presentation/manager/cubit/image_switcher_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.imageUrl, this.onPressed});

  final String imageUrl;
  final VoidCallback? onPressed; // إضافة onPressed كـ Callback اختياري

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ImageLoadingCubit()..loadData(), // استدعاء loadData
      child: BlocConsumer<ImageLoadingCubit, ImageLoadingState>(
        listener: (context, state) {
          if (state is ImageLoadingSuccess) {
            //   print('Data loaded successfully!');
          }
        },
        builder: (context, state) {
          bool isLoading = state is ImageLoadingInProgress;

          return ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: AspectRatio(
              aspectRatio: 2.7 / 4,
              child: Stack(
                children: [
                  // تأثير التحميل للصورة فقط
                  Skeletonizer(
                    enabled: isLoading,
                    // child: CachedNetworkImage(
                    //   fit: BoxFit.fill,
                    //   imageUrl: '',
                    //   errorWidget: (context, url, error) =>
                    //       const Icon(Icons.broken_image),
                    // ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(imageUrl),
                        ),
                      ),
                    ),
                  ),
                  if (onPressed != null)
                    // تأثير التحميل للزر فقط
                    Positioned(
                      bottom: 10,
                      right: 3,
                      child: Skeletonizer(
                        enabled: isLoading, // تأثير التحميل على الزر
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: isLoading
                                ? Colors.grey[300] // خلفية رمادية عند التحميل
                                : Colors.white.withOpacity(
                                    0.7), // خلفية شفافة بعد التحميل
                            shape: const CircleBorder(),
                            padding: const EdgeInsets.all(14),
                          ),
                          onPressed: isLoading
                              ? null // بوقف الزرار اثناء التحميل
                              : () {}, // لما التحميل يخلص اعملي كذا
                          child: const Icon(
                            FontAwesomeIcons.caretRight,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

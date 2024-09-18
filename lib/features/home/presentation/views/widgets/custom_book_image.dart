import 'package:flutercoursetwo/features/home/presentation/manager/cubit/image_switcher_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({
    super.key,
    required this.imageUrl,
    this.onPressed,
  });

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

          return AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Stack(
              children: [
                Skeletonizer(
                  enabled: isLoading,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        fit: BoxFit.fill, image: NetworkImage(imageUrl),
                        // استبدال بالصورة الافتراضية
                      ),
                    ),
                    child: imageUrl.isEmpty
                        ? const Center(
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey,
                              size: 50,
                            ),
                          )
                        : null,
                  ),
                ),
                if (onPressed != null)
                  Positioned(
                    bottom: 10,
                    right: 3,
                    child: Skeletonizer(
                      enabled: isLoading,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isLoading
                              ? Colors.grey[300]
                              : Colors.white.withOpacity(0.7),
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(14),
                        ),
                        onPressed: isLoading ? null : onPressed,
                        child: const Icon(
                          FontAwesomeIcons.caretRight,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

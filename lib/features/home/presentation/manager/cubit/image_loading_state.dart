part of 'image_switcher_cubit_cubit.dart'; // يجب أن يكون التوجيه الوحيد

abstract class ImageLoadingState {}

class ImageLoadingInitial extends ImageLoadingState {}

class ImageLoadingInProgress extends ImageLoadingState {}

class ImageLoadingSuccess extends ImageLoadingState {}

// إذا كنت تحتاج Equatable في هذا الملف، استخدمه فقط في الملف الرئيسي

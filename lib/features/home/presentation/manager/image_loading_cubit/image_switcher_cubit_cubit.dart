import 'package:bloc/bloc.dart';

part 'image_loading_state.dart'; // تأكد من استيراد ملف الحالة

class ImageLoadingCubit extends Cubit<ImageLoadingState> {
  ImageLoadingCubit() : super(ImageLoadingInitial());

  Future loadData() async {
    emit(ImageLoadingInProgress()); // تعيين حالة التحميل
    await Future.delayed(const Duration(seconds: 1)); // محاكاة تحميل البيانات
    emit(ImageLoadingSuccess()); // تعيين حالة النجاح بعد التحميل
  }
}

import 'package:get/get.dart';

class CategorySelectionController extends GetxController {
  final RxString selectedCategory = ''.obs;

  void categorySelect(String value) {
    selectedCategory.value = value;
  }
}

import 'package:bite/Models/category_model.dart';
import 'package:bite/firebase_conn.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late Future<void> categorydata;
  RxList<CategoryModel> categorylist = <CategoryModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    categorydata = fetchcategories();
  }

  Future<void> fetchcategories() async {
    final db = FirebaseConn().database('Categories');
    final snapshot = await db.get();
    categorylist.clear();
    for (var doc in snapshot.docs) {
      final category = CategoryModel.fromJson(
        doc.data() as Map<String, dynamic>,
      );
      categorylist.add(category);
    }
  }
}

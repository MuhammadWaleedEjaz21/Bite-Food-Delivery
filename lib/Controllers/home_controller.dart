import 'package:bite/Models/category_model.dart';
import 'package:bite/firebase_conn.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late final data;
  @override
  void onInit() {
    super.onInit();
    data = fetchCategories();
  }

  Future<List<CategoryModel>> fetchCategories() async {
    final db = FirebaseConn().database('Categories');
    final snapshot = await db.get();
    final List<CategoryModel> categories = [];
    if (snapshot.docs.isNotEmpty) {
      for (var doc in snapshot.docs) {
        categories.add(
          CategoryModel.fromJson(doc.data() as Map<String, dynamic>),
        );
      }
    } else {
      print('No categories found');
    }
    return categories;
  }
}

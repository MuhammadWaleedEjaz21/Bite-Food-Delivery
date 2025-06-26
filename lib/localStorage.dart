import 'package:bite/Models/category_model.dart';
import 'package:bite/firebase_conn.dart';

class Localstorage {
  List<CategoryModel> localCategories = [
    CategoryModel(
      name: 'Burger',
      imageUrl: 'assets/images/categories/Burger.jpg',
    ),
    CategoryModel(
      name: 'Pizza',
      imageUrl: 'assets/images/categories/Pizza.jpg',
    ),
    CategoryModel(
      name: 'Pakistani',
      imageUrl: 'assets/images/categories/Pakistani.jpg',
    ),
    CategoryModel(
      name: 'Chinese',
      imageUrl: 'assets/images/categories/Chinese.jpg',
    ),
    CategoryModel(
      name: 'Ice Cream & Shake',
      imageUrl: 'assets/images/categories/IceCream.jpg',
    ),
    CategoryModel(
      name: 'Cake & Dessert',
      imageUrl: 'assets/images/categories/Cake.jpg',
    ),
  ];

  var db = FirebaseConn().database('Categories');
  Future<void> addData() async {
    for (var category in localCategories) {
      await db.doc(category.name).set(category.toJson());
    }
  }
}

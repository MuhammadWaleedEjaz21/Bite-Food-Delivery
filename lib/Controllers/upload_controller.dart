import 'dart:convert';

import 'package:bite_food_delivery/Controllers/firebase_controller.dart';
import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UploadController extends GetxController {
  List<RestaurantModel> restaurantsData = [
    RestaurantModel(
      name: 'KFC',
      category: 'Burger',
      imageUrl: 'assets/images/kfc.jpg',
      rating: 4.8,
      delivery: 50,
      time: 60,
    ),
    RestaurantModel(
      name: "McDonald's",
      category: 'Burger',
      imageUrl: 'assets/images/mcdonalds.jpg',
      rating: 4.5,
      delivery: 50,
      time: 25,
    ),
    RestaurantModel(
      name: 'Belly Deli Burgers',
      category: 'Burger',
      imageUrl: 'assets/images/bellydeli.jpg',
      rating: 4.3,
      delivery: 79,
      time: 45,
    ),
    RestaurantModel(
      name: 'Midtown Foods',
      category: 'Burger',
      imageUrl: 'assets/images/midtown.jpg',
      rating: 3.9,
      delivery: 50,
      time: 40,
    ),
    RestaurantModel(
      name: 'Kababjees Fried Chicken',
      category: 'Burger',
      imageUrl: 'assets/images/kababjees.jpg',
      rating: 4.8,
      delivery: 49,
      time: 30,
    ),
  ];

  Future<void> uploadData() async {
    for (var item in restaurantsData) {
      try {
        final byteData = await rootBundle.load(item.imageUrl);
        final byte = byteData.buffer.asUint8List();

        final cloudname = 'dooej7wa6';
        final uploadPreset = 'waleed';
        final folder = 'Restaurants';

        final uri = Uri.parse(
          'https://api.cloudinary.com/v1_1/$cloudname/image/upload',
        );
        final request = http.MultipartRequest('POST', uri)
          ..fields['upload_preset'] = uploadPreset
          ..fields['folder'] = folder
          ..files.add(
            http.MultipartFile.fromBytes('file', byte, filename: item.name),
          );

        final response = await request.send();
        final resBody = await response.stream.bytesToString();

        if (response.statusCode != 200 && response.statusCode != 201) {
          print('❌ Upload failed for ${item.name}: $resBody');
          continue;
        }

        final data = jsonDecode(resBody);
        final imageUrl = data['secure_url'];

        final restaurant = RestaurantModel(
          name: item.name,
          category: item.category,
          imageUrl: imageUrl,
          rating: item.rating,
          delivery: item.delivery,
          time: item.time,
        );

        final db = FirebaseController.database('Restaurants');
        await db.doc(restaurant.name).set(restaurant.toJson());

        print('✅ Uploaded ${item.name}');
      } catch (e) {
        print('⚠️ Error uploading ${item.name}: $e');
      }
    }
  }
}

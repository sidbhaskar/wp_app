import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:wp_app/models/photos_model.dart';

class ApiOperations {
  static List<PhotosModel> trendingWallpapers = [];
  static Future<List<PhotosModel>> getTrendingWallpaper() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization":
          "yLFCCQHpFzOoOQlliivJAEyaR6p1ov3gTU2oiHHukuwxhdxomOOcHwzr"
    }).then(
      (value) {
        Map<String, dynamic> jsonData = jsonDecode(value.body);
        List photos = jsonData['photos'];
        photos.forEach(
          (element) {
            // print(element);
            trendingWallpapers.add(PhotosModel.fromAPI2App(element));
          },
        );
      },
    );
    return trendingWallpapers;
  }
}

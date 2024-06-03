import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiOperations {
  static getTrendingWallpaper() async {
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
            Map<String, dynamic> src = element['src'];
            print(src['portrait']);
          },
        );
      },
    );
  }
}

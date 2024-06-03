import 'package:http/http.dart' as http;

class ApiOperations {
  static getTrendingWallpaper() async {
    await http.get(Uri.parse("https://api.pexels.com/v1/curated"), headers: {
      "Authorization":
          "yLFCCQHpFzOoOQlliivJAEyaR6p1ov3gTU2oiHHukuwxhdxomOOcHwzr"
    }).then(
      (value) {
        print(value.body[0]);
      },
    );
  }
}

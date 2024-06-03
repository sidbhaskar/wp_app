// ignore_for_file: public_member_api_docs, sort_constructors_first
class PhotosModel {
  String imgSrc;
  String photoName;
  PhotosModel({required this.imgSrc, required this.photoName});

  static PhotosModel fromAPI2App(Map<String, dynamic> photoMap) {
    return PhotosModel(
        imgSrc: photoMap['photographer'],
        photoName: (photoMap['src'])["portrait"]);
  }
}

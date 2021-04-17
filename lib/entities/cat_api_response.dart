// Example Response : 
//     {
//         "url":"https://i.thatcopy.pw/cat/S8erXAD.jpg", 
//         "webpurl": "https://i.thatcopy.pw/cat-webp/S8erXAD.webp", 
//         "id":14
//     }
// 

class CatApiResponse {
  final String url;
  final String webpurl;
  final int id;

  CatApiResponse({
    required this.url,
    required this.webpurl,
    required this.id,
  });

  factory CatApiResponse.fromJson(Map<String, dynamic> data) {
    return CatApiResponse(
      id: data["id"] ?? 0,
      url: data["url"] ?? "",
      webpurl: data["webpurl"] ?? "",
    );
  }
}

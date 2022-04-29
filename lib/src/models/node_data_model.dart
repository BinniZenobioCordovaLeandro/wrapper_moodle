import 'dart:convert';

class NodeDataModel {
  String? title;
  String? description;
  String? date;
  String? datetime;
  String? url;
  String? urlVideo;
  String? urlImage;

  NodeDataModel({
    this.title,
    this.description,
    this.date,
    this.datetime,
    this.url,
    this.urlVideo,
    this.urlImage,
  });

  @override
  String toString() {
    return 'NodeDataModel(title: $title, description: $description, date: $date, datetime: $datetime, url: $url, urlVideo: $urlVideo, urlImage: $urlImage)';
  }

  factory NodeDataModel.fromMap(Map<String, dynamic> data) => NodeDataModel(
        title: data['title'] as String?,
        description: data['description'] as String?,
        date: data['date'] as String?,
        datetime: data['datetime'] as String?,
        url: data['url'] as String?,
        urlVideo: data['url_video'] as String?,
        urlImage: data['url_image'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'title': title,
        'description': description,
        'date': date,
        'datetime': datetime,
        'url': url,
        'url_video': urlVideo,
        'url_image': urlImage,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NodeDataModel].
  factory NodeDataModel.fromJson(String data) {
    return NodeDataModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NodeDataModel] to a JSON string.
  String toJson() => json.encode(toMap());

  NodeDataModel copyWith({
    String? title,
    String? description,
    String? date,
    String? datetime,
    String? url,
    String? urlVideo,
    String? urlImage,
  }) {
    return NodeDataModel(
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      datetime: datetime ?? this.datetime,
      url: url ?? this.url,
      urlVideo: urlVideo ?? this.urlVideo,
      urlImage: urlImage ?? this.urlImage,
    );
  }
}

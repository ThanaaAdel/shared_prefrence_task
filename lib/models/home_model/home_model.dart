import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'data')
  Data? data;
  String? message;
  int? code;

  HomeModel({this.data, this.message, this.code});

  factory HomeModel.fromJson(Map<String, dynamic> json) => _$HomeModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: 'life_exam')
  String? lifeExam;
  @JsonKey(name: 'live_model')
  String? liveModel;
  @JsonKey(name: 'notification_count')
  int? notificationCount;
  @JsonKey(name: 'center_status')
  String? centerStatus;
  @JsonKey(name: 'language_active')
  String? languageActive;
  List<Sliders>? sliders;
  @JsonKey(name: 'videos_basics')
  List<VideosBasics>? videosBasics;
  List<Classes>? classes;
  @JsonKey(name: 'videos_resources')
  List<VideosResources>? videosResources;

  Data({
    this.lifeExam,
    this.liveModel,
    this.notificationCount,
    this.centerStatus,
    this.languageActive,
    this.sliders,
    this.videosBasics,
    this.classes,
    this.videosResources,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Sliders {
  int? id;
  String? file;
  String? type;
  String? link;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  Sliders({
    this.id,
    this.file,
    this.type,
    this.link,
    this.createdAt,
    this.updatedAt,
  });

  factory Sliders.fromJson(Map<String, dynamic> json) => _$SlidersFromJson(json);
  Map<String, dynamic> toJson() => _$SlidersToJson(this);
}

@JsonSerializable()
class VideosBasics {
  final int id;
  final String name;
  final String time;
  final int size;
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @JsonKey(name: 'video_link')
  final String videoLink;
  @JsonKey(name: 'is_youtube')
  final int isYoutube;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  VideosBasics({
    required this.id,
    required this.name,
    required this.time,
    required this.size,
    required this.backgroundColor,
    required this.videoLink,
    required this.isYoutube,
    required this.createdAt,
    required this.updatedAt,
  });

  factory VideosBasics.fromJson(Map<String, dynamic> json) => _$VideosBasicsFromJson(json);
  Map<String, dynamic> toJson() => _$VideosBasicsToJson(this);

}

@JsonSerializable()
class Classes {
  final int id;
  final String status;
  final String image;
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  final String title;
  final String name;
  @JsonKey(name: 'total_watch')
  final double totalWatch;
  @JsonKey(name: 'num_of_lessons')
  final int numOfLessons;
  @JsonKey(name: 'num_of_videos')
  final int numOfVideos;
  @JsonKey(name: 'total_times')
  final int totalTimes;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  final List<Exams>? exams;

  Classes({
    required this.id,
    required this.status,
    required this.image,
    required this.backgroundColor,
    required this.title,
    required this.name,
    required this.totalWatch,
    required this.numOfLessons,
    required this.numOfVideos,
    required this.totalTimes,
    required this.createdAt,
    required this.updatedAt,
    this.exams,
  });

  factory Classes.fromJson(Map<String, dynamic> json) => _$ClassesFromJson(json);
  Map<String, dynamic> toJson() => _$ClassesToJson(this);

}

@JsonSerializable()
class Exams {
  final int id;
  final String name;
  final String type;
  @JsonKey(name: 'exam_type')
  final String examType;
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  @JsonKey(name: 'exams_favorite')
  final String examsFavorite;
  @JsonKey(name: 'pdf_exam_upload')
  final String pdfExamUpload;
  @JsonKey(name: 'answer_pdf_file')
  final String answerPdfFile;
  @JsonKey(name: 'answer_video_file')
  final String? answerVideoFile;
  @JsonKey(name: 'answer_video_is_youtube')
  final int? answerVideoIsYoutube;
  @JsonKey(name: 'num_of_question')
  final int numOfQuestion;
  @JsonKey(name: 'total_time')
  final int totalTime;
  @JsonKey(name: 'exam_pdf_size')
  final int examPdfSize;
  @JsonKey(name: 'answer_pdf_size')
  final int answerPdfSize;
  @JsonKey(name: 'answer_video_size')
  final int answerVideoSize;

  Exams({
    required this.id,
    required this.name,
    required this.type,
    required this.examType,
    required this.backgroundColor,
    required this.examsFavorite,
    required this.pdfExamUpload,
    required this.answerPdfFile,
    required this.answerVideoFile,
    required this.answerVideoIsYoutube,
    required this.numOfQuestion,
    required this.totalTime,
    required this.examPdfSize,
    required this.answerPdfSize,
    required this.answerVideoSize,
  });

  factory Exams.fromJson(Map<String, dynamic> json) => _$ExamsFromJson(json);
  Map<String, dynamic> toJson() => _$ExamsToJson(this);

}

@JsonSerializable()
class VideosResources {
  final int id;
  final String name;
  final String type;
  @JsonKey(name: 'background_color')
  final String backgroundColor;
  final String image;
  final dynamic  time;
  @JsonKey(name: 'path_file')
  final String pathFile;
  @JsonKey(name: 'is_youtube')
  final int isYoutube;
  final int size;
  @JsonKey(name: 'created_at')
  final String createdAt;
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  VideosResources({
    required this.time,
    required this.id,
    required this.name,
    required this.type,
    required this.backgroundColor,
    required this.image,
    required this.pathFile,
    required this.isYoutube,
    required this.size,
    required this.createdAt,
    required this.updatedAt,
  });

  factory VideosResources.fromJson(Map<String, dynamic> json) => _$VideosResourcesFromJson(json);
  Map<String, dynamic> toJson() => _$VideosResourcesToJson(this);

}

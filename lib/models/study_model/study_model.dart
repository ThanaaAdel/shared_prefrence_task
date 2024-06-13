import 'package:json_annotation/json_annotation.dart';

part 'study_model.g.dart';

@JsonSerializable()
class StudyModel {
  List<Data>? data;
  String? message;
  int? code;

  StudyModel({this.data, this.message, this.code});

  factory StudyModel.fromJson(Map<String, dynamic> json) =>
      _$StudyModelFromJson(json);
  Map<String, dynamic> toJson() => _$StudyModelToJson(this);
}

@JsonSerializable()
class Data {
  int? id;
  String? status;
  String? image;
  @JsonKey(name: 'background_color')
  String? backgroundColor;
  String? title;
  String? name;
  double? totalWatch;
  @JsonKey(name: 'num_of_lessons')
  int? numOfLessons;
  @JsonKey(name: 'num_of_videos')
  int? numOfVideos;
  @JsonKey(name: 'total_times')
  int? totalTimes;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;
  List<Exams>? exams;

  Data({
    this.id,
    this.status,
    this.image,
    this.backgroundColor,
    this.title,
    this.name,
    this.totalWatch,
    this.numOfLessons,
    this.numOfVideos,
    this.totalTimes,
    this.createdAt,
    this.updatedAt,
    this.exams,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Exams {
  int? id;
  String? name;
  String? type;
  @JsonKey(name: 'exam_type')
  String? examType;
  @JsonKey(name: 'background_color')
  String? backgroundColor;
  @JsonKey(name: 'exams_favorite')
  String? examsFavorite;
  @JsonKey(name: 'pdf_exam_upload')
  String? pdfExamUpload;
  @JsonKey(name: 'answer_pdf_file')
  String? answerPdfFile;
  @JsonKey(name: 'answer_video_file')
  String? answerVideoFile;
  @JsonKey(name: 'answer_video_is_youtube')
  int? answerVideoIsYoutube;
  @JsonKey(name: 'num_of_question')
  int? numOfQuestion;
  @JsonKey(name: 'total_time')
  int? totalTime;
  @JsonKey(name: 'exam_pdf_size')
  int? examPdfSize;
  @JsonKey(name: 'answer_pdf_size')
  int? answerPdfSize;
  @JsonKey(name: 'answer_video_size')
  int? answerVideoSize;

  Exams({
    this.id,
    this.name,
    this.type,
    this.examType,
    this.backgroundColor,
    this.examsFavorite,
    this.pdfExamUpload,
    this.answerPdfFile,
    this.answerVideoFile,
    this.answerVideoIsYoutube,
    this.numOfQuestion,
    this.totalTime,
    this.examPdfSize,
    this.answerPdfSize,
    this.answerVideoSize,
  });

  factory Exams.fromJson(Map<String, dynamic> json) => _$ExamsFromJson(json);
  Map<String, dynamic> toJson() => _$ExamsToJson(this);
}

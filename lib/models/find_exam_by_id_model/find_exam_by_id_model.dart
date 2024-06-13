import 'package:json_annotation/json_annotation.dart';
part 'find_exam_by_id_model.g.dart';

@JsonSerializable()
class FinalExamByIdModel {
  List<Data>? data;
  String? message;
  int? code;

  FinalExamByIdModel({this.data, this.message, this.code});

  factory FinalExamByIdModel.fromJson(Map<String, dynamic> json) => _$FinalExamByIdModelFromJson(json);
  Map<String, dynamic> toJson() => _$FinalExamByIdModelToJson(this);
}

@JsonSerializable()
class Data {
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

  Data({
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

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}

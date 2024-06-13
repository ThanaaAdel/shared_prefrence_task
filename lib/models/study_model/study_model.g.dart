// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudyModel _$StudyModelFromJson(Map<String, dynamic> json) => StudyModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$StudyModelToJson(StudyModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: (json['id'] as num?)?.toInt(),
      status: json['status'] as String?,
      image: json['image'] as String?,
      backgroundColor: json['background_color'] as String?,
      title: json['title'] as String?,
      name: json['name'] as String?,
      totalWatch: (json['totalWatch'] as num?)?.toDouble(),
      numOfLessons: (json['num_of_lessons'] as num?)?.toInt(),
      numOfVideos: (json['num_of_videos'] as num?)?.toInt(),
      totalTimes: (json['total_times'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      exams: (json['exams'] as List<dynamic>?)
          ?.map((e) => Exams.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'image': instance.image,
      'background_color': instance.backgroundColor,
      'title': instance.title,
      'name': instance.name,
      'totalWatch': instance.totalWatch,
      'num_of_lessons': instance.numOfLessons,
      'num_of_videos': instance.numOfVideos,
      'total_times': instance.totalTimes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'exams': instance.exams,
    };

Exams _$ExamsFromJson(Map<String, dynamic> json) => Exams(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      type: json['type'] as String?,
      examType: json['exam_type'] as String?,
      backgroundColor: json['background_color'] as String?,
      examsFavorite: json['exams_favorite'] as String?,
      pdfExamUpload: json['pdf_exam_upload'] as String?,
      answerPdfFile: json['answer_pdf_file'] as String?,
      answerVideoFile: json['answer_video_file'] as String?,
      answerVideoIsYoutube: (json['answer_video_is_youtube'] as num?)?.toInt(),
      numOfQuestion: (json['num_of_question'] as num?)?.toInt(),
      totalTime: (json['total_time'] as num?)?.toInt(),
      examPdfSize: (json['exam_pdf_size'] as num?)?.toInt(),
      answerPdfSize: (json['answer_pdf_size'] as num?)?.toInt(),
      answerVideoSize: (json['answer_video_size'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExamsToJson(Exams instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'exam_type': instance.examType,
      'background_color': instance.backgroundColor,
      'exams_favorite': instance.examsFavorite,
      'pdf_exam_upload': instance.pdfExamUpload,
      'answer_pdf_file': instance.answerPdfFile,
      'answer_video_file': instance.answerVideoFile,
      'answer_video_is_youtube': instance.answerVideoIsYoutube,
      'num_of_question': instance.numOfQuestion,
      'total_time': instance.totalTime,
      'exam_pdf_size': instance.examPdfSize,
      'answer_pdf_size': instance.answerPdfSize,
      'answer_video_size': instance.answerVideoSize,
    };

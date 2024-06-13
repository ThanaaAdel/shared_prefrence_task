// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_exam_by_id_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FinalExamByIdModel _$FinalExamByIdModelFromJson(Map<String, dynamic> json) =>
    FinalExamByIdModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FinalExamByIdModelToJson(FinalExamByIdModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
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

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
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

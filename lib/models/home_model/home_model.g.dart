// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => HomeModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeModelToJson(HomeModel instance) => <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'code': instance.code,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      lifeExam: json['life_exam'] as String?,
      liveModel: json['live_model'] as String?,
      notificationCount: (json['notification_count'] as num?)?.toInt(),
      centerStatus: json['center_status'] as String?,
      languageActive: json['language_active'] as String?,
      sliders: (json['sliders'] as List<dynamic>?)
          ?.map((e) => Sliders.fromJson(e as Map<String, dynamic>))
          .toList(),
      videosBasics: (json['videos_basics'] as List<dynamic>?)
          ?.map((e) => VideosBasics.fromJson(e as Map<String, dynamic>))
          .toList(),
      classes: (json['classes'] as List<dynamic>?)
          ?.map((e) => Classes.fromJson(e as Map<String, dynamic>))
          .toList(),
      videosResources: (json['videos_resources'] as List<dynamic>?)
          ?.map((e) => VideosResources.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'life_exam': instance.lifeExam,
      'live_model': instance.liveModel,
      'notification_count': instance.notificationCount,
      'center_status': instance.centerStatus,
      'language_active': instance.languageActive,
      'sliders': instance.sliders,
      'videos_basics': instance.videosBasics,
      'classes': instance.classes,
      'videos_resources': instance.videosResources,
    };

Sliders _$SlidersFromJson(Map<String, dynamic> json) => Sliders(
      id: (json['id'] as num?)?.toInt(),
      file: json['file'] as String?,
      type: json['type'] as String?,
      link: json['link'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$SlidersToJson(Sliders instance) => <String, dynamic>{
      'id': instance.id,
      'file': instance.file,
      'type': instance.type,
      'link': instance.link,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

VideosBasics _$VideosBasicsFromJson(Map<String, dynamic> json) => VideosBasics(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      time: json['time'] as String,
      size: (json['size'] as num).toInt(),
      backgroundColor: json['background_color'] as String,
      videoLink: json['video_link'] as String,
      isYoutube: (json['is_youtube'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$VideosBasicsToJson(VideosBasics instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'time': instance.time,
      'size': instance.size,
      'background_color': instance.backgroundColor,
      'video_link': instance.videoLink,
      'is_youtube': instance.isYoutube,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

Classes _$ClassesFromJson(Map<String, dynamic> json) => Classes(
      id: (json['id'] as num).toInt(),
      status: json['status'] as String,
      image: json['image'] as String,
      backgroundColor: json['background_color'] as String,
      title: json['title'] as String,
      name: json['name'] as String,
      totalWatch: (json['total_watch'] as num).toDouble(),
      numOfLessons: (json['num_of_lessons'] as num).toInt(),
      numOfVideos: (json['num_of_videos'] as num).toInt(),
      totalTimes: (json['total_times'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      exams: (json['exams'] as List<dynamic>?)
          ?.map((e) => Exams.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClassesToJson(Classes instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'image': instance.image,
      'background_color': instance.backgroundColor,
      'title': instance.title,
      'name': instance.name,
      'total_watch': instance.totalWatch,
      'num_of_lessons': instance.numOfLessons,
      'num_of_videos': instance.numOfVideos,
      'total_times': instance.totalTimes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'exams': instance.exams,
    };

Exams _$ExamsFromJson(Map<String, dynamic> json) => Exams(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      examType: json['exam_type'] as String,
      backgroundColor: json['background_color'] as String,
      examsFavorite: json['exams_favorite'] as String,
      pdfExamUpload: json['pdf_exam_upload'] as String,
      answerPdfFile: json['answer_pdf_file'] as String,
      answerVideoFile: json['answer_video_file'] as String?,
      answerVideoIsYoutube: (json['answer_video_is_youtube'] as num?)?.toInt(),
      numOfQuestion: (json['num_of_question'] as num).toInt(),
      totalTime: (json['total_time'] as num).toInt(),
      examPdfSize: (json['exam_pdf_size'] as num).toInt(),
      answerPdfSize: (json['answer_pdf_size'] as num).toInt(),
      answerVideoSize: (json['answer_video_size'] as num).toInt(),
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

VideosResources _$VideosResourcesFromJson(Map<String, dynamic> json) =>
    VideosResources(
      time: json['time'],
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      type: json['type'] as String,
      backgroundColor: json['background_color'] as String,
      image: json['image'] as String,
      pathFile: json['path_file'] as String,
      isYoutube: (json['is_youtube'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$VideosResourcesToJson(VideosResources instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'background_color': instance.backgroundColor,
      'image': instance.image,
      'time': instance.time,
      'path_file': instance.pathFile,
      'is_youtube': instance.isYoutube,
      'size': instance.size,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

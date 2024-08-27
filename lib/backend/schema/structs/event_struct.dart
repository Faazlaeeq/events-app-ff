// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventStruct extends BaseStruct {
  EventStruct({
    LocationStruct? location,
    String? category,
    List<String>? eventImages,
    String? refundPolicy,
    bool? isActive,
    String? id,
    String? title,
    String? description,
    String? date,
    String? startTime,
    String? endTime,
    String? coverImage,
    String? createdAt,
    String? updatedAt,
  })  : _location = location,
        _category = category,
        _eventImages = eventImages,
        _refundPolicy = refundPolicy,
        _isActive = isActive,
        _id = id,
        _title = title,
        _description = description,
        _date = date,
        _startTime = startTime,
        _endTime = endTime,
        _coverImage = coverImage,
        _createdAt = createdAt,
        _updatedAt = updatedAt;

  // "location" field.
  LocationStruct? _location;
  LocationStruct get location => _location ?? LocationStruct();
  set location(LocationStruct? val) => _location = val;

  void updateLocation(Function(LocationStruct) updateFn) {
    updateFn(_location ??= LocationStruct());
  }

  bool hasLocation() => _location != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;

  bool hasCategory() => _category != null;

  // "eventImages" field.
  List<String>? _eventImages;
  List<String> get eventImages => _eventImages ?? const [];
  set eventImages(List<String>? val) => _eventImages = val;

  void updateEventImages(Function(List<String>) updateFn) {
    updateFn(_eventImages ??= []);
  }

  bool hasEventImages() => _eventImages != null;

  // "refundPolicy" field.
  String? _refundPolicy;
  String get refundPolicy => _refundPolicy ?? '';
  set refundPolicy(String? val) => _refundPolicy = val;

  bool hasRefundPolicy() => _refundPolicy != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  set isActive(bool? val) => _isActive = val;

  bool hasIsActive() => _isActive != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  set date(String? val) => _date = val;

  bool hasDate() => _date != null;

  // "startTime" field.
  String? _startTime;
  String get startTime => _startTime ?? '';
  set startTime(String? val) => _startTime = val;

  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  String? _endTime;
  String get endTime => _endTime ?? '';
  set endTime(String? val) => _endTime = val;

  bool hasEndTime() => _endTime != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  set coverImage(String? val) => _coverImage = val;

  bool hasCoverImage() => _coverImage != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  String? _updatedAt;
  String get updatedAt => _updatedAt ?? '';
  set updatedAt(String? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static EventStruct fromMap(Map<String, dynamic> data) => EventStruct(
        location: LocationStruct.maybeFromMap(data['location']),
        category: data['category'] as String?,
        eventImages: getDataList(data['eventImages']),
        refundPolicy: data['refundPolicy'] as String?,
        isActive: data['isActive'] as bool?,
        id: data['id'] as String?,
        title: data['title'] as String?,
        description: data['description'] as String?,
        date: data['date'] as String?,
        startTime: data['startTime'] as String?,
        endTime: data['endTime'] as String?,
        coverImage: data['coverImage'] as String?,
        createdAt: data['createdAt'] as String?,
        updatedAt: data['updatedAt'] as String?,
      );

  static EventStruct? maybeFromMap(dynamic data) =>
      data is Map ? EventStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'location': _location?.toMap(),
        'category': _category,
        'eventImages': _eventImages,
        'refundPolicy': _refundPolicy,
        'isActive': _isActive,
        'id': _id,
        'title': _title,
        'description': _description,
        'date': _date,
        'startTime': _startTime,
        'endTime': _endTime,
        'coverImage': _coverImage,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'location': serializeParam(
          _location,
          ParamType.DataStruct,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'eventImages': serializeParam(
          _eventImages,
          ParamType.String,
          isList: true,
        ),
        'refundPolicy': serializeParam(
          _refundPolicy,
          ParamType.String,
        ),
        'isActive': serializeParam(
          _isActive,
          ParamType.bool,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'date': serializeParam(
          _date,
          ParamType.String,
        ),
        'startTime': serializeParam(
          _startTime,
          ParamType.String,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.String,
        ),
        'coverImage': serializeParam(
          _coverImage,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static EventStruct fromSerializableMap(Map<String, dynamic> data) =>
      EventStruct(
        location: deserializeStructParam(
          data['location'],
          ParamType.DataStruct,
          false,
          structBuilder: LocationStruct.fromSerializableMap,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        eventImages: deserializeParam<String>(
          data['eventImages'],
          ParamType.String,
          true,
        ),
        refundPolicy: deserializeParam(
          data['refundPolicy'],
          ParamType.String,
          false,
        ),
        isActive: deserializeParam(
          data['isActive'],
          ParamType.bool,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.String,
          false,
        ),
        startTime: deserializeParam(
          data['startTime'],
          ParamType.String,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.String,
          false,
        ),
        coverImage: deserializeParam(
          data['coverImage'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'EventStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is EventStruct &&
        location == other.location &&
        category == other.category &&
        listEquality.equals(eventImages, other.eventImages) &&
        refundPolicy == other.refundPolicy &&
        isActive == other.isActive &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        coverImage == other.coverImage &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        location,
        category,
        eventImages,
        refundPolicy,
        isActive,
        id,
        title,
        description,
        date,
        startTime,
        endTime,
        coverImage,
        createdAt,
        updatedAt
      ]);
}

EventStruct createEventStruct({
  LocationStruct? location,
  String? category,
  String? refundPolicy,
  bool? isActive,
  String? id,
  String? title,
  String? description,
  String? date,
  String? startTime,
  String? endTime,
  String? coverImage,
  String? createdAt,
  String? updatedAt,
}) =>
    EventStruct(
      location: location ?? LocationStruct(),
      category: category,
      refundPolicy: refundPolicy,
      isActive: isActive,
      id: id,
      title: title,
      description: description,
      date: date,
      startTime: startTime,
      endTime: endTime,
      coverImage: coverImage,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );

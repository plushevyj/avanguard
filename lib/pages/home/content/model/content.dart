import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'content.freezed.dart';

part 'content.g.dart';

@Freezed()
// ignore: prefer-match-file-name
class SectionWrapper with _$SectionWrapper {
  const factory SectionWrapper({required Section section}) = _SectionWrapper;

  factory SectionWrapper.fromJson(Map<String, dynamic> json) =>
      _$SectionWrapperFromJson(json);
}

@Freezed()
class Section with _$Section {
  const factory Section({
    required String name,
    required String slug,
    required List<Content> materials,
    required int count,
  }) = _Section;

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}

@Freezed()
class Content with _$Content {
  const factory Content({
    required String id,
    required String name,
    required List<Group>? groups,
    required List<School>? schools,
    required List<Tag>? tags,
    required String? description,
    required Author author,
    required Category category,
    required ContentType type,
    required HockeyRole? hockeyRole,
    required String? link,
    required Storage? storage,
    required List<MemberRole>? memberRoles,
    required List<Student>? students,
    required List<Teacher>? teachers,
    required String createdAt,
    required bool isNew,
    required bool canEdit,
    required bool canDelete,
  }) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@Freezed()
class Group with _$Group {
  const factory Group({required String name, required String id}) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@Freezed()
class School with _$School {
  const factory School({required String name, required String id}) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}

@Freezed()
class Tag with _$Tag {
  const factory Tag({required String name, required String slug}) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}

@Freezed()
class Author with _$Author {
  const factory Author({required String id, required String name}) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@Freezed()
class Category with _$Category {
  const factory Category({
    required String name,
    required String slug,
    required List<Tag> tags,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@Freezed()
class ContentType with _$ContentType {
  const factory ContentType({
    required String name,
    required String slug,
    required List<Category> categories,
    required bool canHaveFile,
    required bool canHaveLink,
    required bool canHaveVideo,
  }) = _ContentType;

  factory ContentType.fromJson(Map<String, dynamic> json) =>
      _$ContentTypeFromJson(json);
}

@Freezed()
class HockeyRole with _$HockeyRole {
  const factory HockeyRole({
    required String name,
    required String slug,
  }) = _HockeyRole;

  factory HockeyRole.fromJson(Map<String, dynamic> json) =>
      _$HockeyRoleFromJson(json);
}

@Freezed()
class Storage with _$Storage {
  const factory Storage({
    required String id,
    required String originalName,
    required String mimetype,
    required int size,
    required String link,
    required String key,
  }) = _Storage;

  factory Storage.fromJson(Map<String, dynamic> json) =>
      _$StorageFromJson(json);
}

@Freezed()
class MemberRole with _$MemberRole {
  const factory MemberRole({
    required String name,
    required String userRole,
  }) = _MemberRole;

  factory MemberRole.fromJson(Map<String, dynamic> json) =>
      _$MemberRoleFromJson(json);
}

@Freezed()
class Student with _$Student {
  const factory Student({required String id, required String name}) = _Student;

  factory Student.fromJson(Map<String, dynamic> json) =>
      _$StudentFromJson(json);
}

@Freezed()
class Teacher with _$Teacher {
  const factory Teacher({required String id, required String name}) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}

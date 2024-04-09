import '../../../pages/home/stats/stats_players/model/student.dart';
import '../../account/model/school.dart';

class Videos {
  int? pages;
  int? count;
  List<Content>? materials;

  Videos({this.pages, this.count, this.materials});

  Videos.fromJson(Map<String, dynamic> json) {
    pages = json['pages'];
    count = json['count'];
    if (json['materials'] != null) {
      materials = <Content>[];
      json['materials'].forEach((v) {
        materials!.add(Content.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['pages'] = pages;
    data['count'] = count;
    if (materials != null) {
      data['materials'] = materials!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Content {
  String? id;
  String? name;
  List<Groups>? groups;
  List<School>? schools;
  List<Tags>? tags;
  String? description;
  Groups? author;
  Category? category;
  Type? type;
  Tags? hockeyRole;
  String? link;
  Storage? storage;
  List<MemberRoles>? memberRoles;
  List<Student>? students;
  List<Teacher>? teachers;
  String? createdAt;
  bool? isNew;
  bool? canEdit;
  bool? canDelete;

  Content({
    this.id,
    this.name,
    this.groups,
    this.schools,
    this.tags,
    this.description,
    this.author,
    this.category,
    this.type,
    this.hockeyRole,
    this.link,
    this.storage,
    this.memberRoles,
    this.students,
    this.teachers,
    this.createdAt,
    this.isNew,
    this.canEdit,
    this.canDelete,
  });

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    if (json['groups'] != null) {
      groups = <Groups>[];
      json['groups'].forEach((v) {
        groups!.add(Groups.fromJson(v));
      });
    }
    if (json['schools'] != null) {
      schools = <School>[];
      json['schools'].forEach((v) {
        schools!.add(School.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    description = json['description'];
    author = json['author'] != null ? Groups.fromJson(json['author']) : null;
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
    type = json['type'] != null ? Type.fromJson(json['type']) : null;
    hockeyRole =
        json['hockeyRole'] != null ? Tags.fromJson(json['hockeyRole']) : null;
    link = json['link'];
    storage =
        json['storage'] != null ? Storage.fromJson(json['storage']) : null;
    if (json['memberRoles'] != null) {
      memberRoles = <MemberRoles>[];
      json['memberRoles'].forEach((v) {
        memberRoles!.add(MemberRoles.fromJson(v));
      });
    }
    if (json['students'] != null) {
      students = <Student>[];
      json['students'].forEach((v) {
        students!.add(Student.fromJson(v));
      });
    }
    if (json['teachers'] != null) {
      teachers = <Teacher>[];
      json['teachers'].forEach((v) {
        teachers!.add(Teacher.fromJson(v));
      });
    }
    createdAt = json['createdAt'];
    isNew = json['isNew'];
    canEdit = json['canEdit'];
    canDelete = json['canDelete'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    if (groups != null) {
      data['groups'] = groups!.map((v) => v.toJson()).toList();
    }
    if (schools != null) {
      data['schools'] = schools!.map((v) => v.toJson()).toList();
    }
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    data['description'] = description;
    if (author != null) {
      data['author'] = author!.toJson();
    }
    if (category != null) {
      data['category'] = category!.toJson();
    }
    if (type != null) {
      data['type'] = type!.toJson();
    }
    if (hockeyRole != null) {
      data['hockeyRole'] = hockeyRole!.toJson();
    }
    data['link'] = link;
    if (storage != null) {
      data['storage'] = storage!.toJson();
    }
    if (memberRoles != null) {
      data['memberRoles'] = memberRoles!.map((v) => v.toJson()).toList();
    }
    if (students != null) {
      data['students'] = students!.map((v) => v.toJson()).toList();
    }
    if (teachers != null) {
      data['teachers'] = teachers!.map((v) => v.toJson()).toList();
    }
    data['createdAt'] = createdAt;
    data['isNew'] = isNew;
    data['canEdit'] = canEdit;
    data['canDelete'] = canDelete;
    return data;
  }
}

class Groups {
  String? name;
  String? id;

  Groups({this.name, this.id});

  Groups.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}

class Tags {
  String? name;
  String? slug;

  Tags({this.name, this.slug});

  Tags.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slug'] = slug;
    return data;
  }
}

class Teacher {
  final String id;
  final String name;

  const Teacher({required this.id, required this.name});

  Teacher.fromJson(json)
      : id = json['id'],
        name = json['name'];

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

class Category {
  String? name;
  String? slug;
  List<Tags>? tags;

  Category({this.name, this.slug, this.tags});

  Category.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slug'] = slug;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Type {
  String? name;
  String? slug;
  List<Category>? categories;
  bool? canHaveFile;
  bool? canHaveLink;
  bool? canHaveVideo;

  Type({
    this.name,
    this.slug,
    this.categories,
    this.canHaveFile,
    this.canHaveLink,
    this.canHaveVideo,
  });

  Type.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    if (json['categories'] != null) {
      categories = <Category>[];
      json['categories'].forEach((v) {
        categories!.add(Category.fromJson(v));
      });
    }
    canHaveFile = json['canHaveFile'];
    canHaveLink = json['canHaveLink'];
    canHaveVideo = json['canHaveVideo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['slug'] = slug;
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['canHaveFile'] = canHaveFile;
    data['canHaveLink'] = canHaveLink;
    data['canHaveVideo'] = canHaveVideo;
    return data;
  }
}

class Storage {
  String? id;
  String? originalName;
  String? mimetype;
  int? size;
  String? link;
  String? key;

  Storage({
    this.id,
    this.originalName,
    this.mimetype,
    this.size,
    this.link,
    this.key,
  });

  Storage.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    originalName = json['originalName'];
    mimetype = json['mimetype'];
    size = json['size'];
    link = json['link'];
    key = json['key'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['originalName'] = originalName;
    data['mimetype'] = mimetype;
    data['size'] = size;
    data['link'] = link;
    data['key'] = key;
    return data;
  }
}

class MemberRoles {
  String? name;
  String? userRole;

  MemberRoles({this.name, this.userRole});

  MemberRoles.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    userRole = json['userRole'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['userRole'] = userRole;
    return data;
  }
}

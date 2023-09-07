// ignore_for_file: constant_identifier_names

enum Privacy {
  PUBLIC,
  PRIVATE;

  String get name {
    switch (this) {
      case Privacy.PUBLIC:
        return 'Công khai';
      case Privacy.PRIVATE:
        return 'Chỉ mình tôi';
    }
  }
}

enum Gender {
  MALE,
  FEMALE,
  OTHER;

  String get name {
    switch (this) {
      case Gender.MALE:
        return 'Nam';
      case Gender.FEMALE:
        return 'Nữ';
      case Gender.OTHER:
        return 'Khác';
    }
  }
}



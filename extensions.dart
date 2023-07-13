import 'dart:io';

import 'package:intl/intl.dart';

extension BoolExtension on bool? {
  /// Compares this string to [other].
  ///
  /// Returns a negative value if `this` is true,
  /// a positive value if `this` is false,
  /// or zero if `this` and `other` are equivalent.
  int compareTo(bool? other) {
    if(this == other) {
      return 0;
    } else if(this == true) {
      return -1;
    } else {
      return 1;
    }
  }
}

extension DateExtension on DateTime {
  /// Return a string representing [DateTime] formatted according to our locale and internal format.
  String format(String formatString){
    return DateFormat(formatString).format(this);
  }
}

extension FileExtension on FileSystemEntity {
  /// Checks whether the file system entity with this path exists and synchronously deletes this [FileSystemEntity].
  /// 
  /// If the [FileSystemEntity] is a directory, and if [recursive] is false,
  /// the directory must be empty. Otherwise, if [recursive] is true, the
  /// directory and all sub-directories and files in the directories are
  /// deleted. Links are not followed when deleting recursively. Only the link
  /// is deleted, not its target.
  ///
  /// If [recursive] is true, the [FileSystemEntity] is deleted even if the type
  /// of the [FileSystemEntity] doesn't match the content of the file system.
  /// This behavior allows [deleteSync] to be used to unconditionally delete any
  /// file system object.
  ///
  /// Throws an exception if the [FileSystemEntity] cannot be deleted.
  Future<bool> deleteSyncIfExists({bool recursive = false}) async {
    var hasFile = await this.exists();
    if(hasFile){
      this.deleteSync(recursive: recursive);
    }
    return hasFile;
  }
}

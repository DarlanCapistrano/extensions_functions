extension BoolExtension on bool? {
  /// Compares this string to [other].
  ///
  /// Returns a negative value if `this` is true,
  /// a positive value if `this` is false,
  /// or zero if `this` and `other` are equivalent.
  int compareTo(bool? other) {
    if(this == other)
      return 0;
    else if(this == true)
      return -1;
    else
      return 1;
  }
}
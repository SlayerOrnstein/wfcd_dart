extension JsonListUtils on List<dynamic> {
  List<Map<String, dynamic>> toMapList() {
    return List<Map<String, dynamic>>.from(this);
  }
}

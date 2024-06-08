extension MapStringDynamicExtension on Map<String, dynamic> {
  List<T> getList<T>(String key) => (this[key] as List? ?? []).cast<T>();
}

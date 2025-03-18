int calculateReadingTime(String content) {
  final wordCount = content.split(RegExp(r'\s+')).length;
  return (wordCount / 200).ceil();

}
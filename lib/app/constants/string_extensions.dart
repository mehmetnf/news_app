extension NameFormat on String {
  String editedNameStringProfileCard(int maxLength) {
    List<String> words = split(' ');
    if (words.length >= 3) {
      if (words[2].contains(RegExp(r'[a-zA-Z]'))) {
        return '${words[0]} ${words[1]} ${words[2]}';
      } else {
        return '${words[0]} ${words[1]}';
      }
    } else {
      return this;
    }
  }

  String capitalizeFirstLetter() {
    if (isEmpty) {
      return this;
    }
    final words = split(' ');
    final capitalizedWords = words.map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1);
      }
      return '';
    });
    return capitalizedWords.join(' ');
  }
}

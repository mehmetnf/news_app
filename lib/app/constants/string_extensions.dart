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

extension CurrencySymbol on String {
  String get currencySymbol {
    switch (this) {
      case "TRY":
        return "₺";
      case "USD":
        return "\$";
      case "EUR":
        return "€";
      default:
        return "";
    }
  }
}

extension CurrencyFormatter on String {
  String formatPrice(String currency) {
    if (currency == "USD") {
      return "${currency.currencySymbol}$this";
    } else {
      return "$this${currency.currencySymbol}";
    }
  }
}

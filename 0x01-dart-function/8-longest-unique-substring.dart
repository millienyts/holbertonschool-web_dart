String longestUniqueSubstring(String str) {
  int maxLength = 0;
  String longestSubstring = '';
  Map<String, int> charIndexMap = {};

  for (int i = 0, j = 0; j < str.length; j++) {
    if (charIndexMap.containsKey(str[j])) {
      i = charIndexMap[str[j]]! + 1 > i ? charIndexMap[str[j]]! + 1 : i;
    }
    charIndexMap[str[j]] = j;

    if (j - i + 1 > maxLength) {
      maxLength = j - i + 1;
      longestSubstring = str.substring(i, j + 1);
    }
  }

  return longestSubstring;
}

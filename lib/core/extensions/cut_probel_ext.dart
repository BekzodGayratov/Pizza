extension CutProbel on String {
  cutProbel() {
    String result = "";
    for (var i = 0; i < length; i++) {
      if (this[i] != ' ') {
        result += this[i];
      }
    }
    return result;
  }
}

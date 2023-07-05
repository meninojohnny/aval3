void checkSequence(String sequence) {
  List<String> nucleotides = ['A', 'T', 'C', 'G'];
  for (final i in sequence.toUpperCase().split('')) {
    if (nucleotides.contains(i) == false) {
      throw Exception('The sequence is not a valid sequence.');
    }
  }
}

void checkNucleotide(String nucleotide) {
  List<String> nucleotides = ['A', 'T', 'C', 'G'];
  for (final i in nucleotide.toUpperCase().split('')) {
    if (nucleotides.contains(i) == false) {
      throw Exception(
          'The nucleotide ${nucleotide.toUpperCase()} is not a valid nucleotide.');
    }
  }
}

String complement(String dna) {
  List<String> dnaList = dna.split('');
  for (int i = 0; i < dnaList.length; i++) {
    switch (dnaList[i]) {
      case 'A':
        dnaList[i] = 'T';
        break;
      case 'T':
        dnaList[i] = 'A';
        break;
      case 'C':
        dnaList[i] = 'G';
        break;
      case 'G':
        dnaList[i] = 'C';
        break;
    }
  }
  return dnaList.join();
}

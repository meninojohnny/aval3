import 'dart:math';

class DNASequence {
  String _dna = '';

  DNASequence(String n) {
    _dna = n.toUpperCase();
  }

  factory DNASequence.fromAleatory(int comprimento) {
    var random = Random();
    String dnaSequence = '';
    List<String> nucleotideos = ['A', 'T', 'C', 'G'];
    for (int i = 0; i < comprimento; i++) {
      dnaSequence += nucleotideos[random.nextInt(4)];
    }
    return DNASequence(dnaSequence);
  }

  DNASequence createInstance(String dna) {
    String dnaInvertido = dna.split('').reversed.join();
    return DNASequence(dnaInvertido);
  }

  DNASequence createInstanceComplement(String dna) {
    //String dnaInvertido = dna.split('').reversed.join();
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
      dna = dnaList.join();
    }
    return DNASequence(dna);
  }

  int occurrences(String nucleotideos) {
    List<String> dnaList = _dna.split('');
    int count = dnaList.where((n) => n == nucleotideos.toUpperCase()).length;
    return count;
  }

  String get dna {
    return _dna;
  }

  @override
  String toString() {
    return this.dna;
  }
}

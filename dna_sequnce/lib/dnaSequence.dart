import 'dart:math';
import './utils.dart';

class DNASequence {
  String dna = '';

  DNASequence(String n) {
    checkSequence(n);
    dna = n.toUpperCase();
  }

  factory DNASequence.fromAleatory(int length) {
    var random = Random();
    String dnaSequence = '';
    List<String> nucleotides = ['A', 'T', 'C', 'G'];
    for (int i = 0; i < length; i++) {
      dnaSequence += nucleotides[random.nextInt(4)];
    }
    return DNASequence(dnaSequence);
  }

  DNASequence createInstance() {
    checkSequence(dna);
    print(dna);
    String dnaInverted = dna.split('').reversed.join();
    return DNASequence(dnaInverted);
  }

  DNASequence createInstanceComplement() {
    checkSequence(dna);
    return DNASequence(complement(dna));
  }

  int occurrences(String nucleotideos) {
    checkNucleotide(nucleotideos);
    List<String> dnaList = dna.split('');
    int count = dnaList.where((n) => n == nucleotideos.toUpperCase()).length;
    return count;
  }
}

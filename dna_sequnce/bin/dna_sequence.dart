import 'dart:io';
import '../lib/dnaSequence.dart';

void main() {
  List<String> nucleotides = ['A', 'T', 'G', 'C'];
  print('SEQUENCIAS DE DNA');

  List<DNASequence> dnaList = [];
  dnaList.add(DNASequence('atgcatgact')); // sequencia passada como pareamtro
  dnaList.add(DNASequence.fromAleatory(10)); // sequencia aleatória
  dnaList.add(dnaList[1].createInstance()); // sequencia inversa da sequencia de outra instancia
  dnaList.add(dnaList[2].createInstanceComplement()); // complemento da sequencia de outra instancia

  for (final i in dnaList) {
    print('\nDNA_${dnaList.indexOf(i) + 1}: ${i.dna}');
    print('OCORRENCIAS');
    for (final j in nucleotides) {
      stdout.write('$j: ${i.occurrences(j)} | ');
    }
    print('');
  }
  print('\nALUNO: JOÃO VITOR DA SILVA PEREIRA');
}

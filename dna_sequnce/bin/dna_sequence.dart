//import '/home/aluno/Área de Trabalho/aval3/dna_sequence/lib/dnaSequence.dart';
import '../lib/dnaSequence.dart';



void main() {
  print('ALUNO; JOÃO VITOR DA SILVA PEREIRA\n');
  print('SEQUENCIA DE DNA');

  DNASequence dna1 = DNASequence('atgcat');
  print('DNA1: ${dna1.dna}');
  print('OCORRENCIAS');
  print('A: ${dna1.occurrences('A')} | T: ${dna1.occurrences('T')} | C: ${dna1.occurrences('C')} | G: ${dna1.occurrences('G')}\n');

  DNASequence dna2 = DNASequence.fromAleatory(10);
  print('DNA2: ${dna2.dna}');
  print('OCORRENCIAS');
  print('A: ${dna2.occurrences('A')} | T: ${dna2.occurrences('T')} | C: ${dna2.occurrences('C')} | G: ${dna2.occurrences('G')}\n');


  DNASequence dna3 = dna2.createInstance(dna2.dna);
  print('DNA3: ${dna3.dna}');
  print('OCORRENCIAS');
  print('A: ${dna3.occurrences('A')} | T: ${dna3.occurrences('T')} | C: ${dna3.occurrences('C')} | G: ${dna3.occurrences('G')}\n');

  DNASequence dna4 = dna1.createInstance(dna1.dna);
  print('DNA4: ${dna4.dna}');
  print('OCORRENCIAS');
  print('A: ${dna4.occurrences('A')} | T: ${dna4.occurrences('T')} | C: ${dna4.occurrences('C')} | G: ${dna4.occurrences('G')}');
}

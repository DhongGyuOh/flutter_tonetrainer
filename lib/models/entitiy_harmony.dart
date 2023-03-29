class Note {
  late final List<List<String>> noteKey = [
    ['C'],
    ['C#', 'Db'],
    ['D'],
    ['D#', 'Eb'],
    ['E'],
    ['F'],
    ['F#', 'Gb'],
    ['G'],
    ['G#', 'Ab'],
    ['A'],
    ['A#', 'Bb'],
    ['B']
  ];
}

class Chords {
  late final Map<String, List<String>> chord = {
    'C': ['C', 'E', 'G'],
    'Cm': ['C', 'Eb', 'G'],
    'CM7': ['C', 'E', 'G', 'B'],
    'Cm7': ['C', 'Eb', 'G', 'Bb'],
    'Csus4': ['C', 'F', 'G']
  };
}

class Scales {}

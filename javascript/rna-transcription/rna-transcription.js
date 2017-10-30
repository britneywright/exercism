var DnaTranscriber = function(){};

DnaTranscriber.prototype.toRna = function(input) {
  transcription = ''
  for (var number = 0; number < input.length; number++) {
    if (input[number] == 'C')
      transcription += 'G'
    else if (input[number] == 'G')
      transcription += 'C'
    else if (input[number] == 'A')
      transcription += 'U'
    else if (input[number] == 'T')
      transcription += 'A'
    else
      throw Error('Invalid input')
    };
    return transcription
  };

module.exports = DnaTranscriber;

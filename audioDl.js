const textToSpeech = require('@google-cloud/text-to-speech');
const { Translate } = require("@google-cloud/translate").v2;
const fs = require('fs');
const util = require('util');

const tTSClient = new textToSpeech.TextToSpeechClient();
const translateClient = new Translate();

const sampleText = "This text should be translated from English to Thai"
const languageCode = "th";

async function translate() {
   let translatedText = (await translateClient.translate(sampleText, languageCode))[0];
   console.log('translatedText: ', translatedText);

}

translate();


// /**
//  * TODO(developer): Uncomment the following lines before running the sample.
//  */
// const text = 'ฉันชื่อฌอน';
// const outputFile = 'thaiTest3.mp3';


// // en-US | thai
// const request = {
//   input: {text: text},
//   voice: {languageCode: 'th', ssmlGender: 'FEMALE'},
//   audioConfig: {audioEncoding: 'MP3'},
// };


// async function synthAndSave() {
//    const [response] = await tTSClient.synthesizeSpeech(request);
//    const writeFile = util.promisify(fs.writeFile);
//    await writeFile(outputFile, response.audioContent, 'binary');
//    console.log(`Audio content written to file: ${outputFile}`);
// }

// synthAndSave();

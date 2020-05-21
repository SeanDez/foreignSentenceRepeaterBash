#!/bin/bash

# ---------------- Initial setup on Google Cloud

# 1) follow the instructions on this page to create a credentials.json file and save it to the project root
# https://cloud.google.com/docs/authentication/getting-started

# 2) Enable the Text-to-Speech API: https://console.developers.google.com/apis/api/texttospeech.googleapis.com/overview

# 3) Enable the Translations API: https://console.developers.google.com/apis/api/translate.googleapis.com/overview

# Language codes: https://developers.google.com/admin-sdk/directory/v1/languages


# --------------- Config Variable Declaration
declare -A configData

# --------------- Function Definitions

function setConfigurations {
   read -p "Enter an absolute or relative path for the parent folder where all audios will be saved: " configData[outputParentFolder]

   # If there is no config file, create it.
   if [[ ! -f "${configData[outputParentFolder]}/courseConfigurations.txt" ]]
   then
      touch ./courseConfigurations.txt
      chmod 644 ./courseConfigurations.txt # read write
   fi


   read -p "Please go to the following url (in your web browser) to find your desired language's code. Then enter the code here. ( https://developers.google.com/admin-sdk/directory/v1/languages ): " configData[languageCode]


   read -p "How many times should the sentence, and all words in the sentence, repeat? (2 or 3 times is recommended): " configData[numberOfRepeats]

   return 0 # success
}


function buildSentenceFolder {
   local $sentenceString = $1

   ### build the specific sentence folder name
   # split string into array on \s
   for word in $sentenceString
   do
      # capitalize each word
      echo
      # remove spaces
      # create titlecaps string (folder name)
   done 

   # create a folder in the specified config directory
}

function buildSentenceAudios {
   echo
}



# ------------------ Script Execution

# setup the required Google Env variable for their SDK to load credentials

export GOOGLE_APPLICATION_CREDENTIALS="./credentials.json"
echo "Using credentials file at ${GOOGLE_APPLICATION_CREDENTIALS}"


# case statement to control all options
while [[ $# -gt 0 ]];
do 
   case $1 in 
      -c|--config)
         # setConfigurations $1
         shift
         ;;
      *)
         # default case. Expects a sentence string
         buildAudios $1 
         shift
         ;;
   esac
done

echo ${configData[languageCode]}
echo ${configData[outputParentFolder]}
echo ${configData[numberOfRepeats]}









# run the main script

# echo "Running the main script file using node..."
# node ./audioDl.js



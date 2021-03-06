#!/bin/bash

# ---------------- Initial setup on Google Cloud

# 1) follow the instructions on this page to create a credentials.json file and save it to the project root
# https://cloud.google.com/docs/authentication/getting-started

# 2) Enable the Text-to-Speech API: https://console.developers.google.com/apis/api/texttospeech.googleapis.com/overview

# 3) Enable the Translations API: https://console.developers.google.com/apis/api/translate.googleapis.com/overview

# Language codes: https://developers.google.com/admin-sdk/directory/v1/languages

# --------------- Imports
source helpers/helpers.sh


# --------------- Config Variable Declaration
declare -A configData






# ------------------ Script Execution

# setup the required Google Env variable for their SDK to load credentials

export GOOGLE_APPLICATION_CREDENTIALS="./credentials.json"
echo "Using credentials file at ${GOOGLE_APPLICATION_CREDENTIALS}"


# case statement to control all options
while [[ $# -gt 0 ]]
do
   case $1 in 
      -i|--instructions)
         # todo
         displayUsageInstructions
         break
         ;;
      -c|--configure)
         run_wizard $1 # explain everything, gather
         ;;
      -b|--build)
         ;;
      -s|--sentence)
         ;;
      *)
         # todo
         displayUsageInstructions
      ;;
   esac
   # shift # breaking is the proper action
done



echo ${configData[languageCode]}
echo ${configData[outputParentFolder]}
echo ${configData[numberOfRepeats]}









# run the main script

# echo "Running the main script file using node..."
# node ./audioDl.js



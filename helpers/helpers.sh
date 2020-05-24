

function displayUsageInstructions {
   echo "**********************************************"
   echo "Foreign Sentence Repeater - Usage Instructions"
   echo "**********************************************"
   echo
   echo "Sign up for a Google Cloud account"
   echo
   echo "Create a new \"Service Account Role\" by following the instructions on this page: "
   echo
   echo "Enable the Translations API here: "
   echo
   echo "Enable the Text-to-Speech API here: "
   echo
   echo "Run the setup wizard with -c or --configure ( ./runScript.sh -c )"
   echo
   echo "Create a sentences.txt file with one sentence per line"
   echo
   echo "run the script with the -b or --build flag ( ./runScript.sh -b )"
   echo
   echo "Your sentences and phrases will now be available in the ./audioTranslations folder"
   echo
   echo "(Optional) Add additional sentences by modifying your sentences.txt file, or using the -s or --sentence flag with a single string argument for a new sentence to translate, build, and add to the ./audioTranslations folder ( ./runScript.sh -s \"Sentence to be translated here.\" )."
}




function createConfigFolderAndFile {
   echo
}


function setConfigurations {
   read -p "Enter an absolute or relative path for the parent folder where all audios will be saved. (If the folder name does not exist, it will be created): " configData[outputParentFolder]

   # If there is no config file, create it.
   if [[ ! -f "${configData[outputParentFolder]}/courseConfigurations.txt" ]]
   then
      touch ./courseConfigurations.txt
   fi

   read -p "Please go to the following url (in your web browser) to find your desired language's code. Then enter the code here. ( https://developers.google.com/admin-sdk/directory/v1/languages ): " configData[languageCode]


   read -p "How many times should the sentence, and all words in the sentence, repeat? (2 or 3 times is recommended): " configData[numberOfRepeats]

   return 0 # success
}


function toLowercase {
   
   # simulated return value
   # lowercases only the first field (by space delimiter)
   # $0 would have lowercased all fields
   # here string puts the variable into stdin so awk can read it
   # awk can't take arguments. It can take files or response streams
   awk '{print tolower($1)}' <<< $1
}


function run_wizard {
   echo

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








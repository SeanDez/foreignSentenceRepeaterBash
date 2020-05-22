


function createParentFolder { 
   # string. can be absolute or relative path
   folderPath=$1

   # if folder does not exist, create it
   if [[ ! -d $folderPath ]]
   then
      mkdir $folderPath
      chmod 644 createdForTest # read write
   fi

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








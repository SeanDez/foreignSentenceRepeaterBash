
while :; # : is true
do
   case $1 in
      -c|--config)
         echo "/// Audio Translator Configuration ///"
         echo
         echo "This wizard will create a file called settings.conf in the project root. After this step you will be able to run mainScript.sh to generate a folder for a sentence (or many sentences), and repeats of each word."

         echo "For a list of language codes, see this page: https://developers.google.com/admin-sdk/directory/v1/languages"
         echo

         read -p "Enter the desired output language's code: " languageCode
         echo

         read -p "Enter an absolute or relative path to the parent output folder (This script will create the path): " parentFolderPath
         echo

         read -p "Enter the desired number of repetitions for the full sentence, and every word in the sentence ("
         ;;
      *)
         # default case
         exit
         ;;
   esac
done




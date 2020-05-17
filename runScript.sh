# ---------------- Initial setup on Google Cloud

# 1) follow the instructions on this page to create a credentials.json file and save it to the project root
# https://console.cloud.google.com/apis/credentials?project=buyusedshopify

# 2) Enable the Text-to-Speech API: https://console.developers.google.com/apis/api/texttospeech.googleapis.com/overview?project=119445587202

# 3) Enable the Translations API: https://console.developers.google.com/apis/api/translate.googleapis.com/overview?project=119445587202

# Language code: https://developers.google.com/admin-sdk/directory/v1/languages

# ------------------ Script Execution

# setup the required Google Env variable for their SDK to load credentials

export GOOGLE_APPLICATION_CREDENTIALS="./credentials.json"
echo "Using credentials file at ${GOOGLE_APPLICATION_CREDENTIALS}"



# run the main script

echo "Running the main script file using node..."
node ./audioDl.js



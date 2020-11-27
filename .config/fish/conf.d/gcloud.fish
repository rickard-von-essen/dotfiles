# Gcloud don't work well with Python 3.9 yet
set -x CLOUDSDK_PYTHON /usr/bin/python3

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end
if [ -f "$HOME/local/google-cloud-sdk/path.fish.inc" ]; . "$HOME/local/google-cloud-sdk/path.fish.inc"; end

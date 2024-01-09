# Force using new gcloud auth for GKE
# https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
set -x USE_GKE_GCLOUD_AUTH_PLUGIN True

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.fish.inc" ]; . "$HOME/google-cloud-sdk/path.fish.inc"; end
if [ -f "$HOME/local/google-cloud-sdk/path.fish.inc" ]; . "$HOME/local/google-cloud-sdk/path.fish.inc"; end

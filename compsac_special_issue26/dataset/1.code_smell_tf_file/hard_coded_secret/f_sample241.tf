locals { 
    cloudbuild_cd_environment_manual = [ 
    "PROJECT_ID=$PROJECT_ID",
    "DATASTORE_NAMESPACE=$_DATASTORE_NAMESPACE",
    "DNS_NAME=$_DNS_NAME",
    "PR_URL=URL"]
}

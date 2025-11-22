# Authentication to Google Cloud

## Authentication Options
There are a couple of ways to authenticate to google cloud from HCP Terraform.

1. Store GSA Keys as a Secret Variable
- Create a JSON Key for your service account and save the service account key content in a Terraform Cloud environment variable called "GOOGLE_CREDENTIALS". Make sure to get the content of the JSON file using: `cat sa-key.json | jq -c`.
- Don't forget to mark the env variable as Sensitive on HCP Terraform workspace. All runs within the workspace will use the GOOGLE_CREDENTIALS variable to authenticate with Google Cloud Platform.

2. Workload Identity Federation
- Storing long-lived service account keys in HCP Terraform poses a significant security risk. If compromised, these account keys could give an attacker access to your Google Cloud environment. Not only is leaking the key a risk, but many organizations have a policy to block creation of such keys.
- Fortunately, in many cases, you can authenticate with more secure alternatives to service account keys. One such alternative is workload identity federation, which uses identity and access management (IAM) to grant external identities (such as HCP Terraform) the ability to impersonate service accounts.

## References
- https://www.hashicorp.com/en/blog/access-google-cloud-from-hcp-terraform-with-workload-identity

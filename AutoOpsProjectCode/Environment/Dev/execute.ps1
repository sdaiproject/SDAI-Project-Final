az login
az account set -s "Azure for Students"
terraform init
terraform plan
terraform apply -auto-approve

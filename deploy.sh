
export SUBSCRIPTION_ID='c8703ebc-bc5d-488d-9489-5883c9fde6c2'
export FLEET_LOCATION="australiaeast"


# Description: Deploys the Bicep template to Azure
az deployment sub create \
  --name "fleet-mgr-$(date -I)" \
  --location "${FLEET_LOCATION}" \
  --subscription ${SUBSCRIPTION_ID} \
  --template-file main.bicep \
  --parameters main.bicepparam
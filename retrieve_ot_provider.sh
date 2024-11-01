set -x
# accept two arguments from command line
# 1. the group of the Terraform provider
# 2. the name of the Terraform provider
# 3. the version of the Terraform provider

echo "Downloading: copy alibaba stack provider"

TERRAFORM_DIR=/root/.terraform.d/plugins/registry.opentofu.org/aliyun/alibabacloudstack/1.0.32/darwin_arm64/
DOWNLOADURL=https://mirrors.aliyun.com/terraform/registry.terraform.io/hashicorp/alibabacloudstack/terraform-provider-alibabacloudstack_1.0.32_darwin_arm64.zip
PROVIDER_FOLDER_NAME=terraform-provider-alibabacloudstack_1.0.32_darwin_arm64
PROVIDER_FILE_NAME=terraform-provider-alibabacloudstack_v1.0.32
wget $DOWNLOADURL -O provider.zip &&
  unzip -o provider.zip &&
  chmod +x $PROVIDER_FILE_NAME &&
  mkdir -p $TERRAFORM_DIR &&
  mv $PROVIDER_FILE_NAME $TERRAFORM_DIR
  rm -f provider.zip

#!/bin/bash
terraform init
terraform plan -var "pub_key=~/.ssh/id_rsa.pub" -var "pvt_key=~/.ssh/id_rsa"  -var "region=blr1" -var "ssh_fingerprint=$FINGERPRINT" -var "do_token=$TOKEN" -var "size=2gb" -var "tag=k8s" -parallelism=7
terraform apply -input=false -auto-approve -var "pub_key=~/.ssh/id_rsa.pub" -var "pvt_key=~/.ssh/id_rsa"  -var "region=blr1" -var "ssh_fingerprint=$FINGERPRINT" -var "do_token=$TOKEN" -var "size=2gb" -var "tag=k8s" -parallelism=7

exit 0

init:
	make -C terraform init
tf-plan:
	make -C terraform plan
tf-apply:
	make -C terraform apply
tf-destroy:
	make -C terraform destroy

ansible-setup-servers:
	make -C ansible setup-servers
ansible-deploy-app:
	make -C ansible deploy-app
ansible-install-packages:
	make -C ansible install-packages

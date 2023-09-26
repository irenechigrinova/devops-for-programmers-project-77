init:
	make -C terraform init
tf-plan:
	make -C terraform plan
tf-apply:
	make -C terraform apply
tf-destroy:
	make -C terraform destroy

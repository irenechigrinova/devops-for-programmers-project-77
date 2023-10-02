setup-servers:
	ansible-galaxy install -r requirements.yml

deploy-app:
	ansible-playbook -v -i inventory.ini playbook.yml

install-packages:
	ansible-playbook -v -i inventory.ini playbook.yml -t packages

install-datadog:
	ansible-playbook -v -i inventory.ini playbook.yml -t datadog

manage-app:
	ansible-playbook -v -i inventory.ini playbook.yml -t app
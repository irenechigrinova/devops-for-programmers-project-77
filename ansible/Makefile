setup-servers:
	ansible-galaxy install -r requirements.yml

deploy-app:
	ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook -v -i inventory.ini playbook.yml

install-packages:
	ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook -v -i inventory.ini playbook.yml -t packages

install-datadog:
	ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook -v -i inventory.ini playbook.yml -t datadog

manage-app:
	ANSIBLE_STDOUT_CALLBACK=yaml ansible-playbook -v -i inventory.ini playbook.yml -t app

.PHONY: all ping setup-venv setup-ansible setup-role clean

all:
	( . venv/ansible/bin/activate && ansible-playbook site.yml )

ping:
	ansible all -m ping

setup-venv:
	python3 -m venv venv/ansible

setup-ansible:
	( . venv/ansible/bin/activate && pip install ansible)

setup-role:
	mkdir -p roles
	( . venv/ansible/bin/activate && ansible-galaxy install YasuhiroABE.myfavorite-setting )
	mkdir -p logs

clean:
	find . -name '*~' -exec rm {} \; -print

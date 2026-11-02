
.PHONY: all
all:
	( . venv/ansible/bin/activate && ansible-playbook site.yml )

.PHONY: ping
ping:
	( . venv/ansible/bin/activate && ansible all -m ping )

.PHONY: setup-venv
setup-venv:
	python3 -m venv venv/ansible

.PHONY: setup-ansible
setup-ansible:
	( . venv/ansible/bin/activate && pip install ansible)

.PHONY: setup-role
setup-role:
	mkdir -p roles
	( . venv/ansible/bin/activate && ansible-galaxy install YasuhiroABE.myfavorite-setting )
	mkdir -p logs

.PHONY: clean
clean:
	find . -name '*~' -exec rm {} \; -print

idep: iroles icollections

udep: uroles ucollections

iroles: 
    ansible-galaxy install -r requirements.roles.yml -p roles

uroles:
	ansible-galaxy install -r requirements.roles.yml -p roles --force

icollections:
	ansible-galaxy collection install -r requirements.collections.yml -p collections

ucollections:
	ansible-galaxy collection install -r requirements.collections.yml -p collections --force

run:
	ansible-playbook main.yml --ask-become-pass --vault-password-file .vault-pass

backup:
	ansible-playbook backup.yml --ask-become-pass --vault-password-file .vault-pass

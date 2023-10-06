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

run: system rice dev

system:
	ansible-playbook system.yml --ask-become-pass --vault-password-file .vault-pass

rice:
	ansible-playbook rice.yml --ask-become-pass --vault-password-file .vault-pass

dev:
	ansible-playbook development.yml --ask-become-pass --vault-password-file .vault-pass

backup:
	ansible-playbook backup.yml --ask-become-pass --vault-password-file .vault-pass

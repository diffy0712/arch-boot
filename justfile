init: 
	just idep
	pacman -Suy
	pacman -S ansible yay
	yay -S just

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

run: system rice dev hosts

system:
	ansible-playbook system.yml --ask-become-pass --vault-password-file .vault_pass

rice:
	ansible-playbook rice.yml --ask-become-pass --vault-password-file .vault_pass

dev:
	ansible-playbook development.yml --ask-become-pass --vault-password-file .vault_pass

backup:
	ansible-playbook backup.yml --ask-become-pass --vault-password-file .vault_pass

hosts:
	ansible-playbook hosts.yml --ask-become-pass --vault-password-file .vault_pass

decrypt:
	ansible-vault decrypt vars/*.yml --vault-password-file .vault_pass

encrypt:
	ansible-vault encrypt vars/*.yml --vault-password-file .vault_pass
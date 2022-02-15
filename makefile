.PHONY: idep ## Install all dependencies (roles and collections)
idep: iroles icollections

.PHONY: udep ## Update all dependencies (roles and collections)
udep: uroles ucollections

.PHONY: iroles ## Install all roles
iroles: 
		ansible-galaxy install -r requirements.roles.yml -p roles

.PHONY: uroles ## Update all roles
uroles:
		ansible-galaxy install -r requirements.roles.yml -p roles --force

.PHONY: icollections ## Install all collections
icollections:
		ansible-galaxy collection install -r requirements.collections.yml -p collections

.PHONY: ucollections ## Update all collections
ucollections:
		ansible-galaxy collection install -r requirements.collections.yml -p collections --force

.PHONY: run ## Run the installer playbook
run:
		ansible-playbook main.yml --ask-become-pass --vault-password-file .vault-pass ${s}

.PHONY: backup ## Run backup playbook
backup:
		ansible-playbook backup.yml --ask-become-pass --vault-password-file .vault-pass ${s}
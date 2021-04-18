# Ansible Documentation

## Overview
Ansible is a configuration management

### General Usage  
```
# Login to jump server
ssh user@ansible

# Switch user
sudo -u ansible -i

# Source virtual environment
source /home/user/venv/bin/activate

# Navigate to ansible directory
cd /home/user/pgbgp/project/ansible

#Run the playbook
ansible playbook playbook.yml -v

#Or optionally a specific command. In this case, pinging just the webservers. Check out inventory.yml for various groups
ansible routers -m ping
```
## Playbooks

### initialize.yml
Configures infrastucture. Run this after a restart to deploy and configure the test network

### reboot.yml
Restart all the VMs. Reinitialization will be required after this playbook is executed.

### destroy.yml
Tears down infrastructure, removing configurations


### stop.yml
Stops infrastucture. Webservers, tests, etc.

### poison.yml
Conduct path poisoning. Limit to a single host. Provide source ASN and target
ASN as extra variables. Here is an example poisoning:

```
ansible-playbook attack.yml"
```


### expiriments.yml
This is a series of expiriments, consisting of poisoning nodes in sequential order from 18 to 19 to 13 and dumping traceroutes into the artifacts directory.

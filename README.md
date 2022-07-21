# Ubuntu-Ansible

_Docker build instructions for a base Ubuntu with Ansible_

---

The goal of this project is to provide an base ubuntu container with ansible installed. The built container can be used to run ansible playbooks and add additional modules to reduce the need to install ansible directly on the host computer.

I use this exclusively for demonstrations and ansible playbook/role development. **Use in production is not tested therefore user beware!**

## Usage

To utilize the container docker cli or another container run time is expected to be available. The following shows build using docker.

Clone repository
```git clone https://github.com/rjohnston6/ubuntu-ansible.git```

Build the container:
1. ```cd ubuntu-ansible```
2. ```docker build -t <username>/ubuntu-ansible .```

Run the container:
```docker run -it -rm --mount type=bind,source="$(pwd)",target=projects/ <username/ubunut-ansible>```

This will run the container mount the local directory to a directory name projects with in the container and move the context to the bash shell of the container. Upon exiting the container ```--rm``` flag will destroy and remove the container, adjust usage as required.

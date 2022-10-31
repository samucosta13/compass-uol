# Deployment steps
* Create a VM to install Docker on it
* Grant permission to run docker comands using a non-root user
* Follow the next steps of the app that you want apply

## Java app
### First deploy
* Move the *easy-notes-1.0.0.jar* from the app01 VM to your host path, using the scp in Vagrant
  * easy-notes-1.0.0.jar also can be gotten in ../ansible-lab/app01, in this repository
* Up the files *easy-notes-1.0.0.jar* and *application.properties* to /home/vagrant in the VM where Docker is installed
  * application.properties can be found into ../ansible-lab/control-node/playbooks/templates/, in this repository
* Access the VM (in /home/vagrant) and create a Dockerfile like that which is in this repo folder
* Build the docker image as from the Dockerfile
### Compilation deploy
### Multi-stage deploy

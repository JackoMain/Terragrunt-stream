This project is a demo of architectureThe standard docker compose format is listed here for posterity, however it is not being used in this project. Instead, I'm referencing the dockerfile inside the devcontainer. 
I'll update this with Docker Bake after moving the vpc out of main_script.tf into its own file so it runs before the eks cluster, then initializing terraform. 
Along with secrets being but in a designated storage and not in plaintext 

I initially uploaded this repo from vscode but I deleted it to add in/ remove a few things.

Referenced the following:
https://spacelift.io/blog/terraform-azure-devops
https://stackoverflow.com/questions/78421879/devcontainer-docker-compose-best-practice
https://medium.com/@gyulshenabazz/mastering-terraform-with-visual-studio-code-dev-containers-5294e3f5bfaa


# Add rootless user podman
```commandline
sudo usermod --add-subuids 10000-65536 $(whoami) # Add user id
sudo usermod --add-subgids 10000-65536 $(whoami)
podman system migrate
```
# Bash
1. https://stackoverflow.com/questions/18135451/what-is-the-difference-between-var-var-and-var-in-the-bash-shell

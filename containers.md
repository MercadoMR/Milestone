
# Add rootless user podman
```
sudo usermod --add-subuids 10000-65536 $(whoami) # Add user id
sudo usermod --add-subgids 10000-65536 $(whoami)
podman system migrate
```

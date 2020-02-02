# Template for vscode remote docker development


More info: https://code.visualstudio.com/docs/remote/containers

## Developing inside a container on a remote Docker host

More info: https://code.visualstudio.com/docs/remote/containers-advanced#_developing-inside-a-container-on-a-remote-docker-host

- Create a docker context on remote host. 

```bash
 docker context create <CONTEXT_NAME> --docker "host=ssh://your-remote-user@your-remote-machine-fqdn-or-ip-here"
```

- Uncomment `"docker.host":"ssh://your-remote-user@your-remote-machine-fqdn-or-ip-here"` and specify ssh username, ip or fqdn in [.vscode/setttings.json](.vscode/settings.json)

- Uncommet these lines in [.devcontainer/devcontainer.json](.devcontainer/devcontainer.json):

```
"workspaceMount": "src=<REMOTE_HOST_PATH>,dst=<REMOTE_HOST_CONTAINER_PATH>,type=bind",
"workspaceFolder": "/workspace"
```

- Key based authentication is required. 

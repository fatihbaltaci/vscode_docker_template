# Template for vscode remote docker development


More info: https://code.visualstudio.com/docs/remote/containers

## Developing inside a container on a remote Docker host


- Create a docker context on remote host. 

```bash
 docker context create <CONTEXT_NAME> --docker "host=ssh://your-remote-user@your-remote-machine-fqdn-or-ip-here"
```

- Uncomment `"docker.host":"ssh://your-remote-user@your-remote-machine-fqdn-or-ip-here"` and specify ssh username, ip or fqdn in [.vscode/setttings.json](.vscode/setttings.json)
```

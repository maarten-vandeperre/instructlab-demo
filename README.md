# instructlab-demo
TODO:
* add explanation to the commands
* add general description

## Commands
### build container
```shell
podman build -t instructlab-os .
```
### run container
#### pre-built one
```shell
clear; \
podman run --rm --name instructlab-os -v ./workspace:/opt/app-root/src/instructlab quay.io/rh_ee_mvandepe/instructlab-os:0.0.2;
```
#### local built one
```shell
clear; \
podman run --rm --name instructlab-os -v ./workspace:/opt/app-root/src/instructlab instructlab-os;
```

### open instruct lab shell in container
_This needs to be executed in another shell window or tab._
```shell
clear; \
podman exec -it $(podman inspect --format "{{.ID}}" instructlab-os) bash;
```

### stop container
```shell
clear; \
podman stop $(podman inspect --format "{{.ID}}" instructlab-os);
```
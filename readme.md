# Readme

```bash
pip install localstack==4.0.3
localstack start

# To view resources from the web
localstack auth set-token <your-auth-token>
# Ex. ls-Reke9316-6719-giFi-xudA-wOJifoVoc6e6
# obtained from signing up at localstack.cloud

# optional - only needed for running cli commands
# pip install awscli-local

# thin terraform wrapping
pip install terraform-local==1.10.4

tflocal init
tflocal plan
tflocal apply --auto-approve
```

## Troubleshooting

## Port unavailable
```
⠋ Starting LocalStack container2025-01-10T11:09:18.560 ERROR --- [-functhread1] localstack.utils.bootstrap : Error while starting LocalStack container: Docker process returned with errorcode 1
Error response from daemon: Ports are not available: exposing port TCP 127.0.0.1:443 -> 0.0.0.0:0: failed to connect to /var/run/com.docker.vmnetd.sock: is vmnetd running?: dial unix /var/run/com.docker.vmnetd.sock: connect: no such file or directory
Error: failed to start containers: c2b934c3dd5b28fd64a85cc427d35886f3e21ed1ea4a6f92c192f56bd8082511
❌ Error: Docker process returned with errorcode 1
```
Solution and [source](ttps://github.com/docker/for-mac/issues/6677#issuecomment-1593787335)
```bash
/Applications/Docker.app/Contents/MacOS/install remove-vmnetd
sudo /Applications/Docker.app/Contents/MacOS/install vmnetd
```
<hr/>

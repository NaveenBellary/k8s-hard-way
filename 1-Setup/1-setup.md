## Prerequisites.


- You Must have a DigitalOcean account and `Personal Access Token` must be generated on [DigitalOcean](https://www.digitalocean.com/docs/api/create-personal-access-token/).


### Create SSH Keys.


```command
ssh-keygen -t rsa
```
```
Generating public/private rsa key pair.
Enter file in which to save the key (~/.ssh/id_rsa): 
Created directory '~/.ssh/'.
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in ~/.ssh/id_rsa.
Your public key has been saved in ~/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:lCVaexVBIwHo++NlIxccMW5b6QAJa+ZEr9ogAElUFyY root@3b9a273f18b5
The key's randomart image is:
+---[RSA 2048]----+
|++.E ++o=o*o*o   |
|o   +..=.B = o   |
|.    .* = * o    |
| .   =.o + *     |
|  . . o.S + .    |
|   . +.    .     |
|    . ... =      |
|        o= .     |
|       ...       |
+----[SHA256]-----+

```

- You must link above created SSH key to [DigitalOcean] For that follow these [guidelines](https://www.digitalocean.com/docs/droplets/how-to/add-ssh-keys/create-with-openssh/)

- We are asuming your public keys and private keys are located at `~/.ssh/id_rsa.pub` and `~/.ssh/id_rsa`


## Create Nodes for Kubernetes cluster on DigitalOcean.


- Get a Fingerprint of Your SSH public key.


```command
ssh-keygen -lf ~/.ssh/id_rsa.pub
```
```
2048 00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff /Users/username/.ssh/id_rsa.pub (RSA)
```

- Export a Fingerprint shown in above output.


```command
export FINGERPRINT=00:11:22:33:44:55:66:77:88:99:aa:bb:cc:dd:ee:ff
```

- Export your DO Personal Access Token.


```command
export TOKEN=##########<Your Digital Ocean Personal Access Token>##########
```

- Now take a look at the directory.


```command
ls
```
```
1-setup.md   creation.sh  destroy.sh  key.tf  loadbalancer.tf  nodes.tf  outputs.tf  provider.tf

```

- Run the script.


```command
./creation.sh
```

- Export Load Balancer IP.


```command
export LOADBALANCER_IP=
```

- Export other components PrivateIP and PublicIP


```command
bash env.sh
```

- Reload shell.


```command
source ~/.bashrc
```

### Delete Cluster.



```command
./destroy.sh
```

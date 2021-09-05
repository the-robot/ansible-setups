# Ansible setups

<p align="center">
  <img src="https://i.redd.it/yf4j8mde9n341.jpg" width=280 />
</p>
  
# 1. Distro Setup

**NOTE:** this setup is made for myself so you will need to edit the ansible config for your own use.

## Arch Linux

Run the command below to automatically setup the arch linux with ansible playbook.

```sh
curl https://raw.githubusercontent.com/the-robot/ansible-setups/master/scripts/setup-arch.sh | sudo bash -s -- $(whoami)
```

## Debian

```sh
curl https://raw.githubusercontent.com/the-robot/ansible-setups/master/scripts/setup-debian.sh | sudo bash -s -- $(whoami)
```

<br/>

# 2. DE Setup

## XFCE

```sh
curl https://raw.githubusercontent.com/the-robot/ansible-setups/master/scripts/setup-xfce.sh | bash -s -- $(whoami)
```

<br/>

# 3. Contribution

Follow [Google Style Guide](https://google.github.io/styleguide/shellguide.html) for formatting the bash script.

<br/>

# 4. Tools not install automatically

- JetBrain IDE (CLion, GoLand, Data Grip)
- Lens (K8)

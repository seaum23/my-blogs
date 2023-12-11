# Installing certbot in amazon linux 2023 from pip

```bash
sudo dnf install -y augeas-libs
sudo python3 -m venv /opt/certbot/
sudo /opt/certbot/bin/pip install --upgrade pip
sudo /opt/certbot/bin/pip install certbot
sudo /opt/certbot/bin/pip install certbot-nginx
```

soft link to be able run certbot command from anywhere

```bash
sudo ln -s /opt/certbot/bin/certbot /usr/bin/certbot
```

# Following the apache conventions for sites-available and sites-enabled

Apache has `sites-available` and `sites-enabled` directory. In `sites-available` directory we have all our site configs. And the sites that are enabled are soft linked in the `sites-enabled` directory.

Also `sites-enabled` directory needs to be included in nginx config. [YouTube](https://youtu.be/R5d-hN9UtpU?si=ndW_LfDQT2jLdIUj)

```bash
sudo ln -s /etc/nginx/sites-available/*.conf /etc/nginx/sites-enabled/
```

# Installing supervisor

Amazon repo does not have `supervisor` using dnf or yum. Have to install using pip. However pip does not create any of the config files.

Following [this](https://www.18aproductions.co.uk/news/view/installing-supervisor-on-an-ec2-instance-running-aml2-amazon-linux-2#) tutorial I was able to run supervisor successfully.
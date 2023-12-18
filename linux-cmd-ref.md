Install deb pkg:
```bash
sudo dpkg -i /path/to/file.deb
```

Stopping a service
```bash
service <service-name> start/stop/restart
```

Starting xampp (run the manager.run)
```bash
sudo /opt/lampp/manager-linux-x64.run
```

Check for update
```bash
sudo apt-get update
```

Install pkg
```bash
sudo apt-get install <pkg-name>
```

Stripe webhook
```bash
stripe listen --forward-to localhost:8000/api/stripe-webhook
```

Sort Folders by size:
```bash
du -sh /var/www/webhooks.navidiumhooks.com/* | sort -hr
```

Get all branch from remote
```bash
git branch -a | grep -v HEAD | perl -ne 'chomp($_); s|^\*?\s*||; if (m|(.+)/(.+)| && not $d{$2}) {print qq(git branch --track $2 $1/$2\n)} else {$d{$_}=1}' | csh -xfs
```

```bash
git clone --mirror path/to/original path/to/dest/.git
cd path/to/dest
git config --bool core.bare false
git checkout anybranch
```

# ZabbixCheckDomainExpire
## Dependencies
perl, zabbix-agent, zabbix-sender
Tested with zabbix 3.2

## 1. Know Issue
Can't check domain .vn, because TLDs not support.

## 2. Prepare
Install `whois` package

`yum install -y whois`

## 3. Configure
1. Copy file `etc/whois.conf` to server with same path.

2. Copy file `domain-check.sh` to `/usr/lib/zabbix/externalscripts/` in server, make sure set permision `execute` and owner is `zabbix`.

3. Copy `domaindiscover.pl` and `domain.list` to `/etc/zabbix`, make sure set permision `execute` for file `.pl` and owner is `zabbix`.

4. Copy file in `zabbix-agent.d/domain_check.conf` to `/etc/zabbix-agent.d/domain_check.conf` on server

5. In Zabbix console, import tempale `zbx_export_templates.xml` and add template to zabbix host which just config above.

Happy monitoring!!!

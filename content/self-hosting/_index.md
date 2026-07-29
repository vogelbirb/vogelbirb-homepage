+++
title = "Self-hosting"
template = "index.html"
+++
I value having control over my own data and privacy, and self-host quite a few things (in my opinion).

## Services
These are some of the notable services I self-host:
1. [Wireguard](https://www.wireguard.com/)
    - I use this to connect to some of my more critical services and to estabilish a tunnel to the backup server at my friends house.
2. [Authelia](https://www.authelia.com/)
3. [Pi-Hole](https://pi-hole.net/)
4. [Nextcloud](https://nextcloud.com/)
5. [Immich](https://immich.app/)
6. [Zola](https://www.getzola.org/)
    - This is what this website currently runs on.
7. [Uptime Kuma](https://uptime.kuma.pet/)
8. [ntfy](https://ntfy.sh/)
    - I use ntfy to get notifications from Uptime Kuma, FMD, and Proxmox.
9. [Pelican Panel](https://pelican.dev/)
    - I run a few Minecraft servers to play with friends here.
10. [LibreChat](https://www.librechat.ai/)
    - I use LibreChat instead of Open WebUI because LibreChat just looks nicer in my opinion and is MIT-licensed. I use both local LLMs and LLMs through [OpenRouter](https://openrouter.ai/). You find more info about the local LLMs I run [here](@/local-llms/_index.md).
11. [FMD OSS](https://gitlab.com/fmd-foss/fmd-android)
12. [Vaultwarden](https://github.com/dani-garcia/vaultwarden)
13. [Vikunja](https://vikunja.io/)
14. [Paperless-ngx](https://docs.paperless-ngx.com/)
15. [Syncthing](https://syncthing.net/)
    - Not sure if this counts as self-hosting, but I use this to sync my Obsidian notes.

In the future, I plan to run frontends for various social media websites, such as YouTube and Reddit. For YouTube, I'll be hosting either [Individious](https://invidious.io/) or [Piped](https://github.com/TeamPiped/Piped), likely the former, and [Redlib](https://github.com/redlib-org/redlib) for Reddit. Also, I would love to setup some more complex monitoring with Grafana/Prometheus, as I'm simply using [Uptime Kuma](https://uptimekuma.org/).

## Hardware & Software
My server runs on my gaming pc, with an Intel Core i5-13600k, 32 GB of DDR4 RAM, AMD Radeon RX 6800 XT, and a 2 TB NVMe SDD. My on-site backup server has 1 TB of HDD storage. 

I use Proxmox with 2 VMs and 1 LXC, the first VM running Ubuntu 26.04 LTS, the second, being my gaming VM, running Fedora Silverblue, and third, the LXC, running Debian 13 Trixie. 

## Security
I use my Wireguard VPN to remotely connect to services that need extra security and thus are avaliable only in my LAN, such as Find My Device (FMD) OSS. For a majority of the services that are exposed to the open internet, especially the more niche ones, are behind Authelia and Cloudflare.

All my services run in Docker containers, except for Wireguard. I currently run Wireguard in an LXC, but I do plan to move it to a Docker container in my main server VM. They are also behind Caddy reverse proxy, with HTTPS/TLS whenever possible.

My server VM is protected by `ufw` and the Proxmox firewall. Additionally, the Proxmox firewall has rules that prevent it from initiating any connection with other devices in its LAN.

## Backups
For backups, I follow the 3-2-1 rule: **3 copies** of the data, stored on **2 different types of storage media**, and **one** copy should be kept **offsite**.

Previously, I used to run a an offsite backup server at my friend's house; however, I can't do that anymore, so I'll likely be backing up my data to [Backblaze](https://www.backblaze.com/).

On-site, I run Proxmox Backup Server on a spare laptop.

+++
title = "Self-hosting"
template = "index.html"
+++
I value having control over my own data and privacy, and self-host quite a few things (in my opinion).

## Services
These are some of the notable services I self-host:
1. [Wireguard](https://www.wireguard.com/)
    - I use this to connect to some of my more critical services and to estabilish a tunnel to the backup server at my friends house.
2. [Pi-Hole](https://pi-hole.net/)
    - As of June 2026, I still haven't finished setting this up but I plan to.
3. [Nextcloud](https://nextcloud.com/)
4. [Immich](https://immich.app/)
5. [Zola](https://www.getzola.org/)
    - This is what this website currently runs on.
6. [Plausible Analytics](https://plausible.io/)
    - Used for analytics on my websites.
7. [ntfy](https://ntfy.sh/)
8. [Pelican Panel](https://pelican.dev/)
    - I run a few Minecraft servers to play with friends here.

In the future, I plan to run frontends for various social media websites, such as YouTube and Reddit. For YouTube, I'll be hosting either [Individious](https://invidious.io/) or [Piped](https://github.com/TeamPiped/Piped), likely the former, and [Redlib](https://github.com/redlib-org/redlib) for Reddit. Also, I would love to setup some more complex monitoring with Grafana/Prometheus, as I'm simply using [Uptime Kuma](https://uptimekuma.org/).

## Hardware & Software
My server runs on an old laptop I have, with an Intel Core i7-1065G7, 20 GB of DDR4 RAM, and a 256 GB NVMe SDD. My on-site and offsite backup servers have 500 GB and 1 TB of HDD storage respectively. 

I use Proxmox with VMs, running Ubuntu 24.04 LTS, and LXCs, running Debian 13 Trixie.

## Backups
For backups, I follow the 3-2-1 rule: **3 copies** of the data, stored on **2 different types of storage media**, and **one** copy should be kept **offsite**.

I run two Proxmox Backup servers, one at my house, near the main server, and one in my friend's house.


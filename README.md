# Usefull bash scripts
Bash scripts that I suppose to be usefull

## Make auto disable cpu autostart with systemd

    - Create a [file].service at /etc/systemd/system containing :

`
[Unit]
Description=Automate disabling CPUs on low battery.

[Service]
Type=simple
ExecStart=/bin/bash /home/[user]/auto_disable_cpu.sh

[Install]
WantedBy=multi-user.target
`

    - `chmod 644 /etc/systemd/system/[file].service`

    - `# systemctl enable [file].service`

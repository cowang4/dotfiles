#!/bin/sh
rsync -rl $HOME/Documents root@lightning:/root/backups/volt --exclude $HOME/Documents/SideProjects/my-mycroft
rsync -rl $HOME/.ssh root@lightning:/root/backups/volt
rsync -rl $HOME/.bpb_keys.toml root@lightning:/root/backups/volt/.bpb_keys.toml

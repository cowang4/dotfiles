#!/bin/sh
rsync -rlP $HOME/Documents pi@shock:/media/1TB_Drive/Backups/volt \
  --exclude $HOME/Documents/SideProjects/my-mycroft \
  --exclude $HOME/Documents/SideProjects/new-site/target \
  --exclude $HOME/Documents/School/Thesis/dht/target
rsync -rlP $HOME/.ssh pi@shock:/media/1TB_Drive/backups/volt
rsync -rlP $HOME/.bpb_keys.toml pi@shock:/media/1TB_Drive/backups/volt/.bpb_keys.toml
rsync -rlP $HOME/Pictures pi@shock:/media/1TB_Drive/backups/volt

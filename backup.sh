#!/bin/sh
rsync -rlPvv $HOME/.ssh pi@shock:/media/1TB_Drive/Backups/volt
rsync -rlPvv $HOME/.bpb_keys.toml pi@shock:/media/1TB_Drive/Backups/volt/.bpb_keys.toml
rsync -rlPvv $HOME/Pictures pi@shock:/media/1TB_Drive/Backups/volt
rsync -rlPvv $HOME/Documents pi@shock:/media/1TB_Drive/Backups/volt \
  --exclude $HOME/Documents/SideProjects/my-mycroft \
  --exclude $HOME/Documents/SideProjects/new-site/target \
  --exclude $HOME/Documents/School/Thesis/dht/target

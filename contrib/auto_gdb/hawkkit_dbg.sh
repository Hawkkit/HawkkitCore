#!/bin/bash
# use testnet settings,  if you need mainnet,  use ~/.hawkkitcore/hawkkitd.pid file instead
hawkkit_pid=$(<~/.hawkkitcore/testnet3/hawkkitd.pid)
sudo gdb -batch -ex "source debug.gdb" hawkkitd ${hawkkit_pid}

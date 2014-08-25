#!/bin/bash -eux

case "$PACKER_BUILDER_TYPE" in

virtualbox-iso|virtualbox-ovf|vmware-iso|vmware-ovf)

    dd if=/dev/zero of=/EMPTY bs=1M
    rm -f /EMPTY
# Block until the empty file has been removed, otherwise, Packer
# will try to kill the box while the disk is still full and that's bad
    sync
    ;;

*)
    echo "Unknown Packer Builder Type >>$PACKER_BUILDER_TYPE<< selected."
    echo "Known are virtualbox-iso|virtualbox-ovf|vmware-iso|vmware-ovf."
    ;;

esac

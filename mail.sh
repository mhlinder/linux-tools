#!/bin/bash

mbsync mhlinder-all

# https://github.com/djcb/mu/issues/8#issuecomment-396649525
if pgrep -f 'mu server'; then
    emacsclient -e '(mu4e-update-index)'
else
    mu index --maildir=~/Dropbox/mail/mhlinder-all
fi

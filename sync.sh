#!/bin/sh

set -ex

rsync -avz --delete-after --include='draft-*.txt' --exclude='*' rsync.ietf.org::internet-drafts drafts
rsync -avz --delete-after --include='rfc*.txt'    --exclude='*' ftp.rfc-editor.org::rfcs-text-only rfcs

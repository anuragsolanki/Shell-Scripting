#!/bin/bash
 FILENAME=backup_$(date +%d_%m_%y_%H%M).tar.gz
 tar -czf $FILENAME ./my-project-to-backup/

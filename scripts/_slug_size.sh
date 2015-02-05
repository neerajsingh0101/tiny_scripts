#!/bin/bash

bundle show --paths | xargs -L 1 du -s | sort -n -r | head -n 20

#! /bin/bash

sawfish -V 2>&1 | grep -qxF "sawfish 2.1.1" || exit 1
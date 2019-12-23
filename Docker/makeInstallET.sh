#!/bin/bash

bash generateBuild.sh && dpkg -i build/et*.deb && bash installService.sh

#!/usr/bin/env bash

clear
flatpak-builder --repo=testing-repo --force-clean build-dir com.zandronum.Zandronum.yaml
flatpak --user remote-add --if-not-exists --no-gpg-verify zand-testing-repo testing-repo
flatpak --user install zand-testing-repo com.zandronum.Zandronum -y
flatpak --user install zand-testing-repo com.zandronum.Zandronum.Debug -y
flatpak update -y


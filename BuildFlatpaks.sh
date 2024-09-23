#!/bin/bash
# Build Flatpaks in repo directory
flatpak run org.flatpak.Builder --force-clean --repo=repo build-dir org.winehq.WineStaging.yml

# Build Flatpak bundles for WineStaging. WineStaging.mono and WineStaging.gecko
flatpak build-bundle repo WineStaging9.18.flatpak org.winehq.WineStaging stable-23.08
flatpak build-bundle --runtime repo WineStaging.mono9.3.0.flatpak org.winehq.WineStaging.mono stable-23.08
flatpak build-bundle --runtime repo WineStaging.gecko2.47.4.flatpak org.winehq.WineStaging.gecko stable-23.08
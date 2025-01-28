#!/bin/bash
# Install Flatpak Builder, required Platform/SDK and extensions
flatpak install flathub org.flatpak.Builder org.freedesktop.Platform//24.08 org.freedesktop.Sdk//24.08 org.freedesktop.Sdk.Compat.i386//24.08 org.freedesktop.Sdk.Extension.toolchain-i386//24.08 org.freedesktop.Sdk.Extension.mingw-w64//24.08

# Build Flatpaks in repo directory
flatpak run org.flatpak.Builder --force-clean --repo=repo build-dir org.winehq.WineStaging.yml

# Build Flatpak bundles for WineStaging. WineStaging.mono and WineStaging.gecko
flatpak build-bundle repo WineStaging10.0.flatpak org.winehq.WineStaging stable-24.08
flatpak build-bundle --runtime repo WineStaging.mono9.4.0.flatpak org.winehq.WineStaging.mono stable-24.08
flatpak build-bundle --runtime repo WineStaging.gecko2.47.4.flatpak org.winehq.WineStaging.gecko stable-24.08
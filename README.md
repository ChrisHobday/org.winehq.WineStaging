# WineStaging, WineStaging.mono, and WineStaging.gecko Flatpaks
## Installing
- Download WineStaging10.0.flatpak, WineStaging.mono9.4.0.flatpak, and WineStaging.gecko2.47.4.flatpak from releases
- Install WineStaging10.0.flatpak, WineStaging.mono9.4.0.flatpak, and WineStaging.gecko2.47.4.flatpak (sudo needed for installing single use Flatpak bundle)
```console
sudo flatpak install WineStaging10.0.flatpak
```
```console
sudo flatpak install WineStaging.mono9.4.0.flatpak
```
```console
sudo flatpak install WineStaging.gecko2.47.4.flatpak
```
## Using
- Launch the WineStaging Flatpak with a exe file
```console
flatpak run org.winehq.WineStaging example.exe
```
or
- Install a Flatpak that uses WineStaging as a base and launch that Flatpak itself
## Uninstalling
- Remove WineStaging, WineStaging.mono, and WineStaging.gecko Flatpaks
```console
flatpak remove org.winehq.WineStaging org.winehq.WineStaging.mono org.winehq.WineStaging.gecko
```
## Downloading/Cloning this repo
- Click the green button to download zip and extract once downloaded or clone repo with
```console
git clone --recurse-submodules https://github.com/ChrisHobday/org.winehq.WineStaging
```
## Building
- Install Flatpak builder
```console
flatpak install flathub org.flatpak.Builder
```
- Install the platform/sdk and extensions this Flatpak will be using
```console
flatpak install flathub org.freedesktop.Platform//24.08 org.freedesktop.Sdk//24.08 org.freedesktop.Sdk.Compat.i386//24.08 org.freedesktop.Sdk.Extension.toolchain-i386//24.08 org.freedesktop.Sdk.Extension.mingw-w64//24.08
```
- Build the Flatpak with flatpak-builder (Run this from within the org.winehq.WineStaging directory)
```console
flatpak run org.flatpak.Builder --force-clean --repo=repo build-dir org.winehq.WineStaging.yml
```
## User installation while building
- Replace last Building step with
```console
flatpak run org.flatpak.Builder --force-clean --repo=repo --user --install build-dir org.winehq.WineStaging.yml
```
## Building single use Flatpak bundles like in the releases (After having followed the Building steps above)
- Build the Flatpak bundles (Run this from within the org.winehq.WineStaging directory after having followed the Building steps above)
```console
flatpak build-bundle repo WineStaging10.0.flatpak org.winehq.WineStaging stable-24.08
```
```console
flatpak build-bundle --runtime repo WineStaging.mono9.4.0.flatpak org.winehq.WineStaging.mono stable-24.08
```
```console
flatpak build-bundle --runtime repo WineStaging.gecko2.47.4.flatpak org.winehq.WineStaging.gecko stable-24.08
```
## Troubleshooting
- Check if Flatpaks are installed
```console
flatpak list | grep WineStaging
```
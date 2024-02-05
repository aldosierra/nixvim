# Nixvim config

My personal neovim config with nixvim.

## Index
- [ Change configuration. ](#change-configuration)
- [ Testing your new configuration. ](#testing-your-new-configuration)

## Change configuration.

To modify configuring, just add or modify nix files in `./config`.
If you add a new configuration file, remember to add it to the
[`config/default.nix`](./config/default.nix) file.

## Testing your new configuration.

To test your configuration simply run the following command.

```console
nix run .
```

{config, pkgs, ...}: {
  programs.bash = {
    enableCompletion = true;
    # TODO add your custom bashrc here
    # # bashrcExtra = ''
    # #   export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    # # '';

    # set some aliases, feel free to add more or remove some
    shellAliases = {
      recycle="nix-collect-garbage";
      rebuild="nixos-rebuild switch --flake /etc/nixos/flake.nix";
    };
  };
}
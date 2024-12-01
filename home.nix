{ config, pkgs, ... }:

{
  home.username = "matt";
  home.homeDirectory = "/home/matt";

  home.packages = with pkgs; [
    # CLI tools
    fzf
    gcc # Needed for treesitter
    tldr
    ripgrep # Required for nvim-telescope

    # Config
    stow

    # Terminal
    wezterm
    tmux
    tmux-sessionizer
  ];

  # TODO: add personal email address using env vars to avoid leaking.
  # programs.git = {
  #   enable = true;
  #   userName = "Matt Gallagher";
  #   userEmail = personalEmailAddress;
  # };

  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}

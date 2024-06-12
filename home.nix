{ config, pkgs, ... }: {

  home.username = "o0th";
  home.homeDirectory = "/home/o0th";

  home.packages = [
    pkgs.home-manager
    pkgs.wl-clipboard
    pkgs.tmux 
    pkgs.hyprlock
  ];

  programs.git = {
    enable = true;
    userName = "o0th";
    userEmail = "o0th@pm.me";
  };

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    extraConfig = builtins.readFile ./hyprland/hyprland.conf;
    # plugins = [ hy3.packages.x86_64-linux.hy3 ];
  };

  programs.hyprlock = {
    enable = true;
  };

  imports = [
    ./pkgs/tmux
  ];

  home.stateVersion = "24.05";
}

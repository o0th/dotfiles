{ config, pkgs, ... }: {
  programs.home-manager.enable = true;

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

  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile ./../tmux/tmux.conf;
    plugins = with pkgs.unstable.tmuxPlugins; [
      sensible
      yank
      extrakto
      tmux-nova
      {
        plugin = tmux-nova;
	extraConfig = builtins.readFile ./../tmux/tmux-nova.conf;
      }
    ];
  };

  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;
    xwayland.enable = true;
    extraConfig = builtins.readFile ./../hyprland/hyprland.conf;
    # plugins = [ hy3.packages.x86_64-linux.hy3 ];
  };

  programs.hyprlock = {
    enable = true;
  };

  home.stateVersion = "24.05";
}

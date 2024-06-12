{ config, pkgs, ... }: {
  programs.tmux = {
    enable = true;
    extraConfig = builtins.readFile ./default.conf;
    plugins = [
      pkgs.tmuxPlugins.sensible
      pkgs.tmuxPlugins.yank
      pkgs.tmuxPlugins.extrakto
      # pkgs.unstable.tmuxPlugins.tmux-nova
      {
        plugin = pkgs.unstable.tmuxPlugins.tmux-nova;
        extraConfig = builtins.readFile ./../tmux-nova/default.conf;
      }
    ];
  };
}

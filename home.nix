{ pkgs, ... }: {

  home.username = "jan";
  home.homeDirectory = "/var/home/jan";
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  targets.genericLinux.enable = true;

  home.packages = with pkgs; [
    vscode
    wl-clipboard
    neofetch
    fastfetch
  ];

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  imports = [
	./fish
	./nvim
];
}

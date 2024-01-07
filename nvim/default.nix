{pkgs, ...}: {
programs.neovim = {
    enable = true;
    vimAlias = true;
    extraPackages = [
      pkgs.nodejs
    ];
  };
}
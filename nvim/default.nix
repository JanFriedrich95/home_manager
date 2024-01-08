{pkgs, ...}: {
programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    extraPackages = [
      pkgs.nodejs
    ];
  };
}

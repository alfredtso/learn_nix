let
  pkgs = import <nixpkgs> {};
in
  pkgs.mkShell {
    packages = [
      pkgs.python3
      pkgs.neovim
      pkgs.tmux
      pkgs.git
    ];

    env = {
      EDITOR="nvim";
    };

    shellHook = ''
      echo "Hello Wolrd" > should_exist.txt
    '';
  }

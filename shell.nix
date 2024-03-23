let
    pkgs = import <nixpkgs> {};
in
    pkgs.mkShell {

        packages = with pkgs; [
            quarto
            texlive.combined.scheme-full
            ];
        QUARTO_PANDOC = "${pkgs.pandoc}/bin/pandoc";
    }

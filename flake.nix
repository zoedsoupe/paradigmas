{
  description = "Estudos sobre paradigmas de linguagens de programação";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};

        haskellPackages = pkgs.haskellPackages;

        packageName = "paradigmas";

        agda = pkgs.agda.withPackages (p: [ p.standard-library ]);
      in {
        devShell = pkgs.mkShell {
          buildInputs = with haskellPackages; [
            ghc
            agda
          ];
        };
      });
}

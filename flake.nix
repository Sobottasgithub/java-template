{
  description = "A collection of flke templates";

  inputs.flake-parts.url = "github:numtide/flake-parts";

  outputs = inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake {
      templates = {

        empty = {
          path = ./empty;
          description = "Empty flake";
        };

        java = {
          path = ./java;
          description = "Java template";
          welcomeText = ''
            # Getting started
            - Run `nix run`
          '';
        };
      };

    templates.default = self.templates.empty;
  };
}

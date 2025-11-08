{
  description = "A collection of flake templates";

  outputs = { self }: {

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

{pkgs,...}:{

  environment.systemPackages = with pkgs; [
    ansible-core
    molecule
   ];
}

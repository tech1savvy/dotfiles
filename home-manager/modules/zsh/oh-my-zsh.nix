{
  programs.zsh.oh-my-zsh = {
    enable = true;

    plugins = [
      "git"
      "sudo"
      "docker"
      "golang"
      "kubectl"
      # "kubectx"
      # "rust"
      "command-not-found"
      # "pass"
      # "helm"
    ];
  };
}

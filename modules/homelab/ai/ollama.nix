{
  services.ollama = {
    enable = true;

    port = 11434;

    loadModels = [
      "mevatron/diffsense:0.5b"
    ];
  };
}

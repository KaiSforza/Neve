{
  lib,
  config,
  ...
}:
{
  options = {
    toggleterm.enable = lib.mkEnableOption "Enable Toggle term with ^t as a shortcut";
  };
  config = lib.mkIf config.toggleterm.enable {
    plugins.toggleterm = {
      enable = true;
      settings = {
        open_mapping = "[[<C-t>]]";
      };
    };
  };
}

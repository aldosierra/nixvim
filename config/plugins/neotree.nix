{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    eventHandlers = {
      file_opened = ''
        function (file_path)
          require("neo-tree.command").execute({ action = "close" })
        end
      '';
    };
  };
}

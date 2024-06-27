{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    eventHandlers = {
      file_opened = /*lua*/ ''
        function (file_path)
          require("neo-tree.command").execute({ action = "close" })
        end
      '';
    };
  };
}

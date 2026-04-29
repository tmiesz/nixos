{
  programs.zed-editor = {
    enable = true;

    extensions = [
      "html"
      "nix"
      "csharp"
      "ultraviolet-theme"
      "charmed-icons"
    ];

    userSettings = {
      ### THEMES ###
      theme = "ultraViolet";
      icon_theme = "Base Charmed Icons";

      vim_mode = true;
      relative_line_numbers = "enabled";

      format_on_save = "on";
      autosave = {
        after_delay = {
          milliseconds = 1000;
        };
      };
      lsp.nix = {
        binary = {
          path_lookup = true;
        };
      };
      languages.Nix.language_servers = [
        "nixd"
        "!nil"
      ];
    };

    userKeymaps = [
      ### NAVIGATION ###
      {
        bindings = {
          "ctrl-h" = "workspace::ActivatePaneLeft";
          "ctrl-l" = "workspace::ActivatePaneRight";
          "ctrl-k" = "workspace::ActivatePaneUp";
          "ctrl-j" = "workspace::ActivatePaneDown";
        };
      }
      {
        context = "!Terminal && vim_mode != insert";
        bindings = {
          "tab" = "pane::ActivateNextItem";
          "shift-tab" = "pane::ActivatePreviousItem";
        };
      }

      ### FILE EXPLORER ###
      {
        context = "ProjectPanel && not_editing";
        bindings = {
          "a" = "project_panel::NewFile";
          "A" = "project_panel::NewDirectory";
          "r" = "project_panel::Rename";
          "d" = "project_panel::Delete";
          "x" = "project_panel::Cut";
          "c" = "project_panel::Copy";
          "p" = "project_panel::Paste";
        };
      }
    ];
  };
}

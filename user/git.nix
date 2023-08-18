{
  enable = true;

  userName = "Alex Fedoseev";
  userEmail = "alex@fedoseev.mx";

  aliases = {
    dm = "!git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d";
    irebase = "!r() { git rebase -i HEAD~$1; }; r";
    history = "log --pretty=format:'%C(yellow)%h%C(reset) - %s %C(dim)%ad <%an>' --date=relative";
  };

  extraConfig = {
    core = {
      editor = "nvim";
      ignorecase = false;
    };

    color = {
      ui = "auto";
    };

    push = {
      default = "simple";
      followTags = true;
    };

    http = {
      postBuffer = 524288000;
    };
  };

  ignores = [
    ".envrc"
    ".direnv"
    ".idea"
    ".DS_Store"
    "SIDENOTES-*.md"
  ];
}

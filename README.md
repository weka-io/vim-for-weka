Vim for Weka
============

A collection of Vim configurations for Weka developers.

If you want to add things to this repository, Please read
[CONTRIBUTING.md](CONTRIBUTING.md) first.

Features
========

* ALE linter that uses Weka's LDC fork and sets Weka's import paths. It is set
  automatically to replace the default DMD-based linter when editing D files in
  the Weka project directory.

    Requirements & configurations:
    * ALE(obviously) - https://github.com/w0rp/ale
    * Build Weka's LDC fork - https://github.com/weka-io/ldc
      * On Mac with Homebrew, `brew tap weka-io/homebrew-ldc && brew install ldc-weka`
    * In your vimrc, set `g:weka_ldcPath` to the path of LDC2 binary you built

* Setting Python paths so that [JEDI](https://github.com/davidhalter/jedi-vim)
  can perform autocompletion correctly.

* `:WekaBuildErrors` command: fills the quickfix list with compilation errors
  fetched from the build server.

    * Set `g:weka_useDeka` to `1` to use `deka` instead of `teka`.

* `:WekaTestErrors` command: fills the quickfix list with Python exceptions
  from `testlight.log`.

    * Set `g:weka_logsDir` to the dir containing the log files. The default is
      `~/tmp/weka/logs`.
    * Provide a build key as argument to fetch logs from a Bamboo/Reggie build.
      Set `g:weka_useDeka` to `1` to use `deka logs` instead of `teka logs`
      when fetching from S3.

* `scripts/viewer-nvim.py` - a script for opening Neovim from the trace
  viewer(when pressing `V`).

    Requirements & configurations:
    * `pip install plumbum`
    * `pip install neovim`
    * When running the viewer, set the `WEKA_SRC_VIEWER` to the path of the
      script.

    The script can run with both Python2 and Python3, but you'll need to
    install the `plumbum` and `neovim` packages for the version you use. To
    force the script to run with the specific version, set `WEKA_SRC_VIEWER` to
    launch the specific Python interpreter:
    ```
    export WEKA_SRC_VIEWER='python3 /path/to/viewer-nvim.py'
    ```

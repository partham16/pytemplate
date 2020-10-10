# [pytemplate](https://github.com/partham16/pytemplate)

Creating a <u>template</u> repo for `Python` with **black, flake8, pylint, mypy, pytest, pre-commit** set up

> Also, adding `devcontainer.json` file for *remote* **codespaces** settings

## Formatting **`devcontainer.json`**
 >> includes `settings.json` info - can be set up in [**`.vscode/settings.json`**](https://vscode.readthedocs.io/en/latest/getstarted/settings/) too (*works for local too*)
- [`vscode-dev-containers` for `python3`](https://github.com/microsoft/vscode-dev-containers/tree/master/containers/python-3)
 > includes both `devcontainer.json` and `Dockerfile`
- [Remote containers - *getting started*](https://code.visualstudio.com/docs/remote/containers#_getting-started)
 > use *prebuilt* `docker image`, set up **vscode extensions** etc.
- [`devcontainer.json` reference](https://code.visualstudio.com/docs/remote/devcontainerjson-reference)
 > all `key:value` properties like `image`, `dockerFile`, `extensions`, `settings`, `forwardPorts`, `postCreateCommand` etc.

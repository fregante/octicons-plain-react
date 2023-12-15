# octicons-plain-react [![npm version](https://img.shields.io/npm/v/octicons-plain-react.svg)](https://www.npmjs.com/package/octicons-plain-react)

> A rebuild of @primer/octicons to use lightweight React components

*The GITHUB trademark is owned by GitHub, Inc. This repository is not associated with GitHub.*

- [`@primer/octicons-react`](https://github.com/primer/octicons/tree/main/lib/octicons_react#readme) uses advanced React features I don't need.
- [`@primer/octicons`](https://github.com/primer/octicons/tree/main/lib/octicons_node#readme) does not include `octicon-*` classes. [Report](https://github.com/primer/octicons/issues/997)

So this package simplifies import by the [Refined GitHub](https://github.com/sindresorhus/refined-github/) extension by just exporting pre-built React components with the required classes.

## Install

```sh
npm install octicons-plain-react
```

## Usage

```js
import AlertIcon from "octicons-plain-react/alert";

<AlertIcon/>
```

## Publishing

1. GitHub Actions runs `bump-and-publish.sh`
2. It fetches the latest version of @primer/octicons
3. It sets its own version to match that
4. The version script is called and it installs its own version
5. `git add` is called to ensure these changes are saved in the tag itself
6. If the version change is successful, `npm publish` is run
7. Publishing calls `prepack.sh`, which builds the components and runs all the transforms
8. The new files are published to npm

## License

MIT © GitHub Inc

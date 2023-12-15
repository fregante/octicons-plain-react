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

## License

MIT © GitHub Inc

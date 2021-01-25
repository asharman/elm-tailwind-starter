# elm-tailwind-starter

`elm-tailwind-starter` is a starting project to quickly bootstrap an Elm application with TailwindCSS.

It uses snowpack as a local build tool and [@snowpack/plugin-webpack](https://www.snowpack.dev/concepts/build-pipeline#bundle-for-production) for production builds.

## Creating a new project

You can create a new project by cloning this repo

Steps:

```
git clone https://github.com/asharman/elm-tailwind-starter.git
mv elm-tailwind-starter my-amazing-project
cd my-amazing-project
rm -rf .git
git init && git add . && git commit -m "initial commit"
npm install
```

## `$ npm start`

Runs the development server with HMR.

Edit `src/Main.elm` and save to reload the browser.

## `$ npm run build`

Creates an optimized build of the app in the `build` folder.

## Tooling

[elm-tooling-cli](https://elm-tooling.github.io/elm-tooling-cli/) is used to manage `elm` `elm-json` and `elm-format` the versions and config are in `elm-tooling.json`. 

For more info check out [Elm Radio Episode #22](https://elm-radio.com/episode/elm-tooling).

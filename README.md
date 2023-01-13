# Doc-e-mate, your document's best friend

This repository holds the web api for the ReScript version
of Doc-e-mate, a tool that allows you to generate and print documents written in
Markdown, styled in CSS, with business data injected from JSON or YAML files.

```
> Text     + Data  + Style  ->  Beautiful Business Documents
> HTML     + Json  + CSS    ->  Beautiful Business Documents
> Markdown + YAML  + SASS   ->  Beautiful Maintainable Business Document
```

*This is an interface for the split version of the
https://github.com/enspirit/dem-rescript project*

Refer to https://github.com/enspirit/dem-core-rescript and
https://github.com/enspirit/dem-fsi-rescript for a documentation of
the core and the file system interface of the tool.

Use the `compile` service to generate an html string from markdown, css and
json sources in specific files.

*TODO: continue*

## Hacking

Doc-e-mate is written in ReScript, with great help from the
following libraries:
* mustache.js, see https://mustache.github.io/
* markdown-it, see https://github.com/markdown-it/markdown-it and https://spec.commonmark.org/

First clone the repository.

### The docker way

We recommand using the docker images to run the api and develop the software.

#### Running the api

To run the api image and watch the logs of its container:

```
make api.up api.logs
```

#### Building the sources

Open a bash on the api container, and run the watch mode of the rescript
compiler:

```
make api.bash
npm run res:start
```

Then edit the ReScript sources located in the `api/src` folder. Each time you
save the sources, the compiler will produce the corresponding javascript files
in the `api/lib/js/src` folder in the container, and the run api will be
automatically reloaded.

#### Running the integration tests

```
make tests.integration
```

### Without docker

You can run the npm commands directly on your machine. First initialize your dev
environment:

```
npm install
```

And to get the list of available commands:

```
npm run
```

 ## Publishing

 All the releases were published using `np` so far. Cf.
 https://github.com/sindresorhus/np

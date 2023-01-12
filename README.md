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

*TODO*

## Hacking

Doc-e-mate is written in ReScript, with great help from the
following libraries:
* mustache.js, see https://mustache.github.io/
* markdown-it, see https://github.com/markdown-it/markdown-it and https://spec.commonmark.org/

### Getting started with the source code

Clone the repository, then run the following command to initialize your dev
environment:

```
npm install
```

### Building the tool

You can build the program with

```
npm run re:build
```

or in watch mode with

```
npm run re:start
```

### Running tests

You can run the tests in watch mode using:

```
npm run testw
```

## Using the docker images

*TODO*

 ## Publishing

 All the releases were published using `np` so far. Cf.
 https://github.com/sindresorhus/np

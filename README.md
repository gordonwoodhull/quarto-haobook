# Proof-of-Concept Implementation of [haobook](https://github.com/ParaN3xus/haobook) Typst book template for Quarto

This is a proof-of-concept implementation of a Quarto format extension implementing a Quarto book project using the Typst [haobook](https://github.com/ParaN3xus/haobook) book template.

I don't intend to maintain this, so I am archiving it. If you fork this and want to be listed as a maintained fork, [contact me](mailto:gordon.woodhull@posit.co).

## Usage

In your `_quarto.yml`:

```yaml
project:
  type: book

format: haobook-typst
```

## Known issues

Although haobook already has Marginalia built-in, and integrates well with [Quarto article layout features](https://quarto.org/docs/authoring/article-layout.html), there are extra references, double-citations, and other glitches. 

I think these should be solvable through changes to Typst templates and Lua filters in the extension, but if this needs any changes on Quarto core to get right, please [open a discussion on Quarto](https://github.com/orgs/quarto-dev/discussions).

## Requirements

- Quarto >= 1.9.18
- The `haobook` Typst package (automatically imported and bundled with [typst-gather](https://prerelease.quarto.org/docs/advanced/typst/typst-gather.html))

## Windows Users

The test directories use symlinks to the `_extensions` folder. On Windows, you may need to enable Developer Mode or run `git config --global core.symlinks true` before cloning.

## License

MIT

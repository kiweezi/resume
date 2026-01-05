# Resume

My resume created with [Typst](https://typst.app/).

It uses the [lavandula](https://typst.app/universe/package/lavandula) template, with some minor modifications.

![resume-png](https://github.com/kiweezi/resume/releases/latest/download/resume.png)

## Setup

Prep your local environment to modify and compile this resume.

**Use the devcontainer for this repo, which will set you up perfectly.**

Otherwise you'll need the following components:

- [Typst cli](https://github.com/typst/typst)
- [Fira Sans](https://fonts.google.com/specimen/Fira+Sans) and [Font Awesome 7](https://fontawesome.com/download) fonts installed on your system, or placed a folder with the path `assets/fonts/*`
- [Just](https://github.com/casey/just) - or you can simply copy and run the scripts in the [justfile](justfile)

## Usage

Make changes and compile locally:

1. Modify the [resume.typ](resume.typ) file with your changes.
1. Preview the file by selecting `Typst Preview:` with the command palette, which uses the [Tinymist](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) vscode extension.
1. Compile to a .pdf with the command: `just compile`.
1. Commit your changes and merge them.
1. Run the [release action](https://github.com/kiweezi/resume/actions/workflows/release.yml) with your selected version change.
1. Download the `resume.pdf` from the newly created release.

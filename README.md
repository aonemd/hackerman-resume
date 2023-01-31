Markdown Résumé Template
---

My Markdown résumé template

## Demo

[https://aonemd.github.io/markdown-resume-template/](https://aonemd.github.io/markdown-resume-template/)

## Installation

### via Docker
- Make sure you have `docker` installed on your machine
- Add changes to `resume.md` in [`Markdown`](https://www.markdownguide.org/getting-started/)
- Run `./install docker` to build the resume as a PDF file
- Run `./install open` to open the PDF version in your default PDF reader

### Natively
- You need to have the following installed on your system
  * [`pandoc`](https://pandoc.org/installing.html)
  * `texlive`. [Install on Ubuntu](https://www.howtoinstall.me/ubuntu/18-04/texlive/)
  * [`wkhtmltopdf`](https://wkhtmltopdf.org/downloads.html) for generating HTML
- Add changes to `resume.md` in [`Markdown`](https://www.markdownguide.org/getting-started/)
- Run `./install build` to build the PDF version
- Run `./install build-html` to build the HTML version
- Run `./install open` to open the PDF version in your default PDF reader

## LICENSE

See [LICENSE](https://github.com/aonemd/markdown-resume-template/blob/master/LICENSE).

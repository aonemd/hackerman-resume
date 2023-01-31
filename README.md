<div align="center">
  <h1>
    Hackerman Résumé Template
  </h1>

  Your average Hackerman Markdown résumé (French, classy!) template

  ![HACKERMAN](https://user-images.githubusercontent.com/16504838/215842768-31130992-24b0-4de5-ac36-347ad9172ae7.png)
</div>

## Demo

[https://aonemd.github.io/hackerman-resume/](https://aonemd.github.io/hackerman-resume)

## Installation

### via Docker
- Make sure you have `docker` installed on your machine
- Add changes to `resume.md` in [`Markdown`](https://www.markdownguide.org/getting-started/)
- Run `./build.sh build-docker` to build the resume as a PDF file
- Run `./build.sh open` to open the PDF version in your default PDF reader

### Natively
- You need to have the following installed on your system
  * [`pandoc`](https://pandoc.org/installing.html)
  * `texlive`. [Install on Ubuntu](https://www.howtoinstall.me/ubuntu/18-04/texlive/)
  * [`wkhtmltopdf`](https://wkhtmltopdf.org/downloads.html) for generating HTML
- Add changes to `resume.md` in [`Markdown`](https://www.markdownguide.org/getting-started/)
- Run `./build.sh build` to build the PDF version
- Run `./build.sh build-html` to build the HTML version
- Run `./build.sh open` to open the PDF version in your default PDF reader

## LICENSE

See [LICENSE](https://github.com/aonemd/hackerman-resume/blob/master/LICENSE).

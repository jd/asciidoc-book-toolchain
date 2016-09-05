# AsciiDoc Book Toolchain

This repository contains a basic toolchain used to publish book using
[AsciiDoc]. It compiles the book down to:

  - HTML
  - PDF
  - PDF (printable)
  - ePub
  - MOBI

This toolchain has been created and is used in the first place to publish
[The Hacker's Guide to Python].

# Require software:
- [AsciiDoc]
- Xetex
- [Calibre]
- [Ghostscript]

## Usage

The book content should be written in the `book.txt` source file. Once you've
made some change you can recompile all the output formats by typing `make`, or
selecting each one you want by typing `make book.<format>`: such as:

  - `make book.pdf`
  - `make book.epub`
  - `make book.mobi`
  - `make book.html`
  - `make book.printable.pdf`

## Difference between the normal and printable PDF

The `Makefile` generates two different PDF format. The first one named
`book.pdf` is for the electronic version of the book, and embed the cover
image. The second one, named `book.printable.pdf` is intended to be printed on
paper, so it does not include the cover and have slightly different dimensions.


   [AsciiDoc]: <http://www.methods.co.nz/asciidoc/>
   [The Hacker's Guide to Python]: <https://thehackerguidetopython.com>
   [Calibre]: https://calibre-ebook.com/
   [Ghostscript]: http://www.ghostscript.com/

Class Notes
===========

I keep my class notes here.  For some reason.

I do notes in Org-Mode.  Not because of any massive love of Org Mode.  For
general writing, I prefer Markdown.  Org's main strength is (somewhat)
Markdown-esque syntax, but with LaTeX integration, and an admittedly sweet plain
text table mode.  Unfortunately, GitHub's org-mode rendering is pretty bad, and
doesn't bother with LaTeX at all.  And since it'd be nice for people to be able
to easily read my notes, I rolled up my sleeves and made Travis CI use emacs to
export the org to HTML.

You can find it at my website:

<http://stephen-brennan.com/notes/>

Contributing
------------

I totally accept pull requests from classmates who'd like to fill in missing
days or add details.

### Editing

Since this is org-mode, I'd recommend using Emacs to edit it.  But, you can use
any editor with it and it'll work.

Important highlights for writing org-mode:

* `*bold*`, `/italics/`, `_underline_`
* Use `-` or `*` or `+` for bullet points.
* Heading levels are different amounts of `*` at the beginning of a line.
* To include inline math as LaTeX, you have a few options:
    * The one you should use: `\(m_a t^h\)`
    * The one you shouldn't use: `$m_a t^h$`
    * The reason is that dollar signs are used in normal text, and org-mode
      can't always differentiate, and bad things are happening.
    * Unfortunately, dollar signs are easier to type.
    * Rule: only use dollar signs if there are no spaces.
* To include fully-fledged equations, just `\begin` a LaTeX math environment and
  it'll work.
* Links: `[[link][description]]` or `[[link]]`
* Short code snippets: `=function_call()=`
* Multiline code:

  ```
  #+BEGIN_SRC optional-language-name
  your code here
  #+END_SRC
  ```

  The language name should be part of an emacs mode for that language, so all
  lower case generally.
* [Org compact guide](http://orgmode.org/guide/)

### Creating HTML

First, get the submodule that provides the nice, pretty HTML theme for the
output:

    $ git submodule init
    $ git submodule update

If you edit with org-mode, just run `M-x org-html-export-to-html`.

If you would rather not edit with Emacs, you can always install Emacs and then
use my makefile, which will automatically generate all the html from the org
files using Emacs' batch mode (meaning you'll never actually use the editor).
**Warning:** my Makefile is designed to run on Travis-CI, and it's rather
inconsiderate.  It will download and extract org-mode in a directory *next to
your repository*.  It's a bit silly, and maybe I'll change that in the future.

Now, no matter what you should be able to preview your HTML so that you know
everything renders correctly!

# Recompile the Typst document.
compile:
  export TYPST_FONT_PATHS=assets/fonts typst fonts && typst compile resume.typ

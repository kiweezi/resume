# Recompile the Typst document.
compile:
  export TYPST_FONT_PATHS=assets/fonts typst fonts && typst compile resume.typ

# Install required fonts for Typst to compile the document.
setup-fonts:
  # Create fonts directory.
  mkdir -p assets/fonts
  # Download Fira Sans and FontAwesome fonts.
  wget -O assets/fonts/fira-sans.zip https://www.1001fonts.com/download/fira-sans.zip && unzip -o assets/fonts/fira-sans.zip -d assets/fonts/fira-sans && rm assets/fonts/fira-sans.zip
  wget -O assets/fonts/fontawesome.zip https://use.fontawesome.com/releases/v7.1.0/fontawesome-free-7.1.0-desktop.zip && unzip -o assets/fonts/fontawesome.zip -d assets/fonts && rm assets/fonts/fontawesome.zip
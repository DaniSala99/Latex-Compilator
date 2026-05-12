# Makefile per LaTeX Compilator - Rho-class Template
# Automatizza la compilazione del documento PDF

.PHONY: pdf clean view help all

# Variabili
MAIN_FILE = main
LATEX_CMD = pdflatex -interaction=nonstopmode -shell-escape
BIBER_CMD = biber
OUTPUT_DIR = .

# Target di default
all: pdf

# Compilazione completa (pdflatex + biber + pdflatex)
pdf:
	@echo "🔨 Compilazione in corso..."
	@$(LATEX_CMD) $(MAIN_FILE).tex > /tmp/latex_pass1.log 2>&1
	@echo "📚 Elaborazione bibliografia..."
	@$(BIBER_CMD) $(MAIN_FILE) > /dev/null 2>&1
	@echo "🔨 Finalizzazione documento..."
	@$(LATEX_CMD) $(MAIN_FILE).tex > /tmp/latex_pass2.log 2>&1
	@echo "✅ PDF generato: $(MAIN_FILE).pdf"

# Compilazione veloce (solo pdflatex, senza biber)
quick:
	@echo "⚡ Compilazione veloce in corso..."
	@$(LATEX_CMD) $(MAIN_FILE).tex > /tmp/latex_quick.log 2>&1
	@echo "✅ PDF aggiornato: $(MAIN_FILE).pdf"

# Pulizia file temporanei
clean:
	@echo "🧹 Pulizia file temporanei..."
	@rm -f $(MAIN_FILE).aux $(MAIN_FILE).bbl $(MAIN_FILE).bcf $(MAIN_FILE).blg
	@rm -f $(MAIN_FILE).fdb_latexmk $(MAIN_FILE).fls $(MAIN_FILE).log
	@rm -f $(MAIN_FILE).lof $(MAIN_FILE).lot $(MAIN_FILE).out $(MAIN_FILE).run.xml
	@rm -f $(MAIN_FILE).toc $(MAIN_FILE).xdv
	@rm -rf _minted-$(MAIN_FILE)
	@echo "✅ Pulizia completata"

# Pulizia totale (incluso PDF)
distclean: clean
	@echo "🗑️  Rimozione PDF..."
	@rm -f $(MAIN_FILE).pdf
	@echo "✅ Pulizia totale completata"

# Visualizza il PDF (richiede xdg-open su Linux, open su macOS)
view:
	@if [ -f "$(MAIN_FILE).pdf" ]; then \
		echo "📖 Apertura $(MAIN_FILE).pdf..."; \
		xdg-open $(MAIN_FILE).pdf 2>/dev/null || open $(MAIN_FILE).pdf 2>/dev/null || echo "⚠️  Impossibile aprire il PDF. Apri manualmente $(MAIN_FILE).pdf"; \
	else \
		echo "❌ $(MAIN_FILE).pdf non trovato. Esegui 'make pdf' prima."; \
	fi

# Aiuto
help:
	@echo "📋 Makefile - LaTeX Compilator"
	@echo ""
	@echo "Comandi disponibili:"
	@echo "  make              - Compilazione completa (default)"
	@echo "  make pdf          - Compilazione completa (pdflatex + biber)"
	@echo "  make quick        - Compilazione veloce (solo pdflatex)"
	@echo "  make view         - Apre il PDF generato"
	@echo "  make clean        - Rimuove file temporanei"
	@echo "  make distclean    - Rimuove file temporanei e PDF"
	@echo "  make help         - Mostra questo messaggio"
	@echo ""
	@echo "Esempio: make pdf && make view"

# DREAM PhD Project Plan

**Monitoring and Predicting Droughts on National Scale: A Satellite-Integrated, Groundwater-Coupled Hybrid Modelling Framework for Denmark**

Applicant: **Daniele Sala**  
Institution: **Aalborg University**, Department of Sustainability and Planning  
Supervisor: **Prof. Ehsan Forootan**, Geodesy Research Group  
Funding: **Independent Research Fund Denmark (DFF)**, Reference 2026/643  
Deadline: **20 May 2026**

---

## Project Overview

This three-year PhD project addresses a critical gap in Denmark's national drought early warning landscape: the lack of probabilistic, satellite-integrated outlooks coupled with groundwater state dynamics at sub-seasonal to seasonal lead times.

### Core Innovation

1. **Physics-based backbone**: VIC land surface model with prognostic groundwater coupling
2. **Multi-source data assimilation**: GRACE-FO, SMAP, ESA CCI, streamflow, and piezometric observations
3. **Hybrid ML extension**: Differentiable parameter learning + LSTM residual post-processor
4. **Operationalized output**: Probabilistic four-pillar combined drought index (SPI/SPEI + SSMI + SSI + SGI)
5. **Seasonal forecasting**: SEAS5/AIFS-forced predictions with skill assessment

---

## Document Structure

```
main.tex              # Main document (frontmatter + section includes)
sections/
  ├── 01-motivation.tex             # Problem statement & motivation
  ├── 02-research-questions.tex     # RQ1-RQ3 (inline format)
  ├── 03-approach.tex               # Work packages WP1-WP5
  ├── 04-challenges.tex             # Expected challenges & mitigation
  ├── 05-feasibility.tex            # Feasibility, fit & outputs + timeline
  ├── 06-background.tex             # Background & added value
  └── 07-glossary.tex               # ~40 acronyms
figures/
  └── timeline.tex                  # TikZ Gantt-style timeline (36 months)
rho-class/                          # Rho-class template (CC BY 4.0)
rho.bib                             # Bibliography (BibTeX)
Makefile                            # Compilation automation
CLAUDE.md                           # Workflow guidelines
```

---

## Quick Start

### Compilation

```bash
make              # Full compilation (pdflatex + biber + pdflatex)
make quick        # Fast update (pdflatex only, no bibliography)
make view         # Open PDF in default viewer
make clean        # Remove temporary files
make distclean    # Remove all generated files including PDF
make help         # Show all available commands
```

### Editing

- **Sezioni contenuto**: Modifica file singoli in `/sections/`
- **Timeline**: Modifica `/figures/timeline.tex` (TikZ)
- **Frontmatter**: Modifica `main.tex` (linee 28--88)
- **Bibligrafia**: Aggiungi citazioni a `rho.bib`

### Output

- **main.pdf** (3 pages, two-column layout, A4)
- Ready for submission to Aalborg University application portal

---

## Template & Attribution

This document is typeset with **Rho-class** (v.3.0.1), a professional LaTeX2e template for research articles and academic documentation.

- **Author**: Guillermo Jimenez  
- **License**: Creative Commons CC BY 4.0  
- **GitHub**: [MemoJimenez/Rho-class](https://github.com/MemoJimenez/Rho-class)

---

## Contact

**Daniele Sala**  
- Email: saladaniele99@outlook.com  
- Phone: +39 331 195 78 15  
- LinkedIn: [linkedin.com/in/sala-daniele](https://linkedin.com/in/sala-daniele)  
- GitHub: [github.com/DaniSala99](https://github.com/DaniSala99)

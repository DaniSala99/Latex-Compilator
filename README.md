# LaTeX Compilator - Rho Class Template

Progetto per la composizione e impaginazione di documenti accademici e tecnici utilizzando il template **Rho-class** (versione 3.0.1).

## Cos'è

Questo progetto fornisce un ambiente di lavoro per:
- **Scrivere contenuti accademici** - articoli di ricerca, relazioni tecniche, documentazione
- **Impaginarli professionalmente** - utilizzando il template Rho-class, basato su LaTeX
- **Ottenere output PDF di alta qualità** - con layout moderno e professionale

## Struttura del progetto

```
├── main.tex              # File principale da compilare
├── rho.bib               # Gestione della bibliografia
├── figures/              # Cartella per le immagini
├── rho-class/            # Template Rho-class
│   ├── rho.cls           # Classe principale
│   ├── rhoenvs.sty       # Ambienti personalizzati
│   ├── rhobabel.sty      # Supporto multilingue
│   └── README.md         # Documentazione del template
└── example.py            # Esempio di file Python da incluere
```

## Caratteristiche principali di Rho-class

- **Font professionali**: STIX2 per il testo, Fira Sans per i titoli, Fira Mono per il codice
- **Ambienti personalizzati**: note, info, rhoenv per strutturare il contenuto
- **Supporto multilingue**: Automatico per inglese e spagnolo
- **Gestione avanzata del codice**: Con minted o listings
- **Cross-referencing automático**: Per figure, tabelle, equazioni e codice
- **Layout moderno**: Due colonne, twoside, con header e footer personalizzati

## Come usare questo progetto

### Flusso di lavoro

1. **Preparare il contenuto**: Raccogli il testo che vuoi impaginare
2. **Consultare per l'impaginazione**: Discussione su come strutturare il contenuto
3. **Implementare le modifiche**: Tu apporterai le modifiche ai file
4. **Verificare il risultato**: Compila e rivedi il PDF generato

### Licenza

Rho-class è distribuito con licenza **Creative Commons CC BY 4.0**.  
Crediti: Guillermo Jimenez | [GitHub Repository](https://github.com/MemoJimenez/Rho-class)

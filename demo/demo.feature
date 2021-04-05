# demo.feature
# language: it

Funzionalità: Avere una sintassi colorata per la lingua italiana nei file feature
  Per avere una migliore leggibilità dei file feature
  Nell'ambito della scrittura dei file per i test funzionali
  Bisogna differenziare le parole chiave del linguaggio Gherkin in Italiano con l'utilizzo dei colori
  
  Contesto:
    Data una finestra di editing di Atom
    E un redattore di specifiche

  Scenario:
    Data la necessità di creare un nuovo file di feture
    Quando inizia a scrivere le specifiche in italiano
    Allora si vede la colorazione delle parole chiave del linguaggio Gherkin in Italiano in funzione del loro significato
    Ma non quando si scrivono nel corpo di una descrizione di una Funzionalità: o di uno Scenario:
    
  Schema dello scenario: Scenario
    Dato l'utilizzo della parola chiava <parola>
    Quando si scriveranno le funzionalità del tipo <parola_originale>
    Allora le si vedrà apparire del colore definito nello stile '<codice_colore>'
        
  Esempi:
    | parola          | parola_originale | codice_colore                |
    | Funzionalità    | Feature          | entity.name.function.feature |
    | Contesto        | Background       | entity.name.function.feature |
    | Dato            | Given            | support.constant.feature     |
    | Per             | In order to      | source.variable.feature      |

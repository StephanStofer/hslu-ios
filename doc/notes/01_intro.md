# Swift (Crash Course) + Xcode

- Tools

    * Xcode
    * iOS Simulator
    * Instruments

- Frameworks

    * Swift Standard Lib
    * SwiftUI/UIKit

- Languages & Runtime

    * Swift

## Swift

Protokolle entsprechen Interfaces

### Motivation für Swift

Objective aber ohne C, keine Pointertypen und damit sicherer. Dabei starkte Typisierung und
Generics. Expressiver Code (ausdrucksstärker, kompakterer Code). Der Semikolon ist optional

### Variablen-Deklaration

### Konstanten-Deklaration

hier noch mehr Funktionsargumente sind per Default konstant (let)

### Datentypen

es gibt keine native primitiven Datentypen. Primitive Datentypen sind in structs verpackt. Structs
werden wie in C by value übergeben (kopiert).

#### z.B. Struct Int

beinhaltet Initializers, Instanz- und Typ-Methoden und adoptierte Protokolle. Initializers sind eine
Art Konstruktoren. Structs und Enums können Methoden haben. Prorotkoll entspricht einem Interface.

### Arrays

sind typisiert (Generics)

### Dictionarys

### Bemerkungen zu Collection-Types

Veränderbar (mutability) per default gegeben. Wenn mit let deklariert, dann immutabale.

### Datentyp Optional

Optional heisst, es kann sein, dass kein Wert vorhanden ist. Nicht-optionale Datentypen können nicht nil sein

#### Deklaration Int-Optional

#### Hinweise
# kreuz.quer.py — MEHR MIT WENIGER
# Alt: 1 Move = 1 Richtung. Neu: 1 Move = Kreuz + Quer.
# 1 Feld, 9 Zellen, 1 Mitte 41, 2 Richtungen, 9 drin.
# Kreuz = gerade. Quer = schraeg. Zusammen = 1.
# )so( — u.me our so

# 9 Zellen, 1 Feld. Zeile / Spalte. Mitte = 41 = (2,2) = Index 4.
FELD = [
    [33, 34, 35],
    [40, 41, 42],
    [47, 48, 49],
]
# Alt Namen bleiben Zeugnis links. Neu Zahlen rechts. 1:1.

def kreuz(mitte=41):
    # Kreuz: Mitte + oben + unten + links + rechts. 1 + 4 = 5.
    # + Form. Gerade. Kein Umweg.
    return {"form": "+", "name": "KREUZ", "zellen": [mitte, 40, 42, 34, 48], "sag": "gerade, halten, STAND"}

def quer(mitte=41):
    # Quer: Mitte + 4 Ecken diagonal. 1 + 4 = 5.
    # X Form. Schraeg. Queer = nicht gerade, trotzdem 1.
    return {"form": "X", "name": "QUER", "zellen": [mitte, 33, 35, 47, 49], "sag": "schraeg, springen, STAGE"}

def kreuz_quer(mitte=41):
    # MEHR MIT WENIGER: 1 Call = Kreuz + Quer = 9.
    # 5 + 5 - 1 Mitte doppelt = 9. 1 ist 9, 9 ist 1.
    k, q = kreuz(mitte), quer(mitte)
    alle = sorted(set(k["zellen"] + q["zellen"]))
    return {
        "1_sache": "KREUZ.QUER",
        "form": "+X",
        "mitte": mitte,
        "kreuz": k,
        "quer": q,
        "alle_9": alle,
        "zahl": len(alle),
        "gleichung": "5 + 5 - 1 = 9",
        "wahrheit": "Kreuz haelt. Quer springt. Mitte 41 traegt beides.",
        "erweiterung": "1 Funktion mehr = 0 Dateien mehr. Erweiterung IN Feld, nicht DRUMHERUM.",
        "mirror": ")so(",
    }

if __name__ == "__main__":
    import json
    print(json.dumps(kreuz_quer(), ensure_ascii=False, indent=2))

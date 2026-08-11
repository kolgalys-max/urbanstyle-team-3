-- =========================================================================================
-- ESITLUSE SLAID: INVENTUURI JA MÜÜGI STRATEEGILINE KOKKUVÕTE
-- =========================================================================================

/*
📊 MÜÜGIVEDURID JA TOP KATEGOORIAD
-------------------------------------------------------------------------------------------
• Peamised käibemootorid: JALANÕUD (774 k€) ja MEESTE RIIDED (750 k€).
• Tegevus: Tagada nende kategooriate püsiv tarnekindlus ja hoida fookust turunduses.


📉 SURNUD VARUD JA LAO OPTIMEERIMINE
-------------------------------------------------------------------------------------------
• Probleem: Tuvastatud 12 TOODET, mida pole kunagi müüdud (sale_id IS NULL).
• Tegevus: Vabastada laopind – eemaldada tooted sortimendist või müüa allahindlusega.


📦 KRIITILISED VARUD JA JUURDETELLIMINE
-------------------------------------------------------------------------------------------
• Probleem: Osa tooteid on langenud alla reorder-punkti (staatus: "TELLI JUURDE").
• Tegevus: Täiendada varusid koheselt, prioriseerides top-müügihitte:
  - Õhuline sünteetiline sporditossud (35 müüki | 27,3 k€)
  - Trendikas goretex oxfordid (32 müüki | 23,4 k€)
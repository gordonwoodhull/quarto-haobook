// Quarto-managed appendix state (haobook doesn't expose its own)
#let quarto-appendix-state = state("quarto-appendix", false)

// Helper to check appendix mode
#let quarto-in-appendix() = quarto-appendix-state.get()

// Chapter-based numbering for books with appendix support
#let quarto-equation-numbering = it => {
  let pattern = if quarto-in-appendix() { "(A.1)" } else { "(1.1)" }
  numbering(pattern, counter(heading).get().first(), it)
}

#let quarto-callout-numbering = it => {
  let pattern = if quarto-in-appendix() { "A.1" } else { "1.1" }
  numbering(pattern, counter(heading).get().first(), it)
}

#let quarto-subfloat-numbering(n-super, subfloat-idx) = {
  let chapter = counter(heading).get().first()
  let pattern = if quarto-in-appendix() { "A.1a" } else { "1.1a" }
  numbering(pattern, chapter, n-super, subfloat-idx)
}

#let quarto-thmbox-args = (base: "heading", base_level: 1)

// Chapter-based figure numbering for Quarto's custom float kinds
// Haobook's built-in numbering uses kind:image/table/raw, but Quarto uses
// kind:"quarto-float-fig"/"quarto-float-tbl"/etc, so we need to add rules for those
#let quarto-figure-numbering(num) = {
  let chapter = counter(heading).get().first()
  let pattern = if quarto-in-appendix() { "A.1" } else { "1.1" }
  numbering(pattern, chapter, num)
}

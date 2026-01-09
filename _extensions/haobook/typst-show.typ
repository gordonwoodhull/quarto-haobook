#import "@local/haobook:0.1.0": template, part, appendix-style

#let (body-styles, normal-page, img-heading, side-figure) = template(book: true)

#show: body-styles

// Quarto uses custom figure kinds (quarto-float-fig, quarto-float-tbl, etc.)
// which don't match haobook's built-in numbering (kind:image, kind:table, kind:raw).
// Apply chapter-based numbering globally to all figures. This overrides haobook's
// kind-specific numbering (which only covers image/table/raw kinds).
#set figure(numbering: quarto-figure-numbering)

#import "@local/haobook:0.1.0": template, part, appendix-style, cover

#let (body-styles, normal-page, img-heading, side-figure) = template(book: true)

// Title page
$if(title)$
#cover(
  title: [$title$],
$if(by-author)$
  author: "$for(by-author)$$it.name.literal$$sep$, $endfor$",
$endif$
)
$endif$

#show: body-styles

// Quarto uses custom figure kinds (quarto-float-fig, quarto-float-tbl, etc.)
// which don't match haobook's built-in numbering (kind:image, kind:table, kind:raw).
// Apply chapter-based numbering globally to all figures. This overrides haobook's
// kind-specific numbering (which only covers image/table/raw kinds).
#set figure(numbering: quarto-figure-numbering)

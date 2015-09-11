source("common.R")

# recycle diagram
x <- 1:3
y <- 1:6
pdf("recycle.pdf",
    width=cell + 2*margin + # x
          0.8 +                 # gap
          2*cell + 3*margin + # x recycled + y
          0.8 +                 # gap
          cell + 2*margin,  # result
    height=6*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(6, 3,
                        widths=unit.c(marginSize, cellSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.text("x", y=1.5,
          vp=viewport(layout.pos.col=2, layout.pos.row=1))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 4*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(6, 5,
                        widths=unit.c(marginSize, cellSize,
                          2*marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.text("y", y=1.5,
          vp=viewport(layout.pos.col=4, layout.pos.row=1))
for (i in 1:6) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[(i - 1) %% 3 + 1])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect()
    grid.text(y[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + unit(0.7, "inches") +
                      2*cellSize + 4*marginSize + unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(6, 3,
                        widths=unit.c(marginSize, cellSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.text("x+y", y=1.5,
          vp=viewport(layout.pos.col=2, layout.pos.row=1))
for (i in 1:6) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text((x + y)[i])
    popViewport()
}
popViewport(2)
x <- cellSize + 2*marginSize
for (i in 1:3) {
    dotlinearrow(x + unit(1, "mm"),
                 unit(.5, "npc") + unit(3.5 - i, "lines"),
                 x - unit(1, "mm") + unit(.7, "inches"),
                 unit(.5, "npc") + unit(3.5 - i, "lines"),
                 gp=gpar(fill="black"),
                 arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
}
for (i in 1:3) {
    dotlinearrow(x + unit(1, "mm"),
                 unit(.5, "npc") + unit(3.5 - i, "lines"),
                 x - unit(1, "mm") + unit(.7, "inches"),
                 unit(.5, "npc") + unit(.5 - i, "lines"),
                 gp=gpar(fill="black"),
                 arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
}
x <- cellSize + 2*marginSize + unit(.7, "inches") +
     2*cellSize + 4*marginSize
for (i in 1:6) {
    start <- x + unit(1, "mm")
    dotlinearrow(start,
                 unit(.5, "npc") + unit(3.5 - i, "lines"),
                 x - unit(1, "mm") + unit(0.7, "inches"),
                 unit(.5, "npc") + unit(3.5 - i, "lines"),
                 gp=gpar(fill="black"),
                 arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
}
grid.text("recycle",
          cellSize + 2*marginSize + unit(.35, "inches"),
          unit(.5, "npc") + unit(4, "lines"),
          gp=gpar(fontfamily="cmlgcs"))
dev.off()

# Postscript versions
for (i in list.files(pattern="recycle[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

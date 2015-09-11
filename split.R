source("common.R")

# Split diagram
x <- c(3, 5, 1, 4, 5)
y <- c("f", "m", "f", "f", "m")
g <- factor(c("a", "a", "b", "a", "b"))
pdf("split.pdf",
    width=3*cell + 5*margin + # df + factor
          0.8 +                 # gap
          4*cell + 9*margin, # list
    height=5*cell + 4*margin +
           1)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=3*cellSize + 5*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 7,
                        widths=unit.c(marginSize, cellSize, marginSize,
                          cellSize, 2*marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
for (i in 1:5) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect()
    grid.text(y[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=6))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[(g[i] == "a") + 1]))
    grid.text(g[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=3*cellSize + 5*marginSize + unit(0.7, "inches"),
                      width=4*cellSize + 6*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(7, 9,
                        widths=unit.c(marginSize, cellSize,
                          marginSize, cellSize, 2*marginSize, cellSize,
                          marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
# Overall list lines
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=7))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=7))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=7))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=5,
               layout.pos.col=7))
grid.text("a", y=2, 
          vp=viewport(layout.pos.row=1,
            layout.pos.col=3))
grid.text("b", y=2,
          vp=viewport(layout.pos.row=1,
            layout.pos.col=7))
# DF 1 lines
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=2,
               layout.pos.col=2))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=2,
               layout.pos.col=4))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=2,
               layout.pos.col=2))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=2,
               layout.pos.col=4))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=2,
               layout.pos.col=2))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=2,
               layout.pos.col=2))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=2,
               layout.pos.col=4))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=2,
               layout.pos.col=4))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i + 1,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[g == "a"][i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i + 1,
                          layout.pos.col=4))
    grid.rect()
    grid.text(y[g == "a"][i])
    popViewport()
}
# DF 2 lines
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=6))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=8))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=6,
               layout.pos.col=6))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=6,
               layout.pos.col=8))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=6))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=6))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=8))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=8))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i + 5,
                          layout.pos.col=6))
    grid.rect()
    grid.text(x[g == "b"][i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i + 5,
                          layout.pos.col=8))
    grid.rect()
    grid.text(y[g == "b"][i])
    popViewport()
}
popViewport(2)
x <- 3*cellSize + 5*marginSize
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(2, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(2, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
             unit(.5, "npc") - unit(0, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches") +
             2*cellSize + 4*marginSize, 
             unit(.5, "npc") - unit(2, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
             unit(.5, "npc") - unit(2, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches") +
             2*cellSize + 4*marginSize, 
             unit(.5, "npc") - unit(3, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
grid.text("split()",
          x=3*cellSize + 5*marginSize + .5*unit(0.7, "inches"),
          y=.95)
dev.off()

# Postscript versions
for (i in list.files(pattern="split[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

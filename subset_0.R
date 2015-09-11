source("common.R")

# Subset (integer index) diagram
x <- c(2, 0, 3, 1, 3)
index <- 1:3
pdf("subsetint.pdf",
    width=cell + 2*margin + # index
          0.8 +                 # gap
          cell + 2*margin + # vector
          0.8 +                 # gap
          cell + 2*margin,  # result
    height=5*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(index[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:5) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + unit(0.7, "inches") +
                      cellSize + 2*marginSize + unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[index[i]])
    popViewport()
}
popViewport(2)
x <- cellSize + 2*marginSize
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(2, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(0, "lines"),
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
x <- cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") + unit(2, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") + unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(-1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
grid.text("index",
          x=.5*cellSize + marginSize,
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
grid.text("counts",
          x=cellSize + 2*marginSize + unit(0.7, "inches") +
          .5*cellSize + marginSize,
          y=.95)
grid.text("subset",
          x=cellSize + 2*marginSize + unit(0.7, "inches") +
          cellSize + 2*marginSize + unit(0.7, "inches") +
          .5*cellSize + marginSize,
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
dev.off()

# Subset (logical index) diagram
x <- c(2, 0, 3, 1, 3)
index <- c(TRUE, TRUE, TRUE, FALSE, FALSE)
pdf("subsetlog.pdf",
    width=cell + 2*margin + # index
          0.8 +                 # gap
          cell + 2*margin + # vector
          0.8 +                 # gap
          cell + 2*margin,  # result
    height=5*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:5) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect(gp=gpar(fill=if (index[i]) "grey90" else "white"))
    grid.text(if(index[i]) "T" else "F",
              gp=gpar(col=if (index[i]) "black" else "grey60"))
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:5) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + unit(0.7, "inches") +
                      cellSize + 2*marginSize + unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[index][i])
    popViewport()
}
popViewport(2)
x <- cellSize + 2*marginSize
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
              unit(.5, "npc") - unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
x <- cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") + unit(2, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") + unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(-1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
grid.text("index",
          x=.5*cellSize + marginSize,
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
grid.text("counts",
          x=cellSize + 2*marginSize + unit(0.7, "inches") +
          .5*cellSize + marginSize,
          y=.95)
grid.text("subset",
          x=cellSize + 2*marginSize + unit(0.7, "inches") +
          cellSize + 2*marginSize + unit(0.7, "inches") +
          .5*cellSize + marginSize,
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
dev.off()

# Postscript versions
for (i in list.files(pattern="subset.+[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

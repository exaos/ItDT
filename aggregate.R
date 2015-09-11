source("common.R")

# Aggregate diagram
x <- c(3, 5, 1, 4, 5)
g <- factor(c("a", "a", "b", "a", "b"))
pdf("aggregate.pdf",
    width=2*cell + 2*margin + # start
          0.8 +                 # gap
          2*cell + 3*margin + # subset
          0.8 +                 # gap
          2*cell + 3*margin + # FUN
          0.8 +                 # gap
          2*cell + 3*margin,  # result
    height=5*cell + 4*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 5,
                        widths=unit.c(marginSize, cellSize, 2*marginSize,
                          cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:5) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[(g[i] == "a") + 1]))
    grid.text(g[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(y=.75,
                      layout=grid.layout(3, 5,
                        widths=unit.c(marginSize, cellSize, 2*marginSize,
                          cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[g == "a"][i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill="grey60"))
    grid.text("a")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(y=.25,
                      layout=grid.layout(2, 5,
                        widths=unit.c(marginSize, cellSize, 2*marginSize,
                          cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(x[g == "b"][i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect()
    grid.text("b")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches") +
                      2*cellSize + 3*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(y=.75,
                      layout=grid.layout(1, 5,
                        widths=unit.c(marginSize, cellSize, 2*marginSize,
                          cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(mean(x[g == "a"]))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill="grey60"))
    grid.text("a")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches") +
                      2*cellSize + 3*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(y=.25,
                      layout=grid.layout(1, 5,
                        widths=unit.c(marginSize, cellSize, 2*marginSize,
                          cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(mean(x[g == "b"]))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill="grey90"))
    grid.text("b")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches") +
                      2*cellSize + 3*marginSize + unit(0.7, "inches") +
                      2*cellSize + 3*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(y=.5,
                      layout=grid.layout(2, 5,
                        widths=unit.c(marginSize, cellSize),
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
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect()
    grid.text(mean(x[g == levels(g)[i]]))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect(gp=gpar(fill=c("grey60", "grey90")[i]))
    grid.text(levels(g)[i])
    popViewport()
}
popViewport(2)
x <- 2*cellSize + 3*marginSize
dotlinearrow <- function(x, y, ...) {
    grid.circle(x, y, r=unit(.5, "mm"), gp=gpar(fill="black"))
    grid.segments(x, y, ...)
}
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(2, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.75, "npc") + unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.75, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.75, "npc") - unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") - unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.25, "npc") + unit(.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.5, "npc") - unit(2, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.25, "npc") - unit(.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
x <- 2*cellSize + 3*marginSize + unit(0.7, "inches") +
    2*cellSize + 3*marginSize
dotlinearrow(x + unit(1, "mm"), 
              unit(.75, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.75, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.75, "npc") + unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.75, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.75, "npc") - unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.75, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.25, "npc") + unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.25, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), 
              unit(.25, "npc") - unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.25, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
x <- 2*cellSize + 3*marginSize + unit(0.7, "inches") +
    2*cellSize + 3*marginSize + unit(0.7, "inches") +
    2*cellSize + 3*marginSize
dotlinearrow(x + unit(1, "mm"),  
              unit(.75, "npc") - unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),  
              unit(.25, "npc") - unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") - unit(.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
grid.text("subset",
          x=2*cellSize + 3*marginSize + .5*unit(0.7, "inches"),
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
grid.text("mean()",
          x=2*cellSize + 3*marginSize + unit(0.7, "inches") +
          2*cellSize + 3*marginSize + .5*unit(0.7, "inches"),
          y=.95)
grid.text("combine",
          x=2*cellSize + 3*marginSize + unit(0.7, "inches") +
          2*cellSize + 3*marginSize + unit(0.7, "inches") +
          2*cellSize + 3*marginSize + .5*unit(0.7, "inches"),
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
dev.off()

# Postscript versions
for (i in list.files(pattern="aggregate[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

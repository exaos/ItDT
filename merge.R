source("common.R")

# Merge diagram
x <- c(3, 5, 1, 4, 5)
g <- factor(c("a", "a", "b", "a", "b"))
g2 <- factor(c("a", "b"))
y <- c("T", "F")
pdf("merge.pdf",
    width=2*cell + 3*margin + # df1
          0.8 +                 # gap
          3*cell + 4*margin + # result
          0.8 +                 # gap
          2*cell + 3*margin,  # df2
    height=5*cell + 6*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 5,
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
grid.text("m", .5, 2, 
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
    grid.rect(gp=gpar(fill="white"))
    grid.text(x[i], gp=gpar(col="grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[(g[i] == "a") + 1]))
    grid.text(g[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches"),
                      width=3*cellSize + 4*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 7,
                        widths=unit.c(marginSize, cellSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.text("m", .5, 2, 
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
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
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
    grid.rect(gp=gpar(fill="white"))
    grid.text(x[i], gp=gpar(col="grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[(g[i] == "a") + 1]))
    grid.text(g[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=6))
    grid.rect()
    grid.text(y[g2 == g[i]])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=2*cellSize + 3*marginSize + unit(0.7, "inches") +
                      3*cellSize + 4*marginSize + unit(0.7, "inches"),
                      width=2*cellSize + 3*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(2, 5,
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
grid.text("m", .5, 2, 
          vp=viewport(layout.pos.row=1,
            layout.pos.col=2))
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
                          layout.pos.col=2))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[(g2[i] == "a") + 1]))
    grid.text(g2[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect()
    grid.text(y[i])
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
              unit(.5, "npc") + unit(0, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(2, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(2, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
x <- 2*cellSize + 3*marginSize + unit(0.7, "inches") +
    3*cellSize + 4*marginSize
dotlinearrow(x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(.5, "lines"),
              x + unit(1, "mm"), 
              unit(.5, "npc") + unit(2, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(.5, "lines"),
              x + unit(1, "mm"), 
              unit(.5, "npc") + unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") + unit(.5, "lines"),
              x + unit(1, "mm"), 
              unit(.5, "npc") + unit(-1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") - unit(.5, "lines"),
              x + unit(1, "mm"), 
              unit(.5, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x - unit(1, "mm") + unit(0.7, "inches"), 
              unit(.5, "npc") - unit(.5, "lines"),
              x + unit(1, "mm"), 
              unit(.5, "npc") + unit(-2, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dev.off()

# Postscript versions
for (i in list.files(pattern="merge[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

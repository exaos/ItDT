source("common.R")

# Reshape diagram
x <- c(3, 5)
y <- sample(letters, 2)
t1 <- c(1, 4)
t2 <- c(2, 5)
t3 <- c(3, 6)
pdf("reshape.pdf",
    width=5*cell + 6*margin + # wide
          0.8 +                 # gap
          4*cell + 5*margin,  # long
    height=6*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=5*cellSize + 6*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(2, 11,
                        widths=unit.c(marginSize, cellSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=8))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
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
grid.text("t1", .5, 2,
          vp=viewport(layout.pos.row=1,
            layout.pos.col=6))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=8))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=8))
grid.text("t2", .5, 2,
          vp=viewport(layout.pos.row=1,
            layout.pos.col=8))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
grid.text("t3", .5, 2,
          vp=viewport(layout.pos.row=1,
            layout.pos.col=10))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect(gp=gpar(fill="white"))
    grid.text(x[i], gp=gpar(col="grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill="white"))
    grid.text(y[i], gp=gpar(col="grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=6))
    grid.rect()
    grid.text(t1[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=8))
    grid.rect()
    grid.text(t2[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=10))
    grid.rect()
    grid.text(t3[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=5*cellSize + 6*marginSize + unit(0.7, "inches"),
                      width=4*cellSize + 5*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(6, 9,
                        widths=unit.c(marginSize, cellSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=8))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=8))
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
               layout.pos.col=8))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=8))
for (i in 1:6) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect(gp=gpar(fill="white"))
    grid.text(x[i %/% 4 + 1], gp=gpar(col="grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect(gp=gpar(fill="white"))
    grid.text(y[i %/% 4 + 1], gp=gpar(col="grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=6))
    grid.rect()
    grid.text(c("t1", "t2", "t3")[(i - 1) %% 3 + 1])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=8))
    grid.rect()
    grid.text(i)
    popViewport()
}
popViewport(2)
x <- 5*cellSize + 6*marginSize
dotlinearrow <- function(x, y, ...) {
    grid.circle(x, y, r=unit(.5, "mm"), gp=gpar(fill="black"))
    grid.segments(x, y, ...)
}
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(2.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(1.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(2.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(1.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(.5, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - unit(.5, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dev.off()

# Postscript versions
for (i in list.files(pattern="reshape[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

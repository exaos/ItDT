source("common.R")

# Apply diagram
pdf("apply.pdf",
    width=2*cell + 2*margin + # start
          0.8 +                 # gap
          2*cell + 3*margin + # subset
          0.8 +                 # gap
          2*cell + 3*margin + # FUN
          0.8 +                 # gap
          2*cell + 3*margin,  # result
    height=3*cell + 2*margin +
           .5)                # padding
# grid.newpage()
pushViewport(viewport(x=0, width=3*cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=cellSize,
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    for (j in 1:3) {
        pushViewport(viewport(layout.pos.row=i,
                              layout.pos.col=j))
        grid.rect()
        grid.text((j - 1)*3 + i)
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(x=3*cellSize + 2*marginSize + unit(0.7, "inches"),
                      width=3*cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 3,
                        heights=unit.c(cellSize, 2*marginSize),
                        widths=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    for (j in 1:3) {
        pushViewport(viewport(layout.pos.row=i*2 - 1,
                              layout.pos.col=j))
        grid.rect()
        grid.text((j - 1)*3 + i)
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(x=3*cellSize + 2*marginSize +
                      unit(0.7, "inches") +
                      3*cellSize + 2*marginSize +
                      unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 1,
                        heights=unit.c(cellSize, 2*marginSize),
                        widths=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=i*2 - 1,
                              layout.pos.col=1))
        grid.rect()
        grid.text((4:6)[i])
        popViewport()
}
popViewport(2)
pushViewport(viewport(x=3*cellSize + 2*marginSize +
                      unit(0.7, "inches") +
                      3*cellSize + 2*marginSize +
                      unit(0.7, "inches") +
                      cellSize + 2*marginSize +
                      unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 1,
                        heights=cellSize,
                        widths=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=i,
                              layout.pos.col=1))
        grid.rect()
        grid.text((4:6)[i])
        popViewport()
}
popViewport(2)
x <- 3*cellSize + 2*marginSize
dotlinearrow <- function(x, y, ...) {
    grid.circle(x, y, r=unit(.5, "mm"), gp=gpar(fill="black"))
    grid.segments(x, y, ...)
}
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + cellSize,
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + cellSize + 2*marginSize,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), .5,
              x - unit(1, "mm") + unit(0.7, "inches"), .5,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - cellSize,
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - cellSize - 2*marginSize,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
x <- 3*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + cellSize + 2*marginSize,
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + cellSize + 2*marginSize,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), .5,
              x - unit(1, "mm") + unit(0.7, "inches"), .5,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - cellSize - 2*marginSize,
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - cellSize - 2*marginSize,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
x <- 3*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + cellSize + 2*marginSize,
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + cellSize,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"), .5,
              x - unit(1, "mm") + unit(0.7, "inches"), .5,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - cellSize - 2*marginSize,
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") - cellSize,
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
grid.text("subset",
          x=3*cellSize + 2*marginSize + .5*unit(0.7, "inches"),
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
grid.text("mean()",
          x=3*cellSize + 2*marginSize + unit(0.7, "inches") +
          3*cellSize + 2*marginSize + .5*unit(0.7, "inches"),
          y=.95)
grid.text("combine",
          x=3*cellSize + 2*marginSize + unit(0.7, "inches") +
          3*cellSize + 2*marginSize + unit(0.7, "inches") +
          cellSize + 2*marginSize + .5*unit(0.7, "inches"),
          y=.95,
          gp=gpar(fontfamily="cmlgcs"))
dev.off()

# COLUMN Apply and LApply diagrams
pdf("lapply.pdf",
    width=2*(1*cell + 2*margin + # col1
             1*cell + 2*margin + # col2
             1*cell + 2*margin + # col3
             .6) +               # padding beside
          1,                    # padding between
    # Height based on LApply diagram + gap at top
    height=.2 +                # top gap
           4*cell + 2*margin + # list
           0.8 +               # gap
           3*cell + 2*margin + # components
           0.8 +               # gap
           cell + 2*margin +   # results
           0.8 +               # gap
           2*cell + 2*margin + # final
           0.8 +               # gap
           cell + 2*margin     # sapply
           )
# grid.newpage()
# COLUMN Apply diagram
# Overall arrangement of two diagrams
pushViewport(viewport(layout=grid.layout(2, 3,
                        widths=unit(c(1, 1, 1),
                          c("null", "inches", "null")),
                        heights=unit(c(.2, 1), c("inches", "null")))))
pushViewport(viewport(layout.pos.col=1, layout.pos.row=2))
# Shift this diagram down one cellSize to match LApply diagram vertically
pushViewport(viewport(x=unit(.6, "inches"),
                      width=unit(1, "npc") - unit(.6, "inches"),
                      y=unit(1, "npc") - cellSize,
                      just=c("left", "top")))
grid.text("apply()", y=unit(1, "npc") + cellSize + unit(.5, "lines"))
pushViewport(viewport(y=unit(1, "npc"),
                      height=3*cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=cellSize,
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    for (j in 1:3) {
        pushViewport(viewport(layout.pos.row=i,
                              layout.pos.col=j))
        grid.rect()
        grid.text((j - 1)*3 + i)
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches"),
                      height=3*cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(3, 5,
                        widths=unit.c(cellSize, 2*marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    for (j in 1:3) {
        pushViewport(viewport(layout.pos.row=i,
                              layout.pos.col=j*2 - 1))
        grid.rect()
        grid.text((j - 1)*3 + i)
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches"),
                      height=cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(1, 5,
                        widths=unit.c(cellSize, 2*marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=i*2 - 1))
        grid.rect()
        grid.text(c(2, 5, 8)[i])
        popViewport()
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches") - cellSize - 2*marginSize -
                      unit(.7, "inches"),
                      height=cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(1, 3,
                        widths=cellSize,
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=i))
        grid.rect()
        grid.text(c(2, 5, 8)[i])
        popViewport()
}
popViewport(2)
y <- 3*cellSize + 2*marginSize
dotlinearrow <- function(x, y, ...) {
    grid.circle(x, y, r=unit(.5, "mm"), gp=gpar(fill="black"))
    grid.segments(x, y, ...)
}
dotlinearrow(unit(.5, "npc") + cellSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
y <- 3*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize
dotlinearrow(unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
y <- 3*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize
dotlinearrow(unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
popViewport() # Overall shift across .5 inches
grid.text("subset",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + .5*unit(0.7, "inches")),
          x=unit(.6, "inches"), just="right",
          gp=gpar(fontfamily="cmlgcs"))
grid.text("mean()",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + unit(0.7, "inches") +
           3*cellSize + 2*marginSize + .5*unit(0.7, "inches")),
          x=unit(.6, "inches"), just="right")
grid.text("combine",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + unit(0.7, "inches") +
           3*cellSize + 2*marginSize + unit(0.7, "inches") +
           cellSize + 2*marginSize + .5*unit(0.7, "inches")),
          x=unit(.6, "inches"), just="right",
          gp=gpar(fontfamily="cmlgcs"))
popViewport() # Position of this diagram on page
# LApply diagram
pushViewport(viewport(layout.pos.col=3, layout.pos.row=2))
pushViewport(viewport(x=0, width=3*cellSize + 6*marginSize,
                      just="left"))
grid.text("lapply()", y=unit(1, "npc") + unit(.5, "lines"))
pushViewport(viewport(y=unit(1, "npc"),
                      height=4*cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(y=unit(1, "npc") - .5*cellSize,
                      just="top",
                      layout=grid.layout(3, 5,
                        widths=unit.c(cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
for (j in 1:3) {
    if (j == 3) {
        for (i in 1:2) {
            pushViewport(viewport(layout.pos.row=i,
                                  layout.pos.col=j*2 - 1))
            grid.rect()
            grid.text(c(7, 9)[i])
            popViewport()
        }
    } else if (j == 1) {
        for (i in 1:3) {
            pushViewport(viewport(layout.pos.row=i,
                                  layout.pos.col=j*2 - 1))
            grid.rect()
            grid.text((j - 1)*3 + i)
            popViewport()
        }
    } else {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=j*2 - 1))
        grid.rect()
        grid.text(5)
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 4*cellSize - 2*marginSize -
                      unit(.7, "inches"),
                      height=3*cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(3, 5,
                        widths=unit.c(cellSize, 2*marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (j in 1:3) {
    if (j == 3) {
        for (i in 1:2) {
            pushViewport(viewport(layout.pos.row=i,
                                  layout.pos.col=j*2 - 1))
            grid.rect()
            grid.text(c(7, 9)[i])
            popViewport()
        }
    } else if (j == 1) {
        for (i in 1:3) {
            pushViewport(viewport(layout.pos.row=i,
                                  layout.pos.col=j*2 - 1))
            grid.rect()
            grid.text((j - 1)*3 + i)
            popViewport()
        }
    } else {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=j*2 - 1))
        grid.rect()
        grid.text(8)
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 4*cellSize - 2*marginSize -
                      unit(.7, "inches") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches"),
                      height=cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(1, 5,
                        widths=unit.c(cellSize, 2*marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=i*2 - 1))
        grid.rect()
        grid.text(c(2, 5, 8)[i])
        popViewport()
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 4*cellSize - 2*marginSize -
                      unit(.7, "inches") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches") - cellSize - 2*marginSize -
                      unit(.7, "inches"),
                      height=2*cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(y=unit(1, "npc") - .5*cellSize,
                      just="top",
                      layout=grid.layout(1, 5,
                        widths=unit.c(cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.line.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.circle(.5, 1.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=1))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=3))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
grid.line.to(.5, 1,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=5))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=i*2 - 1))
        grid.rect()
        grid.text(c(2, 5, 8)[i])
        popViewport()
}
popViewport(2)
pushViewport(viewport(y=unit(1, "npc") - 4*cellSize - 2*marginSize -
                      unit(.7, "inches") - 3*cellSize - 2*marginSize -
                      unit(.7, "inches") - cellSize - 2*marginSize -
                      unit(.7, "inches") - 2*cellSize - 2*marginSize -
                      unit(.9, "inches"),
                      height=cellSize + 2*marginSize,
                      just="top"))
pushViewport(viewport(layout=grid.layout(1, 3,
                        widths=cellSize,
                        heights=cellSize),
                      gp=gpar(col="grey60", fill="grey90")))
for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=1,
                              layout.pos.col=i))
        grid.rect()
        grid.text(c(2, 5, 8)[i])
        popViewport()
}
popViewport(2)
y <- 4*cellSize + 2*marginSize
dotlinearrow <- function(x, y, ..., gp) {
    grid.circle(x, y, r=unit(.5, "mm"), gp=gp)
    grid.segments(x, y, ..., gp=gp)
}
dotlinearrow(unit(.5, "npc") + cellSize + marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize - marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
y <- 4*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize
dotlinearrow(unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
y <- 4*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize
dotlinearrow(unit(.5, "npc") + cellSize + 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize + marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize - 2*marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize - marginSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
y <- 4*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize + unit(0.7, "inches") +
    2*cellSize + 2*marginSize + unit(0.2, "inches")
dotlinearrow(unit(.5, "npc") + cellSize + marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") + cellSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(col="grey60", fill="grey60"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc"),
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc"),
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(col="grey60", fill="grey60"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(unit(.5, "npc") - cellSize - marginSize,
             unit(1, "npc") - y - unit(1, "mm"),
             unit(.5, "npc") - cellSize,
             unit(1, "npc") - y + unit(1, "mm") - unit(0.7, "inches"),
             gp=gpar(col="grey60", fill="grey60"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
popViewport() # everything but the text labels
pushViewport(viewport(x=unit(1, "npc"),
                      width=unit(.6, "inches"),
                      just="right"))
grid.text("subset",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + .5*unit(0.7, "inches")),
          x=0, just="left",
          gp=gpar(fontfamily="cmlgcs"))
grid.text("mean()",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + unit(0.7, "inches") +
           3*cellSize + 2*marginSize + .5*unit(0.7, "inches")),
          x=0, just="left")
grid.text("combine",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + unit(0.7, "inches") +
           3*cellSize + 2*marginSize + unit(0.7, "inches") +
           cellSize + 2*marginSize + .5*unit(0.7, "inches")),
          x=0, just="left",
          gp=gpar(fontfamily="cmlgcs"))
grid.text("simplify",
          y=unit(1, "npc") -
          (4*cellSize + 2*marginSize + unit(0.7, "inches") +
           3*cellSize + 2*marginSize + unit(0.7, "inches") +
           cellSize + 2*marginSize + unit(0.7, "inches") +
           2*cellSize + 2*marginSize + .5*unit(0.9, "inches")),
          x=0, just="left",
          gp=gpar(col="grey60", fontfamily="cmlgcs"))
popViewport() 
y <- 4*cellSize + 2*marginSize + unit(0.7, "inches") +
    3*cellSize + 2*marginSize + unit(0.7, "inches") +
    cellSize + 2*marginSize + unit(0.7, "inches") +
    2*cellSize + 2*marginSize + unit(0.1, "inches")
grid.segments(0, unit(1, "npc") - y, 1, unit(1, "npc") - y,
              gp=gpar(col="grey60", fill="grey60", lty="dashed"))
popViewport() # Position of LApply diagram on page
dev.off()

# Postscript versions
for (i in list.files(pattern="apply[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

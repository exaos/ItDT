source("common.R")

# Data frame with attributes
pdf("dfattr.pdf",
    width=3*cell + 4*margin +  # df
          3*margin +           # gap
          2*cell + 3*margin,   # attr
    height=3.5*cell + 2*margin +  # structures
           2.5*margin + cell)              # curvy dotted line
# df
pushViewport(viewport(x=0, width=3*cellSize + 4*marginSize,
                      y=0, height=unit(1, "npc") - 2.5*marginSize - cellSize,
                      just=c("left", "bottom")))
pushViewport(viewport(layout=grid.layout(4, 5,
                        widths=unit.c(cellSize, marginSize),
                        heights=unit.c(0.5*cellSize,
                          rep(cellSize, 3))),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1,
            vp=viewport(layout.pos.row=1,
              layout.pos.col=1))
grid.line.to(.5, 1,
            vp=viewport(layout.pos.row=1,
              layout.pos.col=5))
for (j in c(1, 3, 5)) {
    pushViewport(viewport(layout.pos.row=1,
                          layout.pos.col=j))
    grid.segments(.5, 1, .5, -.5)
    grid.circle(.5, 1, r=unit(.5, "mm"), gp=gpar(fill="black"))
    popViewport()
    for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=i + 1,
                              layout.pos.col=j))
        grid.rect()
        if (j == 1) {
            grid.text(i)
        } else if (j == 3) {
            grid.rect(gp=gpar(fill=c("grey90", "grey60")[i %% 2 + 1]))
            grid.text(c("M", "F")[i %% 2 + 1],
                      gp=gpar(col=c("black", "black")[i %% 2 + 1],
                        fontface=c("plain", "bold")[i %% 2 + 1]))
        } else {
            grid.text(letters[i])
        }
        popViewport()
    }
}
popViewport(2)
# attr
pushViewport(viewport(x=3*cellSize + 4*marginSize + 3*marginSize,
                      width=2*cellSize + 3*marginSize,
                      y=0, height=unit(1, "npc") - 2.5*marginSize - cellSize,
                      just=c("left", "bottom")))
pushViewport(viewport(layout=grid.layout(4, 3,
                        widths=unit.c(cellSize, marginSize),
                        heights=unit.c(0.5*cellSize,
                          rep(cellSize, 3))),
                      gp=gpar(fill="grey90")))
grid.move.to(.5, 1,
            vp=viewport(layout.pos.row=1,
              layout.pos.col=1))
grid.line.to(.5, 1,
            vp=viewport(layout.pos.row=1,
              layout.pos.col=3))
for (j in c(1, 3)) {
    pushViewport(viewport(layout.pos.row=1,
                          layout.pos.col=j))
    grid.segments(.5, 1, .5, -.5)
    grid.circle(.5, 1, r=unit(.5, "mm"), gp=gpar(fill="black"))
    popViewport()
    for (i in 1:3) {
        pushViewport(viewport(layout.pos.row=i + 1,
                              layout.pos.col=j))
        if (j == 3) {
            grid.rect()
            grid.text(c("X", "Y", "Z")[i])
        } else if (j == 1) {
            grid.rect()
            grid.text(i)
        }
        popViewport()
    }
}
popViewport(2)
# curvy dotted line
h <- 3*cell + 4*margin + 1.5*margin
k <- 3.5*cell + margin
a <- 2.5*margin + .5*cell
b <- 2.5*margin + .5*cell
t <- seq(0, pi, length=10)[-c(1, 10)]
x <- h + a*cos(t)
y <- k + b*sin(t)
grid.points(x, y, default="inches", pch=16, size=unit(1, "mm"))
dev.off()

# Factor with attributes
pdf("factorattr.pdf",
    width=cell + 2*margin +    # factor
          3*margin +           # gap
          cell + 2*margin,   # attr
    height=3*cell + 2*margin + 
           2.5*margin)              # curvy dotted line
pushViewport(viewport(x=0, width=cellSize + 2*marginSize,
                      y=0, height=unit(1, "npc") - 2.5*marginSize,
                      just=c("left", "bottom")))
pushViewport(viewport(layout=grid.layout(3, 1,
                        widths=cellSize,
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[i %% 2 + 1]))
    grid.text(c(2, 1)[i %% 2 + 1],
              gp=gpar(col=c("black", "black")[i %% 2 + 1],
                fontface=c("plain", "bold")[i %% 2 + 1]))
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=cellSize + 2*marginSize + 3*marginSize,
                      width=cellSize + 2*marginSize,
                      y=0, height=unit(1, "npc") - 2.5*marginSize,
                      just=c("left", "bottom")))
pushViewport(viewport(layout=grid.layout(3, 1,
                        widths=cellSize,
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i))
    grid.rect(gp=gpar(fill=c("grey90", "grey60")[i %% 2 + 1]))
    grid.text(c("M", "F")[i %% 2 + 1],
              gp=gpar(col=c("black", "black")[i %% 2 + 1],
                fontface=c("plain", "bold")[i %% 2 + 1]))
    popViewport()
}
popViewport(2)
# curvy dotted line
h <- cell + 2*margin + 1.5*margin
k <- 3*cell + margin
a <- 2.5*margin
b <- 2.5*margin
t <- seq(0, pi, length=10)[-c(1, 10)]
x <- h + a*cos(t)
y <- k + b*sin(t)
grid.points(x, y, default="inches", pch=16, size=unit(1, "mm"))
dev.off()

# Postscript versions
for (i in list.files(pattern="attr[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

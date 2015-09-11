source("common.R")

# ifelse diagram
test <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
yes <- rep("a", 5)
no <- rep("b", 5)
pdf("ifelse.pdf",
    width=3*cell + 8*margin + # test + yes + no
          0.8 +                 # gap
          cell + 2*margin,  # result
    height=5*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=3*cellSize + 8*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(5, 7,
                        widths=unit.c(marginSize, cellSize,
                          3*marginSize, cellSize,
                          3*marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:5) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect(gp=gpar(fill=if (test[i]) "grey90" else "white"))
    grid.text(if(test[i]) "T" else "F",
              gp=gpar(col=if (test[i]) "black" else "grey60"))
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4,
                          gp=gpar(col="grey")))
    grid.rect(gp=gpar(col="black", fill="white"))
    grid.text(yes[i])
    popViewport()
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=6,
                          gp=gpar(col="grey")))
    grid.rect(gp=gpar(col="black", fill="white"))
    grid.text(no[i])
    popViewport()
}
for (i in 1:5) {
    if (test[i]) {
        pushViewport(viewport(layout.pos.row=i,
                              layout.pos.col=4))
        grid.rect()
        grid.text(yes[i])
        popViewport()
    }
    if (!test[i]) {
        pushViewport(viewport(layout.pos.row=i,
                              layout.pos.col=6))
        grid.rect()
        grid.text(no[i])
        popViewport()
    }
}
popViewport(2)
pushViewport(viewport(x=3*cellSize + 8*marginSize + unit(0.7, "inches"),
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
    grid.text(if (test[i]) yes[i] else no[i])
    popViewport()
}
popViewport(2)
x <- 3*cellSize + 8*marginSize
for (i in 1:5) {
    if (test[i]) {
        start <- x + unit(1, "mm") - cellSize - 3*marginSize
    } else {
        start <- x + unit(1, "mm")
    }
    dotlinearrow(start,
                 unit(.5, "npc") + unit(3 - i, "lines"),
                 x - unit(1, "mm") + unit(0.7, "inches"),
                 unit(.5, "npc") + unit(3 - i, "lines"),
                 gp=gpar(fill="black"),
                 arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
}
grid.text("test",
          .5*cellSize + marginSize,
          y=unit(.5, "npc") + 3.5*cellSize)
grid.text("yes",
          1.5*cellSize + 4*marginSize,
          y=unit(.5, "npc") + 3.5*cellSize)
grid.text("no",
          2.5*cellSize + 7*marginSize,
          y=unit(.5, "npc") + 3.5*cellSize)
dev.off()

# Postscript versions
for (i in list.files(pattern="ifelse[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

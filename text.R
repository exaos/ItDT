source("common.R")

# Subset (integer index) diagram
text <- c("old pond", "a frog jumps", "the sound of water")
N <- max(nchar(text)) + 2

pdf("textgrep.pdf",
    width=N*char + 4*margin + # text
          0.8 +               # gap
          cell + 2*margin,    # result
    height=3*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=N*charSize + 4*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize,
                          marginSize + N*charSize + marginSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(paste('"', text[i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=N*charSize + 4*marginSize + unit(0.7, "inches"),
                      width=cellSize + 2*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize, cellSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(grep("d", text)[i])
    popViewport()
}
popViewport(2)
x <- N*charSize + 4*marginSize
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") + unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(1, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
              unit(.5, "npc") - unit(1, "lines"),
              x - unit(1, "mm") + unit(0.7, "inches"),
              unit(.5, "npc") + unit(0, "lines"),
              gp=gpar(fill="black"),
              arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))

grid.text("grep(\"d\")",
          x=N*charSize + 4*marginSize + unit(0.35, "inches"),
          y=.9)
dev.off()

pdf("textregexpr.pdf",
    width=N*char + 4*margin + # text
          0.8 +               # gap
          cell + 2*margin +   # result
          3*margin +          # gap
          cell + 2*margin,  # attr
    height=3*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=N*charSize + 4*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize,
                          marginSize + N*charSize + marginSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(paste('"', text[i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=N*charSize + 4*marginSize + unit(0.7, "inches"),
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
    grid.text(regexpr("d", text)[i])
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=N*charSize + 4*marginSize + unit(0.7, "inches") +
                      cellSize + 2*marginSize + 3*marginSize,
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
    grid.text(attr(regexpr("d", text), "match.length")[i])
    popViewport()
}
popViewport(2)
# curvy dotted line
h <- N*char + 4*margin + .7 + cell + 2*margin + 1.5*margin
k <- .25 + 3*cell + margin
a <- 2.5*margin
b <- 2.5*margin
t <- seq(0, pi, length=10)[-c(1, 10)]
x <- h + a*cos(t)
y <- k + b*sin(t)
grid.points(x, y, default="inches", pch=16, size=unit(1, "mm"))
x <- N*charSize + 4*marginSize
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

grid.text("regexpr(\"d\")",
          x=N*charSize + 4*marginSize + unit(0.35, "inches"),
          y=.9)
dev.off()

pdf("textgregexpr.pdf",
    width=N*char + 4*margin + # text
          0.8 +               # gap
          cell + 2*margin +   # result
          3*margin +          # gap
          cell + 2*margin +   # attr
          2*margin +            # gap
          cell + 2*margin +   # result
          3*margin +          # gap
          cell + 2*margin +   # attr
          2*margin +            # gap
          cell + 2*margin +   # result
          3*margin +          # gap
          cell + 2*margin,    # attr
    height=6*cell + 2*margin +
           1)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=N*charSize + 4*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize,
                          marginSize + N*charSize + marginSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(paste('"', text[i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=N*charSize + 4*marginSize + unit(0.7, "inches"),
                      width=6*cellSize + 21*marginSize,
                      y=unit(.5, "npc") - cellSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(6, 13,
                        widths=unit.c(marginSize,
                          cellSize, 5*marginSize, cellSize,
                          2*marginSize,
                          cellSize, 5*marginSize, cellSize,
                          2*marginSize,
                          cellSize, 5*marginSize, cellSize,
                          marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
# Overall list lines
grid.move.to(.5, 2.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, 2.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
grid.circle(.5, 2.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.circle(.5, 2.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.circle(.5, 2.5, r=unit(.5, "mm"), gp=gpar(fill="black"),
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
grid.move.to(.5, 2.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.move.to(.5, 2.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=4,
               layout.pos.col=6))
grid.move.to(.5, 2.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=10))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=10))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(gregexpr("d", text)[[1]][i])
    popViewport()
}
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=4))
    grid.rect()
    grid.text(attr(gregexpr("d", text)[[1]], "match.length")[i])
    popViewport()
}
# curvy dotted line
h <- cell + margin + 2.5*margin
k <- .5 + 6*cell + margin
a <- 2.5*margin
b <- 2.5*margin
t <- seq(0, pi, length=10)[-c(1, 10)]
x <- h + a*cos(t)
y <- k + b*sin(t)
grid.points(x, y, default="inches", pch=16, size=unit(1, "mm"))
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i + 3,
                          layout.pos.col=6))
    grid.rect()
    grid.text(gregexpr("d", text)[[2]][i])
    popViewport()
}
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i + 3,
                          layout.pos.col=8))
    grid.rect()
    grid.text(attr(gregexpr("d", text)[[2]], "match.length")[i])
    popViewport()
}
# curvy dotted line
h <- 3*cell + 8*margin + 2.5*margin
k <- .5 + 3*cell + margin
a <- 2.5*margin
b <- 2.5*margin
t <- seq(0, pi, length=10)[-c(1, 10)]
x <- h + a*cos(t)
y <- k + b*sin(t)
grid.points(x, y, default="inches", pch=16, size=unit(1, "mm"))
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i + 5,
                          layout.pos.col=10))
    grid.rect()
    grid.text(gregexpr("d", text)[[3]][i])
    popViewport()
}
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i + 5,
                          layout.pos.col=12))
    grid.rect()
    grid.text(attr(gregexpr("d", text)[[3]], "match.length")[i])
    popViewport()
}
# curvy dotted line
h <- 5*cell + 15*margin + 2.5*margin
k <- .5 + 1*cell + margin
a <- 2.5*margin
b <- 2.5*margin
t <- seq(0, pi, length=10)[-c(1, 10)]
x <- h + a*cos(t)
y <- k + b*sin(t)
grid.points(x, y, default="inches", pch=16, size=unit(1, "mm"))
popViewport(2)
x <- N*charSize + 4*marginSize
dotlinearrow(x + unit(1, "mm"),
             unit(.5, "npc") + unit(1, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches"),
             unit(.5, "npc") + unit(1.5, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
             unit(.5, "npc") + unit(0, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches") +
             2*cellSize + 7*marginSize,
             unit(.5, "npc") - unit(1.5, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
             unit(.5, "npc") + unit(-1, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches") +
             4*cellSize + 14*marginSize,
             unit(.5, "npc") - unit(3.5, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))

grid.text("gregexpr(\"d\")",
          x=N*charSize + 4*marginSize + unit(0.35, "inches"),
          y=unit(.5, "npc") + unit(4.5, "lines"))
dev.off()

split <- strsplit(text, "d")
N1 <- max(nchar(split[[1]])) + 2
N2 <- max(nchar(split[[2]])) + 2
N3 <- max(nchar(split[[3]])) + 2
pdf("textstrsplit.pdf",
    width=N*char + 4*margin + # text
          0.8 +               # gap
          N1*char + 4*margin +   # result
          2*margin +            # gap
          N2*char + 4*margin +   # result
          2*margin +            # gap
          N3*char + 4*margin,    # result
    height=7*cell + 2*margin +
           .5)                # gap
# grid.newpage()
pushViewport(viewport(x=0, width=N*charSize + 4*marginSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(3, 3,
                        widths=unit.c(marginSize,
                          marginSize + N*charSize + marginSize, marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
for (i in 1:3) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(paste('"', text[i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
popViewport(2)
pushViewport(viewport(x=N*charSize + 4*marginSize + unit(0.7, "inches"),
                      width=(N1 + N2 + N3)*charSize + 12*marginSize,
                      y=unit(.5, "npc") - cellSize,
                      just="left"))
pushViewport(viewport(layout=grid.layout(7, 7,
                        widths=unit.c(marginSize,
                          marginSize + N1*charSize + marginSize, 
                          2*marginSize,
                          marginSize + N2*charSize + marginSize, 
                          2*marginSize,
                          marginSize + N3*charSize + marginSize, 
                          marginSize),
                        heights=cellSize),
                      gp=gpar(fill="grey90")))
# Overall list lines
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
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=2))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=4))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=4,
               layout.pos.col=4))
grid.move.to(.5, 1.5,
             vp=viewport(layout.pos.row=1,
               layout.pos.col=6))
grid.line.to(.5, .5,
             vp=viewport(layout.pos.row=6,
               layout.pos.col=6))
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i,
                          layout.pos.col=2))
    grid.rect()
    grid.text(paste('"', split[[1]][i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
for (i in 1:1) {
    pushViewport(viewport(layout.pos.row=i + 3,
                          layout.pos.col=4))
    grid.rect()
    grid.text(paste('"', split[[2]][i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
for (i in 1:2) {
    pushViewport(viewport(layout.pos.row=i + 5,
                          layout.pos.col=6))
    grid.rect()
    grid.text(paste('"', split[[3]][i], '"', sep=""),
              x=unit(1, "npc") - marginSize, just="right")
    popViewport()
}
popViewport(2)
x <- N*charSize + 4*marginSize
dotlinearrow(x + unit(1, "mm"),
             unit(.5, "npc") + unit(1, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches"),
             unit(.5, "npc") + unit(2, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
             unit(.5, "npc") + unit(0, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches") +
             N1*charSize + 4*marginSize,
             unit(.5, "npc") - unit(1, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))
dotlinearrow(x + unit(1, "mm"),
             unit(.5, "npc") + unit(-1, "lines"),
             x - unit(1, "mm") + unit(0.7, "inches") +
             (N1 + N2)*charSize + 8*marginSize,
             unit(.5, "npc") - unit(3, "lines"),
             gp=gpar(fill="black"),
             arrow=arrow(angle=15, length=unit(2, "mm"), type="closed"))

grid.text("strsplit(\"d\")",
          x=N*charSize + 4*marginSize + unit(0.35, "inches"),
          y=unit(.5, "npc") + unit(3.5, "lines"))
dev.off()

# Postscript versions
for (i in list.files(pattern="text.+[.]pdf$")) {
    embedFonts(i,
               fontpaths=file.path("..",
                 "cm-lgc", "fonts", "type1", "public", "cm-lgc"))
    system(paste("pdf2ps", i))
}

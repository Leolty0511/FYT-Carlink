.class Landroid/widget/TextView$CharWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/GraphicsOperations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharWrapper"
.end annotation


# instance fields
.field private mChars:[C

.field private mLength:I

.field private mStart:I


# direct methods
.method public constructor <init>([CII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 5
    .line 6
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 7
    .line 8
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic access$102(Landroid/widget/TextView$CharWrapper;[C)[C
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    return-object p1
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1
.end method

.method public drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V
    .locals 7

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    sub-int v4, p3, p2

    sub-int v6, p5, p4

    iget-object v2, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v3, p2, v1

    add-int v5, p4, v1

    move-object v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public getChars(II[CI)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 12
    .line 13
    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 14
    .line 15
    add-int/2addr v1, p1

    .line 16
    sub-int/2addr p2, p1

    .line 17
    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    .line 22
    .line 23
    new-instance p4, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p1, ", "

    .line 32
    .line 33
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p3
.end method

.method public getTextRunAdvances(IIIIZ[FILandroid/graphics/Paint;)F
    .locals 10

    move-object v0, p0

    sub-int v4, p2, p1

    sub-int v6, p4, p3

    iget-object v2, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v3, p1, v1

    add-int v5, p3, v1

    move-object/from16 v1, p8

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    return v1
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 7

    sub-int v3, p2, p1

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p1, p2

    add-int v5, p4, p2

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result p1

    return p1
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p4, v0, v1, p2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-virtual {p3, v0, v1, p2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result p1

    return p1
.end method

.method public set([CII)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 2
    .line 3
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 4
    .line 5
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 6
    .line 7
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    if-ltz p2, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    .line 6
    .line 7
    if-gt p1, v0, :cond_0

    .line 8
    .line 9
    if-gt p2, v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 14
    .line 15
    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 16
    .line 17
    add-int/2addr v2, p1

    .line 18
    sub-int/2addr p2, p1

    .line 19
    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, ", "

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

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
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    .line 3
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 4
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return-void
.end method

.method public static synthetic access$002(Landroid/widget/TextView$CharWrapper;[C)[C
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    return-object p1
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr p1, v1

    aget-char p1, v0, p1

    return p1
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7

    .line 1
    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    .locals 11

    move-object v0, p0

    sub-int v4, p3, p2

    sub-int v6, p5, p4

    .line 1
    iget-object v2, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v3, p2, v1

    add-int v5, p4, v1

    move-object v1, p1

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    return-void
.end method

.method public getChars(II[CI)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v1, p1

    sub-int/2addr p2, p1

    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 3
    :cond_0
    new-instance p3, Ljava/lang/IndexOutOfBoundsException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F
    .locals 10

    move-object v0, p0

    sub-int v4, p2, p1

    sub-int v6, p4, p3

    .line 1
    iget-object v2, v0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v1, v0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int v3, p1, v1

    add-int v5, p3, v1

    move-object/from16 v1, p8

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v1

    return v1
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 7

    sub-int v3, p2, p1

    .line 1
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

    .line 1
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

    .line 1
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 2

    .line 1
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
    iput p2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    .line 3
    iput p3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iget v0, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    if-gt p1, v0, :cond_0

    if-gt p2, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    add-int/2addr v2, p1

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/TextView$CharWrapper;->mChars:[C

    iget v2, p0, Landroid/widget/TextView$CharWrapper;->mStart:I

    iget v3, p0, Landroid/widget/TextView$CharWrapper;->mLength:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

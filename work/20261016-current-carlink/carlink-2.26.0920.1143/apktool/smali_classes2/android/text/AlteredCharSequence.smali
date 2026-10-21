.class public Landroid/text/AlteredCharSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AlteredCharSequence$AlteredSpanned;
    }
.end annotation


# instance fields
.field private mChars:[C

.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;[CII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 4
    iput-object p2, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 5
    iput p3, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 6
    iput p4, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method

.method public static make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;
    .locals 7

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/text/AlteredCharSequence$AlteredSpanned;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move v4, p2

    .line 12
    move v5, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$1;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Landroid/text/AlteredCharSequence;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 6
    .line 7
    if-ge p1, v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 10
    .line 11
    sub-int/2addr p1, v0

    .line 12
    aget-char p1, v1, p1

    .line 13
    .line 14
    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public getChars(II[CI)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 2
    .line 3
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 7
    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 13
    .line 14
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-le p1, p2, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 21
    .line 22
    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 23
    .line 24
    sub-int v1, p1, v1

    .line 25
    .line 26
    sub-int/2addr p2, p1

    .line 27
    invoke-static {v0, v1, p3, p4, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    sub-int/2addr v2, p1

    invoke-static {p2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/text/AlteredCharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-array v1, v0, [C

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->getChars(II[CI)V

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public update([CII)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    .line 2
    .line 3
    iput p2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    .line 4
    .line 5
    iput p3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    .line 6
    .line 7
    return-void
.end method

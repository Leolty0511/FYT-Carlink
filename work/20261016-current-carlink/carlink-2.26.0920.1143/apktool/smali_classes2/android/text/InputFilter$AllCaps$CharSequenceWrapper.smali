.class Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter$AllCaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharSequenceWrapper"
.end annotation


# instance fields
.field private final mEnd:I

.field private final mLength:I

.field private final mSource:Ljava/lang/CharSequence;

.field private final mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput p2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    .line 7
    .line 8
    iput p3, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mEnd:I

    .line 9
    .line 10
    sub-int/2addr p3, p2

    .line 11
    iput p3, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    .line 8
    .line 9
    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 18
    .line 19
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public length()I
    .locals 1

    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 2

    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    invoke-interface {v0, p1, v1, p3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p1

    iget p2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    sub-int/2addr p1, p2

    return p1
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
    iget v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mLength:I

    .line 6
    .line 7
    if-gt p2, v0, :cond_0

    .line 8
    .line 9
    if-gt p1, p2, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    .line 16
    .line 17
    add-int/2addr p1, v2

    .line 18
    add-int/2addr v2, p2

    .line 19
    invoke-direct {v0, v1, p1, v2}, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;-><init>(Ljava/lang/CharSequence;II)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 26
    .line 27
    .line 28
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mStart:I

    iget v2, p0, Landroid/text/InputFilter$AllCaps$CharSequenceWrapper;->mEnd:I

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

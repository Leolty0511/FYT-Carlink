.class public Landroid/text/InputFilter$LengthFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LengthFilter"
.end annotation


# instance fields
.field private final mMax:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    .line 2
    .line 3
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result p4

    .line 7
    sub-int/2addr p6, p5

    .line 8
    sub-int/2addr p4, p6

    .line 9
    sub-int/2addr v0, p4

    .line 10
    const-string p4, ""

    .line 11
    .line 12
    if-gtz v0, :cond_0

    .line 13
    .line 14
    return-object p4

    .line 15
    :cond_0
    sub-int/2addr p3, p2

    .line 16
    if-lt v0, p3, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_1
    add-int/2addr v0, p2

    .line 21
    add-int/lit8 p3, v0, -0x1

    .line 22
    .line 23
    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    invoke-static {p3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_2

    .line 32
    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-ne v0, p2, :cond_2

    .line 36
    .line 37
    return-object p4

    .line 38
    :cond_2
    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    return-object p1
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Landroid/text/InputFilter$LengthFilter;->mMax:I

    return v0
.end method

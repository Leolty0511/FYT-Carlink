.class Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/ReplacementTransformationMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReplacementCharSequence"
.end annotation


# instance fields
.field private mOriginal:[C

.field private mReplacement:[C

.field private mSource:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;[C[C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    .line 3
    iput-object p2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    .line 4
    iput-object p3, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    .line 2
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v2, v2, v1

    if-ne p1, v2, :cond_0

    .line 4
    iget-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char p1, p1, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public getChars(II[CI)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int/2addr p2, p1

    add-int/2addr p2, p4

    .line 2
    iget-object p1, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    array-length p1, p1

    :goto_0
    if-ge p4, p2, :cond_2

    .line 3
    aget-char v0, p3, p4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mOriginal:[C

    aget-char v2, v2, v1

    if-ne v0, v2, :cond_0

    .line 5
    iget-object v2, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mReplacement:[C

    aget-char v2, v2, v1

    aput-char v2, p3, p4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    sub-int v0, p2, p1

    .line 1
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v0

    new-array v0, v0, [C

    .line 2
    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->getChars(II[CI)V

    .line 3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

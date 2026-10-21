.class Landroid/text/TextUtils$Reverser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reverser"
.end annotation


# instance fields
.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    .line 4
    iput p3, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {p1}, Landroid/text/AndroidCharacter;->getMirror(C)C

    move-result p1

    return p1
.end method

.method public getChars(II[CI)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/text/TextUtils$Reverser;->mSource:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-static {v0, v2, v1, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int/2addr p2, p1

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p1, p2}, Landroid/text/AndroidCharacter;->mirror([CII)Z

    .line 3
    div-int/lit8 v0, p2, 0x2

    :goto_0
    if-ge p1, v0, :cond_0

    add-int v1, p4, p1

    .line 4
    aget-char v2, p3, v1

    add-int v3, p4, p2

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    .line 5
    aget-char v4, p3, v3

    aput-char v4, p3, v1

    .line 6
    aput-char v2, p3, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public length()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/text/TextUtils$Reverser;->mEnd:I

    iget v1, p0, Landroid/text/TextUtils$Reverser;->mStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2

    sub-int v0, p2, p1

    .line 1
    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/TextUtils$Reverser;->getChars(II[CI)V

    .line 3
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/text/TextUtils$Reverser;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/text/TextUtils$Reverser;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class final Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScoreEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    new-array v0, v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 11
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private static compare([B[B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p0

    .line 4
    if-ge v1, v2, :cond_2

    .line 5
    .line 6
    aget-byte v2, p0, v1

    .line 7
    .line 8
    aget-byte v3, p1, v1

    .line 9
    .line 10
    if-le v2, v3, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    return p0

    .line 14
    :cond_0
    if-ge v2, v3, :cond_1

    .line 15
    .line 16
    const/4 p0, -0x1

    .line 17
    return p0

    .line 18
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    return v0
.end method

.method private set([BI)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 3
    .line 4
    array-length v2, v1

    .line 5
    if-ge v0, v2, :cond_0

    .line 6
    .line 7
    aget-byte v2, p1, v0

    .line 8
    .line 9
    aput-byte v2, v1, v0

    .line 10
    .line 11
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iput p2, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    iget-object p1, p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-virtual {p0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compareTo(Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;)I

    move-result p1

    return p1
.end method

.method public updateIfBetter([BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->compare([B[B)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->set([BI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

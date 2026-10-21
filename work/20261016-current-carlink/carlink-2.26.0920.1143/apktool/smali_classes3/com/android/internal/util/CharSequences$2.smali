.class final Lcom/android/internal/util/CharSequences$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method public constructor <init>([BII)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    iput p2, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    iput p3, p0, Lcom/android/internal/util/CharSequences$2;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    iget v1, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    add-int/2addr p1, v1

    aget-byte p1, v0, p1

    int-to-char p1, p1

    return p1
.end method

.method public length()I
    .locals 2

    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$end:I

    iget v1, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    .line 2
    .line 3
    sub-int/2addr p1, v0

    .line 4
    sub-int/2addr p2, v0

    .line 5
    invoke-virtual {p0}, Lcom/android/internal/util/CharSequences$2;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    .line 13
    .line 14
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    iget v2, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    invoke-virtual {p0}, Lcom/android/internal/util/CharSequences$2;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

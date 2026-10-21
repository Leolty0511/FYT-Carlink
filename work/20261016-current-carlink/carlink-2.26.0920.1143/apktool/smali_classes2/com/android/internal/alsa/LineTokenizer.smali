.class public Lcom/android/internal/alsa/LineTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final kTokenNotFound:I = -0x1


# instance fields
.field private final mDelimiters:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public nextDelimiter(Ljava/lang/String;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, -0x1

    .line 6
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eq v2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    if-ge p2, v0, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move p2, v1

    .line 28
    :goto_2
    return p2
.end method

.method public nextToken(Ljava/lang/String;I)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :goto_0
    const/4 v1, -0x1

    .line 6
    if-ge p2, v0, :cond_1

    .line 7
    .line 8
    iget-object v2, p0, Lcom/android/internal/alsa/LineTokenizer;->mDelimiters:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ne v2, v1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    :goto_1
    if-ge p2, v0, :cond_2

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move p2, v1

    .line 28
    :goto_2
    return p2
.end method

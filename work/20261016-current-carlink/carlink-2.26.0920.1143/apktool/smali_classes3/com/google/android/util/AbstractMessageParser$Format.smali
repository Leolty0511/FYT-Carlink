.class public Lcom/google/android/util/AbstractMessageParser$Format;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Format"
.end annotation


# instance fields
.field private ch:C

.field private matched:Z

.field private start:Z


# direct methods
.method public constructor <init>(CZ)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iput-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    .line 13
    .line 14
    return-void
.end method

.method private getFormatEnd(C)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x2a

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x5e

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x5f

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const-string p1, "</i>"

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "unknown format \'"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "\'"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    const-string p1, "</font></b>"

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    const-string p1, "</b>"

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    const-string p1, "\u201d</font>"

    .line 52
    .line 53
    return-object p1
.end method

.method private getFormatStart(C)Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x22

    .line 2
    .line 3
    if-eq p1, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x2a

    .line 6
    .line 7
    if-eq p1, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x5e

    .line 10
    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x5f

    .line 14
    .line 15
    if-ne p1, v0, :cond_0

    .line 16
    .line 17
    const-string p1, "<i>"

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "unknown format \'"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "\'"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    throw v0

    .line 45
    :cond_1
    const-string p1, "<b><font color=\"#005FFF\">"

    .line 46
    .line 47
    return-object p1

    .line 48
    :cond_2
    const-string p1, "<b>"

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    const-string p1, "<font color=\"#999999\">\u201c"

    .line 52
    .line 53
    return-object p1
.end method


# virtual methods
.method public controlCaps()Z
    .locals 2

    iget-char v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    const/16 v1, 0x5e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isHtml()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    return v0
.end method

.method public setMatched(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    return-void
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->matched:Z

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->start:Z

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatStart(C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/util/AbstractMessageParser$Format;->getFormatEnd(C)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    return-object p1

    .line 23
    :cond_1
    iget-char p1, p0, Lcom/google/android/util/AbstractMessageParser$Format;->ch:C

    .line 24
    .line 25
    const/16 v0, 0x22

    .line 26
    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    const-string p1, "&quot;"

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_1
    return-object p1
.end method

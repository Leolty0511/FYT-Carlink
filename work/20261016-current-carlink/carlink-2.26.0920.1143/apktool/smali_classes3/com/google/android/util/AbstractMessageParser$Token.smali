.class public abstract Lcom/google/android/util/AbstractMessageParser$Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Token$Type;
    }
.end annotation


# instance fields
.field protected text:Ljava/lang/String;

.field protected type:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# direct methods
.method public constructor <init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public controlCaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract isHtml()Z
.end method

.method public isMedia()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCaps()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 1

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "not html"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.class public Lu0/e$b;
.super Lz/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 3

    .line 1
    invoke-static {}, Lu0/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TO ARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2, p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 3
    :cond_0
    aget-byte v0, p1, p2

    const/16 v1, -0x16

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    .line 4
    invoke-static {p1, p2, p3}, Lu0/e;->g([BII)V

    :goto_0
    return-void
.end method

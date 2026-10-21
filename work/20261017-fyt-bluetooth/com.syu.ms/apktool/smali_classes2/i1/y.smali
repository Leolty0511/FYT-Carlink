.class public Li1/y;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/y$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/y$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    .line 2
    new-instance p1, Li1/y$a;

    invoke-direct {p1, p0}, Li1/y$a;-><init>(Li1/y;)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 3
    invoke-virtual {p1}, Li1/e;->h()V

    return-void
.end method


# virtual methods
.method public l([I)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandle ===== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    aget v3, p1, v0

    const/4 v4, 0x2

    .line 3
    aget v5, p1, v4

    const/4 v6, 0x5

    .line 4
    aget p1, p1, v6

    and-int/lit8 v6, p1, 0x1

    const/16 v7, 0xf

    if-ne v6, v0, :cond_0

    shr-int/lit8 v6, v3, 0x4

    and-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v6, v7

    :goto_0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_1

    and-int/2addr v3, v7

    goto :goto_1

    :cond_1
    move v3, v7

    :goto_1
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_2

    shr-int/lit8 v8, v5, 0x4

    and-int/2addr v8, v7

    goto :goto_2

    :cond_2
    move v8, v7

    :goto_2
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    and-int/lit8 p1, v5, 0xf

    goto :goto_3

    :cond_3
    move p1, v7

    :goto_3
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const-string v0, "r1 : %d, r2 : %d, r3 : %d, r4 : %d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    if-ltz v6, :cond_4

    if-gt v6, v0, :cond_4

    goto :goto_4

    :cond_4
    move v6, v7

    .line 6
    :goto_4
    invoke-static {v6}, Lu0/d;->R2(I)V

    if-ltz v3, :cond_5

    if-gt v3, v0, :cond_5

    goto :goto_5

    :cond_5
    move v3, v7

    .line 7
    :goto_5
    invoke-static {v3}, Lu0/d;->S2(I)V

    if-ltz v8, :cond_6

    if-gt v8, v0, :cond_6

    goto :goto_6

    :cond_6
    move v8, v7

    .line 8
    :goto_6
    invoke-static {v8}, Lu0/d;->T2(I)V

    if-ltz p1, :cond_7

    if-gt p1, v0, :cond_7

    move v7, p1

    .line 9
    :cond_7
    invoke-static {v7}, Lu0/d;->U2(I)V

    return-void
.end method

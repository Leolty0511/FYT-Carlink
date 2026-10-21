.class public Lu0/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lu0/f;->d()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const-string v0, "\u9a8c\u8bc1\u5ba2\u6237\u7801"

    .line 2
    invoke-static {v0}, Lu0/f;->k(Ljava/lang/String;)V

    const/16 v0, 0x87

    new-array v0, v0, [B

    const/16 v3, -0x23

    aput-byte v3, v0, v2

    const/16 v3, 0x55

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v4, v0, v1

    const/4 v1, 0x4

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v3, -0x80

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    add-int/lit8 v4, v3, 0x6

    .line 3
    invoke-static {}, Lu0/f;->o()[B

    move-result-object v5

    const v6, 0x9410

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    aput-byte v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_1
    const/16 v3, 0x86

    if-ge v2, v3, :cond_1

    .line 4
    aget-byte v3, v0, v2

    add-int/2addr v1, v3

    int-to-byte v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 5
    sget-object v1, Lz/a;->b:Lo1/e0;

    invoke-virtual {v1, v0}, Lo1/e0;->i([B)V

    goto :goto_2

    .line 6
    :cond_2
    invoke-static {p0}, Lu0/d;->a3(Ljava/lang/Runnable;)V

    .line 7
    invoke-static {}, Lu0/f;->a()I

    .line 8
    invoke-static {v1}, Lu0/f;->m(I)I

    invoke-static {v2}, Lu0/f;->r(I)I

    const v0, 0x9480

    invoke-static {v0}, Lu0/f;->t(I)I

    .line 9
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-static {}, Lu0/f;->v()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :goto_2
    return-void
.end method

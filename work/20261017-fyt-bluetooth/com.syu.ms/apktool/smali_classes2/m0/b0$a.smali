.class public Lm0/b0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lm0/b0;


# direct methods
.method public constructor <init>(Lm0/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRequestUpgradeMode  mUpgradeStep == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-static {v2}, Lm0/b0;->N2(Lm0/b0;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-static {v0}, Lm0/b0;->N2(Lm0/b0;)I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-static {v0}, Lm0/b0;->Q2(Lm0/b0;)I

    .line 4
    iget-object v0, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-static {v0}, Lm0/b0;->O2(Lm0/b0;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-static {v0, v2}, Lm0/b0;->P2(Lm0/b0;I)I

    .line 6
    iget-object v0, p0, Lm0/b0$a;->a:Lm0/b0;

    invoke-static {v0}, Lm0/b0;->R2(Lm0/b0;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Ll0/z;->a:Ll0/a;

    const/16 v3, 0xc

    new-array v3, v3, [I

    const/16 v4, 0xe3

    aput v4, v3, v2

    const/4 v4, 0x1

    const/16 v5, 0xf1

    aput v5, v3, v4

    const/4 v4, 0x2

    const/16 v5, 0x9

    aput v5, v3, v4

    const/4 v4, 0x3

    aput v2, v3, v4

    iget-object v4, p0, Lm0/b0$a;->a:Lm0/b0;

    iget v4, v4, Lm0/b0;->f:I

    shr-int/lit8 v6, v4, 0x18

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v1

    const/4 v1, 0x5

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v1

    const/4 v1, 0x6

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    aput v6, v3, v1

    const/4 v1, 0x7

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    const/16 v1, 0x8

    aput v2, v3, v1

    aput v2, v3, v5

    const/16 v1, 0xa

    aput v2, v3, v1

    const/16 v1, 0xb

    aput v2, v3, v1

    invoke-virtual {v0, v3}, Ll0/a;->f([I)V

    const-wide/16 v0, 0x14

    .line 8
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CAN"

    const-string v1, "sleep exception"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :goto_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u8fdb\u5165CAN\u76d2\u81ea\u8eab\u7684\u5347\u7ea7\u6a21\u5f0f"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p0}, Lm0/d;->i(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

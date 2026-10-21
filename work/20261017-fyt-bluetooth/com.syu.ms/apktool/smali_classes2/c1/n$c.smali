.class public Lc1/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/n;


# direct methods
.method public constructor <init>(Lc1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/n$c;->a:Lc1/n;

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

    const-string v2, "11111  mReSend  standby_time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc1/n;->S2()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->u(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lc1/n;->S2()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lc1/n;->U2()I

    const/16 v0, 0x8

    new-array v2, v0, [B

    .line 4
    fill-array-data v2, :array_0

    .line 5
    sget-object v3, Lz/a;->f:Lo1/e0;

    invoke-virtual {v3, v2}, Lo1/e0;->i([B)V

    .line 6
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v3

    iget-object v4, p0, Lc1/n$c;->a:Lc1/n;

    iget-object v4, v4, Lc1/n;->i:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-static {v3, v4, v5, v6}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "2222  mReSend  standby_time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc1/n;->S2()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u9001 \u6570\u636e \uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v1, v0}, Ln1/b;->x(Ljava/lang/String;[BII)V

    .line 8
    :cond_0
    invoke-static {}, Lc1/n;->S2()I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 9
    invoke-static {v1}, Lc1/n;->T2(I)I

    const/4 v0, 0x6

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 10
    invoke-static {v0, v3}, Lc1/b;->i(I[I)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x55t
        -0x56t
        0x3ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x3ft
    .end array-data
.end method

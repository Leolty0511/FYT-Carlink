.class public Lf1/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf1/a;


# direct methods
.method public constructor <init>(Lf1/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf1/a$g;->a:Lf1/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lf1/a$g;->a:Lf1/a;

    iget-object v0, v0, Lf1/a;->P:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lf1/a$g;->a:Lf1/a;

    iget-object v0, v0, Lf1/a;->P:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "img.read"

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "false"

    .line 4
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v2, 0x7f030069

    const/16 v3, 0x10

    invoke-static {v0, v2, v3}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    .line 6
    sget-object v2, Lf1/a;->G0:Ljava/lang/String;

    const-string v3, "==========>>> READ IIC DATA:"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    array-length v2, v0

    const/4 v3, 0x2

    div-int/2addr v2, v3

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_3

    mul-int/lit8 v5, v4, 0x2

    .line 8
    aget v6, v0, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    const/4 v8, 0x1

    add-int/2addr v5, v8

    .line 9
    aget v5, v0, v5

    const/16 v9, 0x40

    if-ne v6, v9, :cond_1

    .line 10
    iget-object v7, p0, Lf1/a$g;->a:Lf1/a;

    invoke-virtual {v7, v6, v5}, Lf1/q;->V(II)I

    goto :goto_1

    :cond_1
    if-eq v6, v7, :cond_2

    .line 11
    iget-object v5, p0, Lf1/a$g;->a:Lf1/a;

    invoke-virtual {v5, v6}, Lf1/a;->A(I)I

    move-result v5

    .line 12
    :cond_2
    :goto_1
    sget-object v7, Lf1/a;->G0:Ljava/lang/String;

    new-array v9, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v9, v8

    const-string v5, "[%02X - %02X]"

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

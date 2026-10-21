.class public Li1/n$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/n;


# direct methods
.method public constructor <init>(Li1/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/n$c;->a:Li1/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li1/n$c;->a:Li1/n;

    iget v0, v0, Li1/n;->n:I

    .line 3
    sget v2, Lu0/b;->o:I

    if-ne v2, v1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    invoke-static {v2}, Lcom/syu/jni/ToolsJni;->cmd_252_Normal_Io_Get(I)I

    move-result v2

    .line 4
    :goto_0
    sget v3, Lu0/b;->o:I

    if-ne v3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_252_Normal_Io_Get(I)I

    move-result v3

    :goto_1
    const/16 v4, 0xc

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez v2, :cond_4

    .line 5
    iget-object v2, p0, Li1/n$c;->a:Li1/n;

    iget v7, v2, Li1/n;->y:I

    add-int/2addr v7, v1

    iput v7, v2, Li1/n;->y:I

    if-lt v7, v5, :cond_3

    .line 6
    iget-boolean v8, v2, Li1/n;->A:Z

    if-nez v8, :cond_3

    .line 7
    iput-boolean v1, v2, Li1/n;->A:Z

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v6

    :goto_2
    if-lt v7, v5, :cond_7

    .line 8
    iput v4, v2, Li1/n;->y:I

    goto :goto_4

    .line 9
    :cond_4
    iget-object v2, p0, Li1/n$c;->a:Li1/n;

    iget v7, v2, Li1/n;->y:I

    if-lez v7, :cond_6

    sub-int/2addr v7, v1

    .line 10
    iput v7, v2, Li1/n;->y:I

    if-gtz v7, :cond_5

    .line 11
    iget-boolean v8, v2, Li1/n;->A:Z

    if-eqz v8, :cond_5

    .line 12
    iput-boolean v6, v2, Li1/n;->A:Z

    move v8, v1

    goto :goto_3

    :cond_5
    move v8, v6

    :goto_3
    if-gez v7, :cond_7

    .line 13
    iput v6, v2, Li1/n;->y:I

    goto :goto_4

    :cond_6
    move v8, v6

    :cond_7
    :goto_4
    if-nez v3, :cond_9

    .line 14
    iget-object v2, p0, Li1/n$c;->a:Li1/n;

    iget v3, v2, Li1/n;->z:I

    add-int/2addr v3, v1

    iput v3, v2, Li1/n;->z:I

    if-lt v3, v5, :cond_8

    .line 15
    iget-boolean v7, v2, Li1/n;->B:Z

    if-nez v7, :cond_8

    .line 16
    iput-boolean v1, v2, Li1/n;->B:Z

    move v8, v1

    :cond_8
    if-lt v3, v5, :cond_b

    .line 17
    iput v4, v2, Li1/n;->z:I

    goto :goto_5

    .line 18
    :cond_9
    iget-object v2, p0, Li1/n$c;->a:Li1/n;

    iget v3, v2, Li1/n;->z:I

    if-lez v3, :cond_b

    sub-int/2addr v3, v1

    .line 19
    iput v3, v2, Li1/n;->z:I

    if-gtz v3, :cond_a

    .line 20
    iget-boolean v7, v2, Li1/n;->B:Z

    if-eqz v7, :cond_a

    .line 21
    iput-boolean v6, v2, Li1/n;->B:Z

    move v8, v1

    :cond_a
    if-gez v3, :cond_b

    .line 22
    iput v6, v2, Li1/n;->z:I

    .line 23
    :cond_b
    :goto_5
    iget-object v2, p0, Li1/n$c;->a:Li1/n;

    iget v3, v2, Li1/n;->y:I

    const/4 v7, 0x2

    if-lt v3, v7, :cond_c

    iget v9, v2, Li1/n;->z:I

    if-lt v9, v7, :cond_c

    move v9, v1

    goto :goto_6

    :cond_c
    move v9, v6

    .line 24
    :goto_6
    iget-boolean v10, v2, Li1/n;->C:Z

    if-eq v9, v10, :cond_10

    if-nez v9, :cond_f

    if-eqz v10, :cond_f

    .line 25
    iget v2, v2, Li1/n;->z:I

    if-gtz v2, :cond_d

    if-lez v3, :cond_e

    :cond_d
    sub-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v4, :cond_e

    move v2, v1

    goto :goto_7

    :cond_e
    move v2, v6

    :goto_7
    move v9, v2

    .line 26
    :cond_f
    iget-object v2, p0, Li1/n$c;->a:Li1/n;

    iput-boolean v9, v2, Li1/n;->C:Z

    move v8, v1

    :cond_10
    if-eqz v8, :cond_1a

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Li1/n$c;->a:Li1/n;

    iget-wide v10, v4, Li1/n;->F:J

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x3e8

    cmp-long v2, v2, v10

    if-lez v2, :cond_11

    move v2, v1

    goto :goto_8

    :cond_11
    move v2, v6

    :goto_8
    if-eqz v9, :cond_12

    if-eqz v2, :cond_13

    if-eqz v9, :cond_13

    move v6, v1

    goto :goto_9

    :cond_12
    move v6, v9

    .line 28
    :cond_13
    :goto_9
    iget-boolean v2, v4, Li1/n;->A:Z

    if-eqz v2, :cond_14

    if-nez v9, :cond_14

    or-int/2addr v0, v1

    goto :goto_a

    :cond_14
    and-int/lit8 v0, v0, -0x2

    .line 29
    :goto_a
    iget-boolean v2, v4, Li1/n;->B:Z

    if-eqz v2, :cond_15

    if-nez v9, :cond_15

    or-int/2addr v0, v7

    goto :goto_b

    :cond_15
    and-int/lit8 v0, v0, -0x3

    :goto_b
    if-eqz v6, :cond_16

    or-int/2addr v0, v5

    goto :goto_c

    :cond_16
    and-int/lit8 v0, v0, -0x5

    .line 30
    :goto_c
    iget v2, v4, Li1/n;->n:I

    if-eq v2, v0, :cond_17

    .line 31
    iput v0, v4, Li1/n;->n:I

    .line 32
    :cond_17
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v2, 0x1000

    iget-object v3, p0, Li1/n$c;->a:Li1/n;

    iget-boolean v3, v3, Li1/n;->A:Z

    invoke-virtual {v0, v2, v3}, Lu0/i;->g4(IZ)V

    .line 33
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v2, 0x2000

    iget-object v3, p0, Li1/n$c;->a:Li1/n;

    iget-boolean v3, v3, Li1/n;->B:Z

    invoke-virtual {v0, v2, v3}, Lu0/i;->g4(IZ)V

    .line 34
    iget-object v0, p0, Li1/n$c;->a:Li1/n;

    iget-boolean v2, v0, Li1/n;->A:Z

    if-nez v2, :cond_18

    iget-boolean v2, v0, Li1/n;->B:Z

    if-eqz v2, :cond_1a

    .line 35
    :cond_18
    sget v2, Lu0/b;->f:I

    const-wide/16 v3, 0x258

    if-eq v2, v1, :cond_19

    .line 36
    iget-object v0, v0, Li1/n;->D:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 37
    new-instance v1, Li1/n$c$a;

    invoke-direct {v1, p0}, Li1/n$c$a;-><init>(Li1/n$c;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d

    .line 38
    :cond_19
    sget v1, Lu0/b;->j:I

    if-eqz v1, :cond_1a

    .line 39
    iget-object v0, v0, Li1/n;->D:Landroid/os/Handler;

    if-eqz v0, :cond_1a

    .line 40
    new-instance v1, Li1/n$c$b;

    invoke-direct {v1, p0}, Li1/n$c$b;-><init>(Li1/n$c;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    :cond_1a
    :goto_d
    iget-object v0, p0, Li1/n$c;->a:Li1/n;

    iget-object v1, v0, Li1/n;->D:Landroid/os/Handler;

    if-eqz v1, :cond_1b

    .line 42
    invoke-virtual {v0}, Li1/n;->w()V

    .line 43
    iget-object v0, p0, Li1/n$c;->a:Li1/n;

    iget-object v0, v0, Li1/n;->D:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    iget-object v0, p0, Li1/n$c;->a:Li1/n;

    iget-object v0, v0, Li1/n;->D:Landroid/os/Handler;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1b
    return-void
.end method

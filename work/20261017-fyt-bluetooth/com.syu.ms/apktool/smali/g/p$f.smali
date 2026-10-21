.class public Lg/p$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public d:I

.field public e:I

.field public f:Z

.field public final synthetic g:Lg/p;


# direct methods
.method public constructor <init>(Lg/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/p$f;->g:Lg/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xc

    .line 2
    iput p1, p0, Lg/p$f;->a:I

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lg/p$f;->b:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lg/p$f;->c:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lg/p$f;->d:I

    iput p1, p0, Lg/p$f;->e:I

    .line 6
    iput-boolean p1, p0, Lg/p$f;->f:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->a0:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->o:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    const/4 v3, 0x5

    .line 3
    invoke-static {v3}, Lcom/syu/jni/ToolsJni;->cmd_252_Normal_Io_Get(I)I

    move-result v3

    :goto_1
    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, 0x6

    .line 4
    invoke-static {v0}, Lcom/syu/jni/ToolsJni;->cmd_252_Normal_Io_Get(I)I

    move-result v0

    :goto_2
    const/16 v4, 0xc

    const/4 v5, 0x4

    if-nez v3, :cond_5

    .line 5
    iget v3, p0, Lg/p$f;->d:I

    add-int/2addr v3, v1

    iput v3, p0, Lg/p$f;->d:I

    if-lt v3, v5, :cond_4

    .line 6
    iget-object v6, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v7, v6, Lg/p;->C0:Z

    if-nez v7, :cond_4

    .line 7
    iput-boolean v1, v6, Lg/p;->C0:Z

    move v6, v1

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    if-lt v3, v5, :cond_8

    .line 8
    iput v4, p0, Lg/p$f;->d:I

    goto :goto_5

    .line 9
    :cond_5
    iget v3, p0, Lg/p$f;->d:I

    if-lez v3, :cond_7

    sub-int/2addr v3, v1

    .line 10
    iput v3, p0, Lg/p$f;->d:I

    if-gtz v3, :cond_6

    .line 11
    iget-object v6, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v7, v6, Lg/p;->C0:Z

    if-eqz v7, :cond_6

    .line 12
    iput-boolean v2, v6, Lg/p;->C0:Z

    move v6, v1

    goto :goto_4

    :cond_6
    move v6, v2

    :goto_4
    if-gez v3, :cond_8

    .line 13
    iput v2, p0, Lg/p$f;->d:I

    goto :goto_5

    :cond_7
    move v6, v2

    :cond_8
    :goto_5
    if-nez v0, :cond_a

    .line 14
    iget v0, p0, Lg/p$f;->e:I

    add-int/2addr v0, v1

    iput v0, p0, Lg/p$f;->e:I

    if-lt v0, v5, :cond_9

    .line 15
    iget-object v3, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v7, v3, Lg/p;->D0:Z

    if-nez v7, :cond_9

    .line 16
    iput-boolean v1, v3, Lg/p;->D0:Z

    move v6, v1

    :cond_9
    if-lt v0, v5, :cond_c

    .line 17
    iput v4, p0, Lg/p$f;->e:I

    goto :goto_6

    .line 18
    :cond_a
    iget v0, p0, Lg/p$f;->e:I

    if-lez v0, :cond_c

    sub-int/2addr v0, v1

    .line 19
    iput v0, p0, Lg/p$f;->e:I

    if-gtz v0, :cond_b

    .line 20
    iget-object v3, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v5, v3, Lg/p;->D0:Z

    if-eqz v5, :cond_b

    .line 21
    iput-boolean v2, v3, Lg/p;->D0:Z

    move v6, v1

    :cond_b
    if-gez v0, :cond_c

    .line 22
    iput v2, p0, Lg/p$f;->e:I

    .line 23
    :cond_c
    :goto_6
    iget v0, p0, Lg/p$f;->d:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_d

    iget v5, p0, Lg/p$f;->e:I

    if-lt v5, v3, :cond_d

    move v3, v1

    goto :goto_7

    :cond_d
    move v3, v2

    .line 24
    :goto_7
    iget-object v5, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v5, v5, Lg/p;->E0:Z

    if-eq v3, v5, :cond_11

    if-nez v3, :cond_10

    if-eqz v5, :cond_10

    .line 25
    iget v3, p0, Lg/p$f;->e:I

    if-gtz v3, :cond_e

    if-lez v0, :cond_f

    :cond_e
    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, v4, :cond_f

    move v0, v1

    goto :goto_8

    :cond_f
    move v0, v2

    :goto_8
    move v3, v0

    .line 26
    :cond_10
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iput-boolean v3, v0, Lg/p;->E0:Z

    move v6, v1

    :cond_11
    if-eqz v6, :cond_1f

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-wide v6, v0, Lg/p;->F0:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_12

    move v4, v1

    goto :goto_9

    :cond_12
    move v4, v2

    .line 28
    :goto_9
    iget-boolean v4, v0, Lg/p;->C0:Z

    if-nez v4, :cond_14

    iget-boolean v4, v0, Lg/p;->D0:Z

    if-nez v4, :cond_14

    iget-boolean v0, v0, Lg/p;->E0:Z

    if-eqz v0, :cond_13

    goto :goto_a

    .line 29
    :cond_13
    sput-boolean v2, Ll0/c0;->q:Z

    goto :goto_b

    .line 30
    :cond_14
    :goto_a
    sput-boolean v1, Ll0/c0;->p:Z

    .line 31
    sput-boolean v1, Ll0/c0;->q:Z

    .line 32
    sput v2, Ll0/c0;->t:I

    .line 33
    sput v2, Ll0/c0;->r:I

    .line 34
    sput v2, Ll0/c0;->v:I

    .line 35
    :goto_b
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v4, 0x1000

    iget-object v5, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v5, v5, Lg/p;->C0:Z

    sget v6, Ll0/c0;->t:I

    if-lez v6, :cond_15

    move v6, v1

    goto :goto_c

    :cond_15
    move v6, v2

    :goto_c
    or-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lu0/i;->g4(IZ)V

    .line 36
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v4, 0x2000

    iget-object v5, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v5, v5, Lg/p;->D0:Z

    sget v6, Ll0/c0;->r:I

    if-lez v6, :cond_16

    move v6, v1

    goto :goto_d

    :cond_16
    move v6, v2

    :goto_d
    or-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lu0/i;->g4(IZ)V

    const/16 v0, 0x8b

    new-array v4, v1, [I

    .line 37
    sget v5, Ll0/c0;->v:I

    if-lez v5, :cond_17

    move v5, v1

    goto :goto_e

    :cond_17
    move v5, v2

    :goto_e
    or-int/2addr v3, v5

    aput v3, v4, v2

    invoke-static {v0, v4}, Lu0/d;->I3(I[I)V

    .line 38
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-boolean v3, v0, Lg/p;->C0:Z

    if-nez v3, :cond_18

    iget-boolean v3, v0, Lg/p;->D0:Z

    if-eqz v3, :cond_19

    :cond_18
    move v2, v1

    .line 39
    :cond_19
    iget-boolean v3, p0, Lg/p$f;->f:Z

    if-eq v3, v2, :cond_1f

    const-string v4, "Device"

    if-eqz v2, :cond_1c

    if-nez v3, :cond_1c

    .line 40
    iget-object v5, v0, Lg/p;->G0:Ljava/lang/Integer;

    if-eqz v5, :cond_1a

    iget-object v5, v0, Lg/p;->H0:Ljava/lang/Integer;

    if-nez v5, :cond_1c

    .line 41
    :cond_1a
    sget v0, Lu0/b;->d:I

    if-eqz v0, :cond_1b

    sget v0, Lu0/b;->j:I

    if-ne v0, v1, :cond_1e

    :cond_1b
    const-string v0, "-------->> turnOnScreen"

    .line 42
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    sget v1, Lu0/b;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lg/p;->G0:Ljava/lang/Integer;

    .line 44
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    sget v1, Lu0/b;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lg/p;->H0:Ljava/lang/Integer;

    .line 45
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/p;->K0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/p;->K0:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :cond_1c
    if-nez v2, :cond_1e

    if-eqz v3, :cond_1e

    .line 47
    iget-object v1, v0, Lg/p;->G0:Ljava/lang/Integer;

    if-nez v1, :cond_1d

    iget-object v0, v0, Lg/p;->H0:Ljava/lang/Integer;

    if-eqz v0, :cond_1e

    :cond_1d
    const-string v0, "-------->> turnOffScreen"

    .line 48
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-object v1, v0, Lchip/Chip;->s:Landroid/os/Handler;

    iget-object v0, v0, Lg/p;->K0:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-object v0, v0, Lg/p;->L0:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 51
    :cond_1e
    :goto_f
    iput-boolean v2, p0, Lg/p$f;->f:Z

    .line 52
    :cond_1f
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    if-eqz v0, :cond_20

    .line 53
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 54
    iget-object v0, p0, Lg/p$f;->g:Lg/p;

    iget-object v0, v0, Lchip/Chip;->s:Landroid/os/Handler;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

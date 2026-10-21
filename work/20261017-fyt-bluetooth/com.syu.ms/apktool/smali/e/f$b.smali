.class public Le/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f;
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
    .locals 6

    .line 1
    const-class v0, Le/f;

    monitor-enter v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    .line 3
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x5

    .line 4
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x8

    .line 8
    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 9
    :goto_1
    invoke-static {v1}, Le/f;->a(Z)I

    move-result v1

    .line 10
    sget v4, Le/f;->k:I

    if-eq v4, v1, :cond_2

    .line 11
    sput v1, Le/f;->k:I

    :cond_2
    if-nez v1, :cond_3

    .line 12
    sget v1, Ly0/f;->P0:I

    if-eqz v1, :cond_4

    .line 13
    sput v2, Ly0/f;->P0:I

    .line 14
    sput v2, Ly0/f;->Q0:I

    .line 15
    sput v2, Ly0/f;->R0:I

    const/16 v1, 0x6f

    new-array v4, v3, [I

    .line 16
    sget v5, Ly0/f;->Q0:I

    aput v5, v4, v2

    invoke-static {v1, v4}, Lu0/d;->I3(I[I)V

    .line 17
    sget-object v1, Ly0/g;->v:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 18
    sget-object v1, Ly0/g;->t:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 19
    invoke-static {}, Ly0/h;->M()V

    goto :goto_2

    .line 20
    :cond_3
    sget v1, Ly0/f;->P0:I

    if-nez v1, :cond_4

    .line 21
    sput v3, Ly0/f;->P0:I

    .line 22
    sget-object v1, Ly0/g;->v:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 23
    invoke-static {}, Ly0/h;->M()V

    .line 24
    :cond_4
    :goto_2
    sget v1, Ly0/f;->Q0:I

    if-eqz v1, :cond_8

    .line 25
    sget v1, Le/f;->a:I

    if-lez v1, :cond_5

    sub-int/2addr v1, v3

    sput v1, Le/f;->a:I

    .line 26
    :cond_5
    sget v1, Le/f;->f:I

    if-lez v1, :cond_6

    sub-int/2addr v1, v3

    sput v1, Le/f;->f:I

    .line 27
    :cond_6
    sget v1, Le/f;->a:I

    if-gtz v1, :cond_8

    sget v1, Le/f;->f:I

    if-gtz v1, :cond_8

    .line 28
    sget-object v1, Lf/b;->d:Lf/b;

    iget-object v1, v1, Lf/b;->c:Lf/c;

    invoke-virtual {v1}, Lf/c;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    sput v1, Ly0/f;->Q0:I

    .line 29
    sget-object v1, Ly0/g;->t:Lo1/y;

    invoke-virtual {v1}, Lo1/y;->c()V

    .line 30
    invoke-static {}, Ly0/h;->M()V

    .line 31
    sget-boolean v1, Le/f;->i:Z

    if-eqz v1, :cond_8

    .line 32
    sput-boolean v2, Le/f;->i:Z

    .line 33
    :cond_8
    sget v1, Ly0/f;->R0:I

    if-eqz v1, :cond_c

    .line 34
    sget v1, Le/f;->b:I

    if-lez v1, :cond_9

    sub-int/2addr v1, v3

    sput v1, Le/f;->b:I

    .line 35
    :cond_9
    sget v1, Le/f;->g:I

    if-lez v1, :cond_a

    sub-int/2addr v1, v3

    sput v1, Le/f;->g:I

    .line 36
    :cond_a
    sget v1, Le/f;->b:I

    if-gtz v1, :cond_c

    sget v1, Le/f;->g:I

    if-gtz v1, :cond_c

    .line 37
    sget-object v1, Lf/b;->d:Lf/b;

    iget-object v1, v1, Lf/b;->c:Lf/c;

    invoke-virtual {v1}, Lf/c;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v3

    goto :goto_4

    :cond_b
    move v1, v2

    :goto_4
    sput v1, Ly0/f;->R0:I

    .line 38
    invoke-static {}, Ly0/h;->M()V

    .line 39
    :cond_c
    sget v1, Ly0/f;->T0:I

    if-eqz v1, :cond_10

    .line 40
    sget v1, Le/f;->d:I

    if-lez v1, :cond_d

    sub-int/2addr v1, v3

    .line 41
    sput v1, Le/f;->d:I

    .line 42
    :cond_d
    sget v1, Le/f;->e:I

    if-lez v1, :cond_e

    sub-int/2addr v1, v3

    .line 43
    sput v1, Le/f;->e:I

    .line 44
    :cond_e
    sget v1, Le/f;->d:I

    if-gtz v1, :cond_10

    sget v1, Le/f;->e:I

    if-gtz v1, :cond_10

    .line 45
    sget-object v1, Lf/b;->d:Lf/b;

    iget-object v1, v1, Lf/b;->c:Lf/c;

    invoke-virtual {v1}, Lf/c;->g()Z

    move-result v1

    if-eqz v1, :cond_f

    move v1, v3

    goto :goto_5

    :cond_f
    move v1, v2

    :goto_5
    sput v1, Ly0/f;->T0:I

    .line 46
    sget-object v1, Ly0/g;->k:Lo1/z;

    sget v4, Ly0/f;->T0:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Ly0/h;->M()V

    .line 48
    :cond_10
    sget v1, Le/f;->c:I

    if-lez v1, :cond_11

    sub-int/2addr v1, v3

    .line 49
    sput v1, Le/f;->c:I

    if-gtz v1, :cond_11

    .line 50
    sget v1, Lu0/b;->k4:I

    if-ne v1, v3, :cond_11

    .line 51
    sput v2, Lu0/b;->k4:I

    .line 52
    invoke-static {}, Ly0/h;->M()V

    .line 53
    :cond_11
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

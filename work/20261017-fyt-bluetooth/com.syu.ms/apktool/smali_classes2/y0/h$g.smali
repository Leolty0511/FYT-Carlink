.class public Ly0/h$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly0/h;
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
.method public declared-synchronized run()V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    sget v0, Ly0/f;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    sub-int/2addr v0, v1

    .line 2
    sput v0, Ly0/f;->p:I

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-static {}, Ly0/h;->e()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    sget v3, Ly0/f;->a:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_1

    .line 4
    invoke-static {v2}, Ly0/h;->d(I)I

    .line 5
    sget-object v3, La/c;->b:Lbase/a;

    invoke-interface {v3}, Lbase/a;->c()I

    move-result v5

    invoke-interface {v3, v5}, Lbase/a;->f(I)I

    .line 6
    :cond_1
    invoke-static {}, Ly0/h;->g()I

    move-result v3

    if-le v3, v4, :cond_5

    .line 7
    invoke-static {v2}, Ly0/h;->f(I)I

    const/4 v2, -0x1

    .line 8
    invoke-static {}, Lg/e;->a()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_2

    .line 9
    invoke-static {}, Lg/e;->a()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_4

    .line 10
    :cond_2
    invoke-static {}, Lo1/q0;->p()F

    move-result v3

    .line 11
    sget v4, Ly0/f;->H0:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 12
    sget v2, Ly0/f;->G0:I

    .line 13
    :cond_3
    sget v4, Ly0/f;->I0:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    sget v3, Ly0/f;->F0:I

    if-ltz v3, :cond_4

    move v2, v3

    .line 14
    :cond_4
    sget v3, Ly0/f;->F0:I

    if-eq v3, v2, :cond_5

    .line 15
    sput v2, Ly0/f;->F0:I

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    if-eqz v1, :cond_6

    .line 16
    invoke-static {}, Ly0/h;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

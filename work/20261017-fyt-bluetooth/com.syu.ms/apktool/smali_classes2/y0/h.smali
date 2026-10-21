.class public Ly0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lo1/c0;

.field public static final b:Lo1/c0;

.field public static final c:Ljava/lang/Runnable;

.field public static final d:Ljava/lang/Object;

.field public static e:I

.field public static final f:Ljava/lang/Runnable;

.field public static g:Lo1/k0;

.field public static h:Z

.field public static i:Landroid/widget/Toast;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/Runnable;

.field public static final l:Ljava/lang/Runnable;

.field public static m:I

.field public static n:I

.field public static final o:Ljava/lang/Runnable;

.field public static final p:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ly0/h;->z()V

    .line 2
    new-instance v0, Lo1/c0;

    new-instance v1, Ly0/h$a;

    invoke-direct {v1}, Ly0/h$a;-><init>()V

    invoke-direct {v0, v1}, Lo1/c0;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Ly0/h;->a:Lo1/c0;

    .line 3
    new-instance v0, Lo1/c0;

    new-instance v1, Ly0/h$b;

    invoke-direct {v1}, Ly0/h$b;-><init>()V

    invoke-direct {v0, v1}, Lo1/c0;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Ly0/h;->b:Lo1/c0;

    .line 4
    new-instance v0, Ly0/h$c;

    invoke-direct {v0}, Ly0/h$c;-><init>()V

    sput-object v0, Ly0/h;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly0/h;->d:Ljava/lang/Object;

    const/16 v0, 0x14

    .line 6
    sput v0, Ly0/h;->e:I

    .line 7
    new-instance v0, Ly0/h$d;

    invoke-direct {v0}, Ly0/h$d;-><init>()V

    sput-object v0, Ly0/h;->f:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lo1/k0;

    invoke-direct {v0}, Lo1/k0;-><init>()V

    sput-object v0, Ly0/h;->g:Lo1/k0;

    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Ly0/h;->h:Z

    .line 10
    new-instance v1, Ly0/h$e;

    invoke-direct {v1}, Ly0/h$e;-><init>()V

    sput-object v1, Ly0/h;->k:Ljava/lang/Runnable;

    .line 11
    new-instance v1, Ly0/h$f;

    invoke-direct {v1}, Ly0/h$f;-><init>()V

    sput-object v1, Ly0/h;->l:Ljava/lang/Runnable;

    .line 12
    invoke-static {v1}, Ly0/h;->h(Ljava/lang/Runnable;)V

    .line 13
    sput v0, Ly0/h;->m:I

    .line 14
    sput v0, Ly0/h;->n:I

    .line 15
    new-instance v0, Ly0/h$g;

    invoke-direct {v0}, Ly0/h$g;-><init>()V

    sput-object v0, Ly0/h;->o:Ljava/lang/Runnable;

    .line 16
    new-instance v1, Ly0/h$h;

    invoke-direct {v1}, Ly0/h$h;-><init>()V

    sput-object v1, Ly0/h;->p:Ljava/lang/Runnable;

    .line 17
    invoke-static {v0}, Ly0/h;->i(Ljava/lang/Runnable;)V

    .line 18
    invoke-static {v1}, Ly0/h;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static A(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->C:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Ly0/f;->B:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Ly0/f;->B:I

    const/4 v0, 0x6

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput p0, v3, v1

    .line 4
    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    .line 5
    sget v0, Ly0/f;->c1:I

    if-ne v0, v2, :cond_0

    const/16 v0, 0xa3

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static B(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->c1:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x6

    aput v3, v0, v2

    const/4 v2, 0x2

    aput v2, v0, v1

    aput p0, v0, v2

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    invoke-static {p0}, Ly0/h;->A(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static C(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->z:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->z:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 4
    sget v0, Ly0/f;->b1:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa2

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static D(I)V
    .locals 6

    .line 1
    sget v0, Ly0/f;->b1:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x3

    const/16 v4, 0xa

    const/4 v5, 0x4

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Ly0/f;->z:I

    if-nez p0, :cond_1

    .line 3
    invoke-static {v2}, Ly0/h;->D(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v3}, Ly0/h;->D(I)V

    goto :goto_0

    :cond_2
    new-array p0, v5, [I

    aput v4, p0, v3

    .line 5
    sget v4, Lu0/b;->y3:I

    or-int/lit8 v4, v4, 0x8

    sput v4, Lu0/b;->y3:I

    aput v4, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v5, [I

    aput v4, p0, v3

    .line 6
    sget v4, Lu0/b;->y3:I

    and-int/lit8 v4, v4, -0x9

    sput v4, Lu0/b;->y3:I

    aput v4, p0, v2

    aput v3, p0, v1

    aput v3, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v2, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p0, Ly0/f;->z:I

    if-nez p0, :cond_6

    .line 8
    invoke-static {v2}, Ly0/h;->D(I)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {v3}, Ly0/h;->D(I)V

    goto :goto_0

    .line 10
    :cond_7
    invoke-static {v2}, Ly0/h;->C(I)V

    goto :goto_0

    .line 11
    :cond_8
    invoke-static {v3}, Ly0/h;->C(I)V

    :cond_9
    :goto_0
    return-void
.end method

.method public static E(II)V
    .locals 5

    if-ltz p0, :cond_0

    const/16 v0, 0x30

    if-ge p0, v0, :cond_0

    .line 1
    sget v0, Ly0/f;->f0:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget-object v0, Ly0/f;->c0:[I

    aget v2, v0, p0

    if-eq v2, p1, :cond_0

    .line 3
    aput p1, v0, p0

    const/16 v0, 0x9

    const/4 v2, 0x2

    new-array v3, v2, [I

    aput p0, v3, v1

    const/4 v4, 0x1

    aput p1, v3, v4

    .line 4
    invoke-static {v0, v3}, Ly0/h;->s0(I[I)V

    new-array p1, v2, [I

    aput v4, p1, v1

    aput p0, p1, v4

    .line 5
    invoke-static {p1}, Ly0/h;->t([I)V

    :cond_0
    return-void
.end method

.method public static F(I)V
    .locals 3

    .line 1
    sget v0, Ly0/f;->a0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->a0:I

    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    .line 4
    invoke-static {}, Ly0/h;->J()V

    .line 5
    sget-object p0, Ly0/g;->i:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static G([I[I[II)V
    .locals 9

    add-int/lit8 v0, p3, 0x1

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    .line 2
    array-length v5, p0

    if-le v5, v2, :cond_0

    .line 3
    sget-object v5, Ly0/f;->c0:[I

    aget v6, v5, v2

    aget v7, p0, v2

    if-eq v6, v7, :cond_0

    .line 4
    aget v6, p0, v2

    aput v6, v5, v2

    const/16 v5, 0x9

    new-array v6, v3, [I

    aput v2, v6, v1

    .line 5
    aget v7, p0, v2

    aput v7, v6, v4

    invoke-static {v5, v6}, Ly0/h;->s0(I[I)V

    .line 6
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v2, v0, v5

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz p1, :cond_1

    .line 7
    array-length v6, p1

    if-le v6, v2, :cond_1

    .line 8
    sget-object v6, Ly0/f;->g0:[I

    aget v7, v6, v2

    aget v8, p1, v2

    if-eq v7, v8, :cond_1

    .line 9
    aget v5, p1, v2

    aput v5, v6, v2

    const/16 v5, 0x12

    new-array v6, v3, [I

    aput v2, v6, v1

    .line 10
    aget v7, p1, v2

    aput v7, v6, v4

    invoke-static {v5, v6}, Ly0/h;->s0(I[I)V

    .line 11
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v2, v0, v5

    move v5, v4

    :cond_1
    if-eqz p2, :cond_2

    .line 12
    array-length v6, p2

    if-le v6, v2, :cond_2

    .line 13
    sget-object v6, Ly0/f;->j0:[I

    aget v7, v6, v2

    aget v8, p2, v2

    if-eq v7, v8, :cond_2

    .line 14
    aget v5, p2, v2

    aput v5, v6, v2

    const/16 v5, 0x14

    new-array v3, v3, [I

    aput v2, v3, v1

    .line 15
    aget v6, p2, v2

    aput v6, v3, v4

    invoke-static {v5, v3}, Ly0/h;->s0(I[I)V

    .line 16
    aget v3, v0, v1

    add-int/2addr v3, v4

    aput v2, v0, v3

    move v5, v4

    :cond_2
    if-eqz v5, :cond_3

    .line 17
    aget v3, v0, v1

    add-int/2addr v3, v4

    aput v3, v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_4
    aget p0, v0, v1

    if-lez p0, :cond_5

    .line 19
    invoke-static {v0}, Ly0/h;->t([I)V

    :cond_5
    return-void
.end method

.method public static H([I[I[IILmodule/sound/AudioDevice;)V
    .locals 9

    add-int/lit8 v0, p3, 0x1

    .line 1
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p0, :cond_0

    .line 2
    array-length v5, p0

    if-le v5, v2, :cond_0

    .line 3
    sget-object v5, Ly0/f;->c0:[I

    aget v6, v5, v2

    aget v7, p0, v2

    if-eq v6, v7, :cond_0

    .line 4
    aget v6, p0, v2

    aput v6, v5, v2

    const/16 v5, 0x9

    new-array v6, v3, [I

    aput v2, v6, v1

    .line 5
    aget v7, p0, v2

    invoke-virtual {p4, v2}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v6, v4

    invoke-static {v5, v6}, Ly0/h;->s0(I[I)V

    .line 6
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v2, v0, v5

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    if-eqz p1, :cond_1

    .line 7
    array-length v6, p1

    if-le v6, v2, :cond_1

    .line 8
    sget-object v6, Ly0/f;->g0:[I

    aget v7, v6, v2

    aget v8, p1, v2

    if-eq v7, v8, :cond_1

    .line 9
    aget v5, p1, v2

    aput v5, v6, v2

    const/16 v5, 0x12

    new-array v6, v3, [I

    aput v2, v6, v1

    .line 10
    aget v7, p1, v2

    aput v7, v6, v4

    invoke-static {v5, v6}, Ly0/h;->s0(I[I)V

    .line 11
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v2, v0, v5

    move v5, v4

    :cond_1
    if-eqz p2, :cond_2

    .line 12
    array-length v6, p2

    if-le v6, v2, :cond_2

    .line 13
    sget-object v6, Ly0/f;->j0:[I

    aget v7, v6, v2

    aget v8, p2, v2

    if-eq v7, v8, :cond_2

    .line 14
    aget v5, p2, v2

    aput v5, v6, v2

    const/16 v5, 0x14

    new-array v3, v3, [I

    aput v2, v3, v1

    .line 15
    aget v6, p2, v2

    invoke-virtual {p4, v2}, Lmodule/sound/AudioDevice;->y0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v3, v4

    invoke-static {v5, v3}, Ly0/h;->s0(I[I)V

    .line 16
    aget v3, v0, v1

    add-int/2addr v3, v4

    aput v2, v0, v3

    move v5, v4

    :cond_2
    if-eqz v5, :cond_3

    .line 17
    aget v3, v0, v1

    add-int/2addr v3, v4

    aput v3, v0, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 18
    :cond_4
    aget p0, v0, v1

    if-lez p0, :cond_5

    .line 19
    invoke-static {v0}, Ly0/h;->t([I)V

    :cond_5
    return-void
.end method

.method public static I(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :goto_0
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_4

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Lmodule/sound/AudioDevice;

    invoke-virtual {v0, p0}, Lmodule/sound/AudioDevice;->P(I)V

    :cond_4
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x81
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
        0x83
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xa
        0x82
    .end array-data

    :array_3
    .array-data 4
        0x1
        0xa
        0x80
    .end array-data
.end method

.method public static J()V
    .locals 3

    .line 1
    sget-object v0, Ly0/h;->a:Lo1/c0;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lo1/c0;->a(J)V

    return-void
.end method

.method public static K()V
    .locals 6

    .line 1
    sget-object v0, Ly0/h;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget v1, Lh0/c;->G:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_4

    .line 3
    sget v4, Ly0/f;->K0:I

    and-int/lit8 v4, v4, 0x3f

    if-nez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    .line 4
    :goto_2
    sget v4, Lo1/q0;->m:I

    if-ne v4, v3, :cond_3

    if-eqz v1, :cond_3

    .line 5
    invoke-static {v2}, Lo1/q0;->y(I)V

    goto :goto_5

    :cond_3
    if-nez v1, :cond_a

    .line 6
    invoke-static {v3}, Lo1/q0;->y(I)V

    goto :goto_5

    .line 7
    :cond_4
    sget v1, Ly0/f;->K0:I

    and-int/lit16 v1, v1, 0x4f1f

    const v4, 0xffff

    and-int/2addr v1, v4

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_3

    :cond_5
    move v1, v2

    .line 8
    :goto_3
    sget-boolean v5, Lu0/b;->V3:Z

    if-eqz v5, :cond_6

    .line 9
    invoke-static {}, Ly0/h;->Q()I

    move-result v1

    invoke-static {v1}, Lo1/q0;->y(I)V

    goto :goto_5

    .line 10
    :cond_6
    sget-boolean v5, Lu0/b;->W3:Z

    if-eqz v5, :cond_7

    sget v5, Ly0/f;->K0:I

    and-int/lit8 v5, v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    move v4, v2

    :goto_4
    if-nez v4, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    move v2, v3

    .line 11
    :cond_9
    invoke-static {v2}, Lo1/q0;->y(I)V

    .line 12
    :cond_a
    :goto_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static L()V
    .locals 3

    .line 1
    sget-object v0, Ly0/h;->b:Lo1/c0;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lo1/c0;->a(J)V

    return-void
.end method

.method public static M()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    sget-object v1, Ly0/h;->f:Ljava/lang/Runnable;

    sget v2, Ly0/h;->e:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final N(I)V
    .locals 4

    .line 1
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    sget-object v1, Ly0/h;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x400

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, v2}, Ly0/h;->Y(IZ)V

    .line 3
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static O()V
    .locals 1

    .line 1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0}, Lui/b;->hide()V

    :cond_0
    return-void
.end method

.method public static P()V
    .locals 2

    .line 1
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-eqz v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ly0/e;->k()V

    .line 3
    sget-object v0, Ly0/g;->u:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    return-void
.end method

.method public static Q()I
    .locals 2

    .line 1
    sget v0, Ly0/f;->K0:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static R(I)V
    .locals 3

    .line 1
    sget v0, Ly0/f;->n:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->n:I

    const/16 v0, 0x19

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    :cond_0
    return-void
.end method

.method public static S(I)V
    .locals 4

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loud\u72b6\u6001 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    sget v0, Ly0/f;->E:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Ly0/f;->E:I

    const/16 v0, 0xb

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 4
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 5
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->l(I)V

    .line 6
    sget v0, Ly0/f;->g1:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa6

    .line 7
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static T(I)V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loudCmd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 2
    sget v0, Ly0/f;->g1:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x3

    if-eqz p0, :cond_2

    if-eq p0, v2, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-array p0, v0, [I

    .line 3
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    .line 4
    :cond_1
    sget p0, Ly0/f;->E:I

    if-nez p0, :cond_8

    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    .line 6
    :cond_2
    sget p0, Ly0/f;->E:I

    if-eqz p0, :cond_8

    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_2

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_3
    if-ne v0, v2, :cond_8

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_6

    if-eq p0, v1, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    sget p0, Ly0/f;->E:I

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v2, v0

    :goto_0
    invoke-static {v2}, Ly0/h;->T(I)V

    goto :goto_1

    .line 9
    :cond_6
    invoke-static {v2}, Ly0/h;->S(I)V

    goto :goto_1

    .line 10
    :cond_7
    invoke-static {v0}, Ly0/h;->S(I)V

    :cond_8
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xa
        0x40
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xa
        0x40
    .end array-data
.end method

.method public static U(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Ly0/f;->w:Z

    if-eq p0, v0, :cond_0

    .line 2
    sput-boolean p0, Ly0/f;->w:Z

    .line 3
    invoke-static {}, Ly0/h;->M()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized V(I)V
    .locals 7

    const-class v0, Ly0/h;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sound moduleId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ln1/b;->s(Ljava/lang/String;)V

    const-string v1, "sound"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sound moduleId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "audio"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " moduleId  Audio Module Id  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    sget v1, Ly0/f;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p0, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    :try_start_1
    sget-object v1, Ly0/f;->b:Ly0/e;

    invoke-virtual {v1}, Ly0/e;->f()V

    .line 6
    sput p0, Ly0/f;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    .line 7
    :pswitch_0
    new-instance v1, Ly0/e;

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "sys.lsec.ext_dsp"

    .line 8
    invoke-static {v1, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 9
    new-instance v1, Lmodule/sound/C7738NOR_QC;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7738NOR_QC;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 10
    :cond_1
    new-instance v1, Lmodule/sound/C7738NOR_QUALCOMM;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7738NOR_QUALCOMM;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 11
    :pswitch_2
    new-instance v1, Lmodule/sound/DU561NEW2;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/DU561NEW2;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 12
    :pswitch_3
    new-instance v1, Lmodule/sound/DU561NEW;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/DU561NEW;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    :pswitch_4
    const-string v1, "sys.lsec.dspfs"

    .line 13
    invoke-static {v1, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    const-string v1, "sys.lsec.ext_dsp"

    .line 14
    invoke-static {v1, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 15
    new-instance v1, Lmodule/sound/C7739_QC;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7739_QC;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 16
    :cond_2
    new-instance v1, Lmodule/sound/C7739;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7739;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 17
    :cond_3
    new-instance v1, Lmodule/sound/C7739_48;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7739_48;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    :pswitch_5
    const-string v1, "sys.lsec.tdm"

    .line 18
    invoke-static {v1, v3}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_4

    .line 19
    new-instance v1, Lmodule/sound/C7738NOR7870TDM;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7738NOR7870TDM;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 20
    :cond_4
    new-instance v1, Lmodule/sound/C7738NOR7870;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7738NOR7870;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 21
    :pswitch_6
    new-instance v1, Lmodule/sound/C7738FC;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7738FC;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 22
    :pswitch_7
    new-instance v1, Lmodule/sound/C7738;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7738;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 23
    :pswitch_8
    new-instance v1, Lmodule/sound/DU561;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/DU561;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "sys.lsec.navileft"

    .line 24
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 25
    new-instance v1, Lmodule/sound/C7604_NAVI_DIR;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7604_NAVI_DIR;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto/16 :goto_1

    .line 26
    :cond_5
    new-instance v1, Lmodule/sound/C7604;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7604;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 27
    :pswitch_a
    new-instance v4, Lmodule/sound/C32107S;

    const/16 v5, 0x1b

    sget-object v6, Lz/a;->v:Lo1/n;

    invoke-direct {v4, v5, v1, v6}, Lmodule/sound/C32107S;-><init>(IILo1/n;)V

    sput-object v4, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 28
    :pswitch_b
    new-instance v1, Lmodule/sound/C7729;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C7729;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 29
    :pswitch_c
    new-instance v1, Lmodule/sound/C2313;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C2313;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 30
    :pswitch_d
    new-instance v4, Lmodule/sound/a;

    const/16 v5, 0xd

    sget-object v6, Lz/a;->v:Lo1/n;

    invoke-direct {v4, v5, v1, v6}, Lmodule/sound/a;-><init>(IILo1/n;)V

    sput-object v4, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 31
    :pswitch_e
    new-instance v4, Lmodule/sound/C32107;

    const/16 v5, 0x10

    sget-object v6, Lz/a;->v:Lo1/n;

    invoke-direct {v4, v5, v1, v6}, Lmodule/sound/C32107;-><init>(IILo1/n;)V

    sput-object v4, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 32
    :pswitch_f
    new-instance v1, Ly0/c;

    invoke-direct {v1}, Ly0/c;-><init>()V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 33
    :pswitch_10
    new-instance v1, Ly0/k;

    invoke-direct {v1}, Ly0/k;-><init>()V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 34
    :pswitch_11
    new-instance v1, Lmodule/sound/C8288;

    sget-object v4, Lz/a;->c:Lo1/e0;

    invoke-direct {v1, v4}, Lmodule/sound/C8288;-><init>(Lo1/e0;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 35
    :pswitch_12
    new-instance v1, Lmodule/sound/C3702;

    sget-object v4, Lz/a;->v:Lo1/n;

    invoke-direct {v1, v4}, Lmodule/sound/C3702;-><init>(Lo1/n;)V

    sput-object v1, Ly0/f;->b:Ly0/e;

    goto :goto_1

    .line 36
    :goto_0
    invoke-direct {v1}, Ly0/e;-><init>()V

    sput-object v1, Ly0/f;->b:Ly0/e;

    .line 37
    :goto_1
    sget-object v1, Ly0/f;->b:Ly0/e;

    invoke-virtual {v1}, Ly0/e;->e()V

    new-array v1, v2, [I

    aput p0, v1, v3

    .line 38
    invoke-static {v2, v1}, Ly0/h;->s0(I[I)V

    .line 39
    sget-object p0, Ly0/g;->a:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    .line 40
    invoke-static {}, Ly0/h;->s()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final declared-synchronized W(I)V
    .locals 3

    const-class v0, Ly0/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Ly0/f;->K0:I

    and-int/lit16 v2, v1, 0xff

    or-int/2addr v1, p0

    .line 2
    sput v1, Ly0/f;->K0:I

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p0, v1

    .line 3
    invoke-static {}, Ly0/h;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final X(IZ)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ==============>>> muteAmp flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0xffff

    and-int v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " old DataSound.sMuteDst: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Ly0/f;->K0:I

    and-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "soundMute"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Ly0/h;->W(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ly0/h;->r0(I)V

    .line 4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  ==============>>> muteAmp DataSound.sMuteDst: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Ly0/f;->K0:I

    and-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static final Y(IZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ly0/h;->X(IZ)V

    .line 2
    invoke-static {}, Ly0/h;->M()V

    return-void
.end method

.method public static Z(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->i:I

    if-eq v0, p0, :cond_2

    .line 2
    sput p0, Ly0/f;->i:I

    const/4 v0, 0x3

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    const/16 p0, 0x80

    .line 4
    sget v0, Ly0/f;->i:I

    if-ne v0, v1, :cond_0

    move v3, v1

    :cond_0
    invoke-static {p0, v3}, Ly0/h;->Y(IZ)V

    .line 5
    sget p0, Lh0/c;->G:I

    if-eq p0, v1, :cond_1

    .line 6
    invoke-static {}, Ly0/h;->e0()V

    .line 7
    :cond_1
    sget-object p0, Ly0/g;->e:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_2
    return-void
.end method

.method public static synthetic a()Landroid/widget/Toast;
    .locals 1

    .line 1
    sget-object v0, Ly0/h;->i:Landroid/widget/Toast;

    return-object v0
.end method

.method public static a0(I)V
    .locals 5

    .line 1
    sget v0, Ly0/f;->J:I

    if-eq v0, p0, :cond_3

    .line 2
    sput p0, Ly0/f;->J:I

    const/16 v0, 0xe

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 4
    sget-object v0, Ly0/g;->h:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 5
    invoke-static {}, Ly0/h;->M()V

    .line 6
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    sget v0, Ly0/f;->J:I

    if-eqz v0, :cond_0

    sget v0, Ly0/f;->L:I

    int-to-float v0, v0

    const/high16 v2, 0x41a00000    # 20.0f

    div-float/2addr v0, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 9
    :cond_0
    sget-object v0, Lbase/Configure$Property;->C:Lbase/Configure$Property;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    .line 10
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lsecVol="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object v0, Lbase/Configure$Property;->C:Lbase/Configure$Property;

    const-string v2, "-1"

    invoke-virtual {v0, v2}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    .line 12
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object v0

    const-string v2, "lsecVol=-1"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 13
    :cond_2
    :goto_0
    sget v0, Ly0/f;->e1:I

    if-ne v0, v1, :cond_3

    const/16 v0, 0xa4

    .line 14
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_3
    return-void
.end method

.method public static synthetic b(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 1
    sput-object p0, Ly0/h;->i:Landroid/widget/Toast;

    return-object p0
.end method

.method public static b0(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->e1:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Ly0/f;->J:I

    if-nez p0, :cond_1

    .line 3
    invoke-static {v3}, Ly0/h;->b0(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2}, Ly0/h;->b0(I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p0, Ly0/f;->J:I

    if-nez p0, :cond_6

    .line 8
    invoke-static {v3}, Ly0/h;->b0(I)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {v2}, Ly0/h;->b0(I)V

    goto :goto_0

    .line 10
    :cond_7
    invoke-static {v3}, Ly0/h;->a0(I)V

    goto :goto_0

    .line 11
    :cond_8
    invoke-static {v2}, Ly0/h;->a0(I)V

    :cond_9
    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x0
        0x91
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x90
    .end array-data
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ly0/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static c0(I)V
    .locals 3

    .line 1
    sget v0, Ly0/f;->P:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Ly0/f;->O:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Ly0/f;->O:I

    const/16 v0, 0x10

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 5
    invoke-static {}, Ly0/h;->M()V

    const/16 v0, 0x86

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static synthetic d(I)I
    .locals 0

    .line 1
    sput p0, Ly0/h;->m:I

    return p0
.end method

.method public static d0(I)V
    .locals 3

    .line 1
    sget v0, Ly0/f;->M:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Ly0/f;->L:I

    if-eq v0, p0, :cond_2

    .line 3
    sput p0, Ly0/f;->L:I

    const/16 v0, 0xf

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 5
    sget-object v0, Ly0/g;->b:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 6
    invoke-static {}, Ly0/h;->M()V

    const/16 v0, 0x87

    .line 7
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 8
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    sget v0, Ly0/f;->J:I

    if-eqz v0, :cond_0

    int-to-float p0, p0

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p0, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p0, v0

    float-to-int v1, p0

    .line 11
    :cond_0
    sget-object p0, Lbase/Configure$Property;->C:Lbase/Configure$Property;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    .line 12
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lsecVol="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object p0, Lbase/Configure$Property;->C:Lbase/Configure$Property;

    const-string v0, "-1"

    invoke-virtual {p0, v0}, Lbase/Configure$Property;->g(Ljava/lang/String;)V

    .line 14
    invoke-static {}, La/f;->f()Landroid/media/AudioManager;

    move-result-object p0

    const-string v0, "lsecVol=-1"

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic e()I
    .locals 1

    .line 1
    sget v0, Ly0/h;->m:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ly0/h;->m:I

    return v0
.end method

.method public static e0()V
    .locals 1

    .line 1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0}, Lui/b;->c()V

    :cond_0
    return-void
.end method

.method public static synthetic f(I)I
    .locals 0

    .line 1
    sput p0, Ly0/h;->n:I

    return p0
.end method

.method public static f0(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "car.radio"

    return-object p0

    :pswitch_1
    const-string p0, "car.usb"

    return-object p0

    :pswitch_2
    const-string p0, "car.btphone"

    return-object p0

    :pswitch_3
    const-string p0, "tv"

    return-object p0

    :pswitch_4
    const-string p0, "navi"

    return-object p0

    :pswitch_5
    const-string p0, "player"

    return-object p0

    :pswitch_6
    const-string p0, "aux"

    return-object p0

    :pswitch_7
    const-string p0, "ipod"

    return-object p0

    :pswitch_8
    const-string p0, "btav"

    return-object p0

    :pswitch_9
    const-string p0, "btphone"

    return-object p0

    :pswitch_a
    const-string p0, "dvd"

    return-object p0

    :pswitch_b
    const-string p0, "radio"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic g()I
    .locals 1

    .line 1
    sget v0, Ly0/h;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Ly0/h;->n:I

    return v0
.end method

.method public static g0(II)V
    .locals 4

    if-ltz p0, :cond_1

    const/16 v0, 0x30

    if-ge p0, v0, :cond_1

    const/16 v1, 0x14

    const/4 v2, 0x0

    .line 1
    invoke-static {p1, v2, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 2
    sget-object v1, Ly0/f;->w0:[I

    aget v3, v1, p0

    if-eq v3, p1, :cond_0

    .line 3
    aput p1, v1, p0

    const/16 v1, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p0, v3, v2

    const/4 v2, 0x1

    aput p1, v3, v2

    .line 4
    invoke-static {v1, v3}, Ly0/h;->s0(I[I)V

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x52

    .line 5
    invoke-static {v0, p1}, Lm1/c;->g(II)V

    .line 6
    :cond_0
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0, p1}, Ly0/e;->m(II)V

    .line 7
    invoke-static {}, Ly0/h;->M()V

    :cond_1
    return-void
.end method

.method public static h(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->g:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static h0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Ly0/h;->j:Ljava/lang/String;

    .line 2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p0

    sget-object v0, Ly0/h;->k:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static i(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lo1/j0;->j:Lo1/j0;

    invoke-virtual {v0, p0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static i0()V
    .locals 1

    .line 1
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, La/f;->v()Lui/b;

    move-result-object v0

    invoke-interface {v0}, Lui/b;->show()V

    :cond_0
    return-void
.end method

.method public static j(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->H:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->H:I

    .line 3
    sget-object v0, Ly0/g;->j:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    const/16 v0, 0xd

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 4
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 5
    sget v0, Ly0/f;->h1:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa7

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static j0([I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p0}, Ly0/h;->s0(I[I)V

    .line 2
    sget-object v1, Ly0/h;->g:Lo1/k0;

    sget v2, Ly0/f;->o:I

    invoke-virtual {v1, v2}, Lo1/k0;->c(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    sput-boolean v2, Ly0/h;->h:Z

    .line 4
    :cond_0
    sget-boolean v1, Lu0/b;->k2:Z

    if-eqz v1, :cond_1

    sget-boolean v1, Ly0/h;->h:Z

    if-eqz v1, :cond_1

    const/16 v1, 0xa

    new-array v1, v1, [I

    const/16 v3, 0x77

    aput v3, v1, v0

    const/16 v3, 0x9

    .line 5
    invoke-static {p0, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    sput-boolean v0, Ly0/h;->h:Z

    :cond_1
    return-void
.end method

.method public static k(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget v1, Ly0/f;->H:I

    if-nez v1, :cond_1

    .line 2
    invoke-static {v3}, Ly0/h;->k(I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {v0}, Ly0/h;->k(I)V

    goto :goto_0

    :cond_2
    new-array v1, v1, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v1, v1, [I

    .line 5
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 6
    :goto_0
    sget v1, Ly0/f;->h1:I

    if-ne v1, v3, :cond_6

    .line 7
    sget v1, Ly0/f;->H:I

    if-ne p0, v2, :cond_5

    if-ne v1, v3, :cond_4

    move p0, v0

    goto :goto_1

    :cond_4
    move p0, v3

    :cond_5
    :goto_1
    if-eq p0, v1, :cond_6

    .line 8
    invoke-static {p0}, Ly0/h;->j(I)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x57
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x56
    .end array-data
.end method

.method public static k0(I)V
    .locals 3

    .line 1
    sget v0, Ly0/f;->U:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->U:I

    const/16 v0, 0x18

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    .line 3
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    const/16 v0, 0x99

    .line 4
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static l(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->x:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Ly0/f;->x:I

    const/4 v0, 0x7

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 3
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 4
    sget v0, Ly0/f;->d1:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa1

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 6
    :cond_0
    invoke-static {}, Ly0/h;->M()V

    .line 7
    sget-object p0, Ly0/g;->f:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_1
    return-void
.end method

.method public static l0(I)V
    .locals 1

    .line 1
    sget v0, Ly0/f;->p0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->p0:I

    .line 3
    invoke-static {}, Ly0/h;->L()V

    :cond_0
    return-void
.end method

.method public static m(I)V
    .locals 4

    .line 1
    sget v0, Ly0/f;->d1:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    const/4 v0, 0x3

    if-eqz p0, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget p0, Ly0/f;->x:I

    if-nez p0, :cond_1

    .line 3
    invoke-static {v3}, Ly0/h;->m(I)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {v2}, Ly0/h;->m(I)V

    goto :goto_0

    :cond_2
    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p0, v0, [I

    .line 6
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_9

    if-eqz p0, :cond_8

    if-eq p0, v3, :cond_7

    if-eq p0, v1, :cond_5

    goto :goto_0

    .line 7
    :cond_5
    sget p0, Ly0/f;->x:I

    if-nez p0, :cond_6

    move v2, v3

    :cond_6
    invoke-static {v2}, Ly0/h;->m(I)V

    goto :goto_0

    .line 8
    :cond_7
    invoke-static {v3}, Ly0/h;->l(I)V

    goto :goto_0

    .line 9
    :cond_8
    invoke-static {v2}, Ly0/h;->l(I)V

    :cond_9
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x92
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x93
    .end array-data
.end method

.method public static m0()V
    .locals 6

    .line 1
    sget v0, Ly0/f;->p0:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x24

    if-ge v0, v1, :cond_3

    .line 2
    sget-object v2, Ly0/f;->r0:[I

    aget v3, v2, v0

    sget-object v4, Ly0/f;->q0:[I

    aget v5, v4, v0

    if-eq v3, v5, :cond_1

    .line 3
    aget v3, v4, v0

    aput v3, v2, v0

    if-ge v0, v1, :cond_1

    add-int/lit16 v3, v0, 0x10a

    .line 4
    aget v2, v2, v0

    invoke-static {v3, v2}, Lm1/c;->g(II)V

    .line 5
    :cond_1
    sget-object v2, Ly0/f;->u0:[I

    aget v3, v2, v0

    sget-object v4, Ly0/f;->t0:[I

    aget v5, v4, v0

    if-eq v3, v5, :cond_2

    .line 6
    aget v3, v4, v0

    aput v3, v2, v0

    if-ge v0, v1, :cond_2

    add-int/lit16 v1, v0, 0x12e

    .line 7
    aget v2, v2, v0

    invoke-static {v1, v2}, Lm1/c;->g(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static n(I)V
    .locals 3

    .line 1
    sget v0, Ly0/f;->S:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Ly0/f;->R:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Ly0/f;->R:I

    const/16 v0, 0x17

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 4
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 5
    invoke-static {}, Ly0/h;->M()V

    const/16 v0, 0x92

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 7
    sget-object p0, Ly0/g;->g:Lo1/y;

    invoke-virtual {p0}, Lo1/y;->c()V

    :cond_0
    return-void
.end method

.method public static n0(I)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa

    .line 1
    invoke-static {p0, v0, v1}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v1, Ly0/f;->V0:I

    if-eq v1, p0, :cond_1

    .line 3
    sput p0, Ly0/f;->V0:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v0

    .line 4
    invoke-static {v1, v2}, Ly0/h;->s0(I[I)V

    const/16 v0, 0xaa

    .line 5
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    .line 6
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lmodule/sound/AudioDevice;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Ly0/e;->o(I)V

    goto :goto_0

    .line 8
    :cond_0
    sget-boolean v0, Ly0/f;->Y0:Z

    if-eqz v0, :cond_1

    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, p0}, Ly0/e;->o(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static o(II)V
    .locals 5

    .line 1
    sget v0, Ly0/f;->k:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    sget v0, Ly0/f;->m:I

    invoke-static {p1, v1, v0}, Lo1/o0;->a(III)I

    move-result p1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    sget v2, Ly0/f;->j:I

    const/4 v3, 0x1

    if-eq v2, p0, :cond_0

    .line 4
    sput p0, Ly0/f;->j:I

    .line 5
    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    aput v1, v0, v2

    .line 6
    :cond_0
    sget v2, Ly0/f;->l:I

    if-eq v2, p1, :cond_1

    .line 7
    sput p1, Ly0/f;->l:I

    .line 8
    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    aput v3, v0, v2

    .line 9
    :cond_1
    aget v2, v0, v1

    if-lez v2, :cond_2

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " =====>>   bal : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fade : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   DataSound.sBalDst: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Ly0/f;->L0:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  DataSound.sFadeDst : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Ly0/f;->M0:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "c32107"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x8

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput p0, v4, v1

    aput p1, v4, v3

    .line 11
    invoke-static {v2, v4}, Ly0/h;->s0(I[I)V

    .line 12
    invoke-static {v0}, Ly0/h;->u([I)V

    :cond_2
    return-void
.end method

.method public static o0(I)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 1
    :goto_0
    sput-boolean p0, Ly0/f;->Y0:Z

    .line 2
    sget-object p0, Ly0/f;->b:Ly0/e;

    if-eqz p0, :cond_1

    instance-of v0, p0, Lmodule/sound/AudioDevice;

    if-eqz v0, :cond_1

    .line 3
    check-cast p0, Lmodule/sound/AudioDevice;

    sget-boolean v0, Ly0/f;->Y0:Z

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->f1(Z)V

    :cond_1
    return-void
.end method

.method public static p(II)V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe8

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p0, v0, v1

    const/4 v3, 0x2

    aput p1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    sget-object v0, Ly0/g;->q:Lo1/z;

    invoke-virtual {v0}, Lo1/z;->b()I

    move-result v4

    if-lez v4, :cond_0

    new-array v3, v3, [I

    aput p0, v3, v2

    aput p1, v3, v1

    .line 3
    invoke-virtual {v0, v3}, Lo1/z;->c(Ljava/lang/Object;)V

    .line 4
    :cond_0
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_1

    instance-of v0, v0, Lmodule/sound/AudioDevice;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {p0, p1}, Ly0/h;->o(II)V

    :cond_1
    return-void
.end method

.method public static p0(I)V
    .locals 1

    .line 1
    sget v0, Ly0/f;->R0:I

    if-eq v0, p0, :cond_0

    .line 2
    sput p0, Ly0/f;->R0:I

    .line 3
    invoke-static {}, Ly0/h;->M()V

    :cond_0
    return-void
.end method

.method public static q(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================>>MCU to value :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Beep"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget v0, Ly0/f;->r:I

    if-eq v0, p0, :cond_0

    .line 3
    sput p0, Ly0/f;->r:I

    const/4 v0, 0x4

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p0, v2, v3

    .line 4
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 5
    sget v0, Ly0/f;->f1:I

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa5

    .line 6
    invoke-static {v0, p0}, Lm1/c;->g(II)V

    :cond_0
    return-void
.end method

.method public static q0(I)V
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    const v0, 0x7f040006

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly0/h;->h0(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p0

    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly0/h;->h0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static r(I)V
    .locals 4

    const/4 v0, 0x3

    const-string v1, "Beep"

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget p0, Ly0/f;->r:I

    if-nez p0, :cond_1

    .line 2
    invoke-static {v2}, Ly0/h;->r(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 3
    invoke-static {p0}, Ly0/h;->r(I)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================>>54 to MCU value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [I

    .line 5
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    .line 6
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=================>>53 to MCU value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array p0, v0, [I

    .line 7
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x54
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x53
    .end array-data
.end method

.method public static final declared-synchronized r0(I)V
    .locals 6

    const-class v0, Ly0/h;

    monitor-enter v0

    .line 1
    :try_start_0
    sget v1, Ly0/f;->K0:I

    const v2, 0xffff

    and-int v3, v1, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    not-int p0, p0

    and-int/2addr p0, v2

    and-int/2addr p0, v1

    .line 2
    sput p0, Ly0/f;->K0:I

    and-int/2addr p0, v2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    if-eq v3, v4, :cond_2

    .line 3
    invoke-static {}, Ly0/h;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static s()V
    .locals 1

    .line 1
    invoke-static {}, Ly0/h;->J()V

    .line 2
    invoke-static {}, Ly0/h;->L()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Ly0/h;->u([I)V

    .line 4
    invoke-static {}, Ly0/h;->v()V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x0
        0x1
    .end array-data
.end method

.method public static varargs s0(I[I)V
    .locals 2

    .line 1
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    invoke-virtual {v0}, Lbase/b;->L2()Lo1/x;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p0, p1, v1, v1}, Lo1/x;->s(I[I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static t([I)V
    .locals 7

    .line 1
    sget v0, Ly0/f;->Z:I

    if-nez v0, :cond_3

    .line 2
    sget v0, Lk0/nt;->o:I

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lk0/nt;->z:Lo1/o;

    if-eqz v1, :cond_0

    .line 4
    sget v2, Lk0/nt;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->L2([I)V

    .line 6
    :cond_1
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->P2([I)V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->b([I)V

    .line 8
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->g([I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 9
    sget v0, Lk0/nt;->o:I

    if-eqz v0, :cond_6

    .line 10
    sget-object v1, Lk0/nt;->z:Lo1/o;

    if-eqz v1, :cond_4

    .line 11
    sget v2, Lk0/nt;->a:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    :cond_4
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->L2([I)V

    .line 13
    :cond_5
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->P2([I)V

    goto :goto_0

    .line 14
    :cond_6
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->b([I)V

    .line 15
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->g([I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static t0(I)V
    .locals 5

    .line 1
    invoke-static {p0}, Ly0/h;->v0(I)I

    move-result p0

    .line 2
    sget-boolean v0, Lm1/a;->e:Z

    if-eqz v0, :cond_4

    .line 3
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 4
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly0/j;->k3(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly0/j;->m3(I)V

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 6
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    invoke-virtual {v0, p0}, Ly0/j;->j3(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static u([I)V
    .locals 8

    .line 1
    sget v0, Ly0/f;->Z:I

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2
    sget v0, Lk0/nt;->n:I

    if-eqz v0, :cond_2

    .line 3
    sget-object v2, Lk0/nt;->y:Lo1/o;

    if-eqz v2, :cond_0

    .line 4
    sget v3, Lk0/nt;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-interface/range {v2 .. v7}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->M2([I)V

    .line 6
    :cond_1
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->R2([I)V

    .line 7
    sget-object p0, Ly0/f;->b:Ly0/e;

    invoke-virtual {p0, v1}, Ly0/e;->j([I)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->c([I)V

    .line 9
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->j([I)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 10
    sget v0, Lk0/nt;->n:I

    if-eqz v0, :cond_6

    .line 11
    sget-object v2, Lk0/nt;->y:Lo1/o;

    if-eqz v2, :cond_4

    .line 12
    sget v3, Lk0/nt;->a:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    invoke-interface/range {v2 .. v7}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    :cond_4
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->M2([I)V

    .line 14
    :cond_5
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0, p0}, Lk0/lt;->R2([I)V

    .line 15
    sget-object p0, Ly0/f;->b:Ly0/e;

    invoke-virtual {p0, v1}, Ly0/e;->j([I)V

    goto :goto_0

    .line 16
    :cond_6
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->c([I)V

    .line 17
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0, p0}, Ly0/e;->j([I)V

    :cond_7
    :goto_0
    return-void
.end method

.method public static u0(I)V
    .locals 4

    .line 1
    sget-boolean v0, Lu0/b;->W3:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->f:I

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->h:I

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    invoke-static {p0}, Ly0/h;->t0(I)V

    new-array p0, v2, [I

    const/16 v0, 0xe7

    aput v0, p0, v3

    .line 3
    sget v0, Ly0/f;->c:I

    aput v0, p0, v1

    const/4 v0, 0x2

    aput v3, p0, v0

    invoke-static {p0}, Lz/k;->s([I)V

    const/4 p0, -0x4

    .line 4
    invoke-static {p0}, Ly0/h;->u0(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_0
    sget p0, Ly0/f;->c:I

    sget v0, Ly0/f;->g:I

    if-ge p0, v0, :cond_3

    .line 6
    sget p0, Ly0/f;->c:I

    sget v0, Ly0/f;->h:I

    add-int/2addr p0, v0

    sget v0, Ly0/f;->g:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 7
    :pswitch_1
    sget p0, Ly0/f;->c:I

    if-lez p0, :cond_3

    .line 8
    sget v0, Ly0/f;->h:I

    sub-int/2addr p0, v0

    invoke-static {p0, v3}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 9
    :pswitch_2
    sget p0, Ly0/f;->i:I

    if-nez p0, :cond_3

    .line 10
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 11
    :pswitch_3
    sget p0, Ly0/f;->i:I

    if-eqz p0, :cond_3

    .line 12
    invoke-static {v0}, Ly0/h;->u0(I)V

    goto :goto_0

    .line 13
    :pswitch_4
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p0

    invoke-virtual {p0}, Lu0/i;->r3()Z

    move-result p0

    .line 14
    sget v0, Ly0/f;->i:I

    if-nez v0, :cond_2

    sget v0, Lh0/c;->G:I

    if-nez v0, :cond_2

    if-nez p0, :cond_2

    .line 15
    invoke-static {v1}, Ly0/h;->Z(I)V

    .line 16
    sget-object p0, Ly0/f;->A0:Lo1/k0;

    invoke-virtual {p0}, Lo1/k0;->b()V

    new-array p0, v2, [I

    .line 17
    fill-array-data p0, :array_0

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    .line 18
    :cond_2
    invoke-static {v3}, Ly0/h;->Z(I)V

    .line 19
    sget-object p0, Ly0/f;->A0:Lo1/k0;

    invoke-virtual {p0}, Lo1/k0;->b()V

    new-array p0, v2, [I

    .line 20
    fill-array-data p0, :array_1

    invoke-static {p0}, Lz/k;->s([I)V

    goto :goto_0

    .line 21
    :pswitch_5
    invoke-static {}, Ly0/h;->i0()V

    goto :goto_0

    .line 22
    :pswitch_6
    invoke-static {}, Ly0/h;->O()V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x0
        0xa1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0xa0
    .end array-data
.end method

.method public static v()V
    .locals 7

    .line 1
    sget v0, Ly0/f;->Z:I

    if-nez v0, :cond_3

    .line 2
    sget v0, Lk0/nt;->m:I

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lk0/nt;->x:Lo1/o;

    if-eqz v1, :cond_0

    .line 4
    sget v2, Lk0/nt;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0}, Lk0/lt;->N2()V

    .line 6
    :cond_1
    invoke-static {}, Lk0/qt;->g0()V

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0}, Ly0/e;->d()V

    .line 8
    :goto_0
    invoke-static {}, Ly0/h;->M()V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 9
    sget v0, Lk0/nt;->m:I

    if-eqz v0, :cond_6

    .line 10
    sget-object v1, Lk0/nt;->x:Lo1/o;

    if-eqz v1, :cond_4

    .line 11
    sget v2, Lk0/nt;->a:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lo1/o;->a(I[I[F[Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    :cond_4
    sget-object v0, Lk0/nt;->d:Lk0/lt;

    invoke-virtual {v0}, Lk0/lt;->N2()V

    .line 13
    :cond_5
    invoke-static {}, Lk0/qt;->g0()V

    goto :goto_1

    .line 14
    :cond_6
    sget-object v0, Ly0/f;->b:Ly0/e;

    invoke-virtual {v0}, Ly0/e;->d()V

    .line 15
    :goto_1
    invoke-static {}, Ly0/h;->M()V

    :cond_7
    :goto_2
    return-void
.end method

.method public static v0(I)I
    .locals 3

    .line 1
    sget v0, Ly0/f;->g:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lo1/o0;->a(III)I

    move-result p0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "================>>> volume value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "soundMute"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget v0, Ly0/f;->c:I

    if-eq v0, p0, :cond_0

    .line 4
    sput p0, Ly0/f;->c:I

    const/4 v0, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p0, v2, v1

    .line 5
    invoke-static {v0, v2}, Ly0/h;->s0(I[I)V

    .line 6
    invoke-static {}, Ly0/h;->v()V

    .line 7
    invoke-static {}, Ly0/h;->e0()V

    .line 8
    sget-object v0, Ly0/g;->d:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    :cond_0
    return p0
.end method

.method public static w()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkMainVolume --- DataStore.sCustomerCfgOk : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lm1/a;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DataStore.localStore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lm1/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " DataSound.mSysVol: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Ly0/f;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " DataMain.sAppId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lu0/b;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Qin"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lm1/a;->c:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lm1/a;->e:Z

    if-eqz v0, :cond_4

    sget v0, Lu0/b;->D:I

    if-ltz v0, :cond_4

    const/16 v1, 0xf

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 3
    :goto_1
    sget v0, Ly0/f;->f:I

    if-eqz v1, :cond_2

    .line 4
    sget v0, Ly0/f;->e:I

    goto :goto_2

    :cond_2
    if-nez v2, :cond_3

    .line 5
    sget v0, Ly0/f;->d:I

    .line 6
    :cond_3
    :goto_2
    invoke-static {v0}, Ly0/h;->t0(I)V

    :cond_4
    return-void
.end method

.method public static x(I)Z
    .locals 1

    .line 1
    sget v0, Ly0/f;->K0:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static y()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Ly0/f;->P0:I

    .line 2
    sput v0, Ly0/f;->Q0:I

    .line 3
    sput v0, Ly0/f;->R0:I

    .line 4
    invoke-static {}, Ly0/h;->M()V

    return-void
.end method

.method public static z()V
    .locals 5

    .line 1
    sget-object v0, Ly0/f;->z0:[I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aput v1, v0, v3

    const/4 v1, 0x2

    .line 3
    aput v1, v0, v1

    const/4 v1, 0x3

    .line 4
    aput v1, v0, v1

    const/4 v1, 0x4

    .line 5
    aput v3, v0, v1

    const/4 v1, 0x5

    .line 6
    aput v1, v0, v1

    const/16 v3, 0x8

    .line 7
    aput v3, v0, v2

    const/4 v4, 0x7

    .line 8
    aput v2, v0, v4

    .line 9
    aput v2, v0, v3

    const/16 v3, 0x9

    .line 10
    aput v2, v0, v3

    const/16 v3, 0xa

    .line 11
    aput v2, v0, v3

    const/16 v3, 0xb

    .line 12
    aput v1, v0, v3

    const/16 v3, 0xc

    .line 13
    aput v1, v0, v3

    const/16 v3, 0xd

    .line 14
    aput v1, v0, v3

    const/16 v3, 0xe

    .line 15
    aput v1, v0, v3

    const/16 v1, 0xf

    .line 16
    aput v2, v0, v1

    const/16 v1, 0x10

    .line 17
    aput v2, v0, v1

    return-void
.end method

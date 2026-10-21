.class public Li1/w;
.super Li1/b0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/w$o;
    }
.end annotation


# static fields
.field public static G:Z = true

.field public static H:J = 0x50L


# instance fields
.field public A:I

.field public B:I

.field public final C:Lo1/p;

.field public D:Lo1/p;

.field public final E:[I

.field public F:I

.field public b:Li1/w$o;

.field public c:I

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:Ljava/lang/Runnable;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:[I

.field public n:I

.field public o:I

.field public p:J

.field public final q:Ljava/lang/Runnable;

.field public final r:Ljava/lang/Runnable;

.field public final s:Ljava/lang/Runnable;

.field public final t:Ljava/lang/Runnable;

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Li1/b0$b;-><init>()V

    .line 2
    new-instance v0, Li1/w$o;

    invoke-direct {v0, p0}, Li1/w$o;-><init>(Li1/w;)V

    iput-object v0, p0, Li1/w;->b:Li1/w$o;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Li1/w;->c:I

    .line 4
    new-instance v1, Li1/w$k;

    invoke-direct {v1, p0}, Li1/w$k;-><init>(Li1/w;)V

    iput-object v1, p0, Li1/w;->d:Ljava/lang/Runnable;

    .line 5
    new-instance v1, Li1/w$l;

    invoke-direct {v1, p0}, Li1/w$l;-><init>(Li1/w;)V

    iput-object v1, p0, Li1/w;->e:Ljava/lang/Runnable;

    .line 6
    new-instance v1, Li1/w$m;

    invoke-direct {v1, p0}, Li1/w$m;-><init>(Li1/w;)V

    iput-object v1, p0, Li1/w;->f:Ljava/lang/Runnable;

    const/16 v1, 0x31

    .line 7
    iput v1, p0, Li1/w;->g:I

    .line 8
    iput v0, p0, Li1/w;->h:I

    .line 9
    iput v0, p0, Li1/w;->i:I

    .line 10
    iget v1, p0, Li1/w;->c:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Li1/w;->j:I

    .line 11
    iput v0, p0, Li1/w;->k:I

    .line 12
    iput v0, p0, Li1/w;->l:I

    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 13
    fill-array-data v1, :array_0

    iput-object v1, p0, Li1/w;->m:[I

    .line 14
    iput v0, p0, Li1/w;->n:I

    .line 15
    iput v0, p0, Li1/w;->o:I

    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Li1/w;->p:J

    .line 17
    new-instance v1, Li1/w$n;

    invoke-direct {v1, p0}, Li1/w$n;-><init>(Li1/w;)V

    iput-object v1, p0, Li1/w;->q:Ljava/lang/Runnable;

    .line 18
    new-instance v2, Li1/w$a;

    invoke-direct {v2, p0}, Li1/w$a;-><init>(Li1/w;)V

    iput-object v2, p0, Li1/w;->r:Ljava/lang/Runnable;

    .line 19
    new-instance v3, Li1/w$b;

    invoke-direct {v3, p0}, Li1/w$b;-><init>(Li1/w;)V

    iput-object v3, p0, Li1/w;->s:Ljava/lang/Runnable;

    .line 20
    new-instance v4, Li1/w$c;

    invoke-direct {v4, p0}, Li1/w$c;-><init>(Li1/w;)V

    iput-object v4, p0, Li1/w;->t:Ljava/lang/Runnable;

    .line 21
    iput v0, p0, Li1/w;->u:I

    .line 22
    iput v0, p0, Li1/w;->v:I

    .line 23
    iput v0, p0, Li1/w;->w:I

    .line 24
    iput v0, p0, Li1/w;->x:I

    .line 25
    iput v0, p0, Li1/w;->y:I

    .line 26
    iput v0, p0, Li1/w;->z:I

    .line 27
    iput v0, p0, Li1/w;->A:I

    .line 28
    iput v0, p0, Li1/w;->B:I

    .line 29
    new-instance v5, Li1/w$d;

    invoke-direct {v5, p0}, Li1/w$d;-><init>(Li1/w;)V

    iput-object v5, p0, Li1/w;->C:Lo1/p;

    .line 30
    new-instance v6, Li1/w$e;

    invoke-direct {v6, p0}, Li1/w$e;-><init>(Li1/w;)V

    iput-object v6, p0, Li1/w;->D:Lo1/p;

    const/16 v6, 0x118

    new-array v6, v6, [I

    .line 31
    iput-object v6, p0, Li1/w;->E:[I

    .line 32
    iput v0, p0, Li1/w;->F:I

    .line 33
    new-instance v6, Li1/w$o;

    invoke-direct {v6, p0}, Li1/w$o;-><init>(Li1/w;)V

    iput-object v6, p0, Li1/w;->b:Li1/w$o;

    .line 34
    invoke-virtual {v6}, Li1/e;->h()V

    .line 35
    sget-object v6, Lu0/c;->O:Lo1/z;

    iget-object v7, p0, Li1/w;->D:Lo1/p;

    invoke-virtual {v6, v7}, Lo1/z;->a(Lo1/p;)V

    .line 36
    sget-boolean v6, Li1/w;->G:Z

    if-nez v6, :cond_0

    return-void

    :cond_0
    const/16 v6, 0x28

    const-string v7, "persist.fyt.track_angle_max"

    .line 37
    invoke-static {v7, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    iput v6, p0, Li1/w;->c:I

    .line 38
    div-int/lit8 v7, v6, 0x2

    iput v7, p0, Li1/w;->j:I

    .line 39
    div-int/lit8 v6, v6, 0x2

    sput v6, Lu0/b;->I2:I

    .line 40
    sget-object v6, Lu0/c;->z:Lo1/y;

    invoke-virtual {v6, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 41
    sget-object v6, Lu0/c;->B:Lo1/y;

    invoke-virtual {v6, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 42
    sget-object v6, Lu0/c;->f:Lo1/y;

    invoke-virtual {v6, v1, v0}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 43
    sget-object v0, Lu0/c;->m:Lo1/y;

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 44
    sget-object v0, Lu0/c;->g:Lo1/y;

    invoke-virtual {v0, v2, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 45
    sget-object v0, Lu0/c;->I:Lo1/y;

    invoke-virtual {v0, v4, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 46
    sget-object v0, Lo1/h;->b:Lo1/y;

    invoke-virtual {v0, v3, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 47
    sget-object v0, Lu0/c;->R:Lo1/z;

    invoke-virtual {v0, v5}, Lo1/z;->a(Lo1/p;)V

    .line 48
    sget-object v0, Lo1/h;->d:Lo1/y;

    iget-object v1, p0, Li1/w;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 49
    sget-object v0, Lo1/h;->e:Lo1/y;

    iget-object v1, p0, Li1/w;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 50
    iget-object v0, p0, Li1/w;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 51
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xd

    new-instance v2, Li1/w$f;

    invoke-direct {v2, p0}, Li1/w$f;-><init>(Li1/w;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->g(ILc/f$b;)V

    .line 52
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Li1/w$g;

    invoke-direct {v2, p0}, Li1/w$g;-><init>(Li1/w;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->g(ILc/f$b;)V

    .line 53
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xb

    new-instance v2, Li1/w$h;

    invoke-direct {v2, p0}, Li1/w$h;-><init>(Li1/w;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    .line 54
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/16 v1, 0xc

    new-instance v2, Li1/w$i;

    invoke-direct {v2, p0}, Li1/w$i;-><init>(Li1/w;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    .line 55
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x22f

    new-instance v2, Li1/w$j;

    invoke-direct {v2, p0}, Li1/w$j;-><init>(Li1/w;)V

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    return-void

    :array_0
    .array-data 4
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
        0xa
    .end array-data
.end method


# virtual methods
.method public b(I)V
    .locals 3

    const/4 v0, 0x4

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    const-wide/16 v1, 0x14

    .line 2
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0xf2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0xf1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0xf0
        0x0
    .end array-data
.end method

.method public c([B)V
    .locals 7

    if-eqz p1, :cond_5

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    invoke-static {p1}, Lo1/s0;->e([B)[I

    move-result-object p1

    .line 3
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget v3, p1, v2

    .line 4
    iget-object v4, p0, Li1/w;->E:[I

    iget v5, p0, Li1/w;->F:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Li1/w;->F:I

    aput v3, v4, v5

    .line 5
    iget-object v4, p0, Li1/w;->b:Li1/w$o;

    invoke-virtual {v4, v3}, Li1/e;->g(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 6
    iput v1, p0, Li1/w;->F:I

    .line 7
    iget-object v3, p0, Li1/w;->b:Li1/w$o;

    invoke-virtual {v3}, Li1/w$o;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Li1/w;->b:Li1/w$o;

    iget-object v3, v3, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 9
    iget-object v5, p0, Li1/w;->b:Li1/w$o;

    iget-object v5, v5, Li1/e;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v1

    .line 10
    iget-object v5, p0, Li1/w;->b:Li1/w$o;

    iget-object v6, v5, Li1/e;->c:[I

    iget-object v5, v5, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    invoke-virtual {p0, v3}, Li1/w;->f([I)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v3, p0, Li1/w;->b:Li1/w$o;

    iget-object v4, v3, Li1/e;->c:[I

    iget-object v3, v3, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v4, v1, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    invoke-virtual {p0, v3}, Li1/w;->f([I)V

    .line 13
    :goto_1
    iget-object v3, p0, Li1/w;->b:Li1/w$o;

    invoke-virtual {v3}, Li1/e;->b()V

    goto :goto_2

    :cond_2
    const/4 v5, -0x1

    if-ne v3, v5, :cond_3

    .line 14
    iget v3, p0, Li1/w;->F:I

    .line 15
    iput v1, p0, Li1/w;->F:I

    if-le v3, v4, :cond_4

    .line 16
    iget-object v5, p0, Li1/w;->E:[I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v5, v4, v3}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v3

    .line 17
    invoke-static {v3}, Lo1/s0;->r([I)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Li1/w;->c([B)V

    goto :goto_2

    :cond_3
    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    .line 18
    iput v1, p0, Li1/w;->F:I

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method public d(I)V
    .locals 4

    const/4 v0, 0x4

    if-nez p1, :cond_0

    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    const-wide/16 v1, 0x14

    .line 2
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_1

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_2

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne p1, v1, :cond_2

    .line 5
    invoke-virtual {p0, v2}, Li1/w;->b(I)V

    new-array p1, v3, [I

    .line 6
    fill-array-data p1, :array_3

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    .line 7
    invoke-virtual {p0, v2}, Li1/w;->b(I)V

    new-array p1, v3, [I

    .line 8
    fill-array-data p1, :array_4

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_3
    if-ne p1, v0, :cond_4

    .line 9
    invoke-virtual {p0, v2}, Li1/w;->b(I)V

    new-array p1, v3, [I

    .line 10
    fill-array-data p1, :array_5

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 11
    invoke-virtual {p0, v2}, Li1/w;->b(I)V

    new-array p1, v3, [I

    .line 12
    fill-array-data p1, :array_6

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    new-array p1, v3, [I

    .line 13
    fill-array-data p1, :array_7

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x7

    if-ne p1, v0, :cond_7

    new-array p1, v3, [I

    .line 14
    fill-array-data p1, :array_8

    invoke-virtual {p0, p1}, Li1/w;->h([I)V

    :cond_7
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x2
        0xf2
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0xf1
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0xf0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x1
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x9
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x1
        0x4
    .end array-data

    :array_7
    .array-data 4
        0x9
        0x1
        0x25
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x1
        0x29
    .end array-data
.end method

.method public e()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-wide v1, Lu0/b;->b2:D

    const-wide v3, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v1, v3

    double-to-long v1, v1

    .line 2
    sget-wide v5, Lu0/b;->c2:D

    mul-double/2addr v5, v3

    double-to-long v3, v5

    const/16 v5, 0x15

    new-array v5, v5, [I

    const/4 v6, 0x0

    const/16 v7, 0x14

    aput v7, v5, v6

    const/4 v8, 0x1

    const/16 v9, 0x13

    aput v9, v5, v8

    const-wide/16 v10, 0x0

    cmp-long v12, v3, v10

    if-ltz v12, :cond_0

    move v12, v6

    goto :goto_0

    :cond_0
    move v12, v8

    :goto_0
    const/4 v13, 0x2

    aput v12, v5, v13

    const/16 v12, 0x8

    .line 3
    invoke-virtual {v0, v3, v4, v12}, Li1/w;->g(JI)I

    move-result v14

    const/4 v15, 0x3

    aput v14, v5, v15

    const/4 v14, 0x7

    .line 4
    invoke-virtual {v0, v3, v4, v14}, Li1/w;->g(JI)I

    move-result v16

    const/4 v7, 0x4

    aput v16, v5, v7

    const/4 v9, 0x6

    .line 5
    invoke-virtual {v0, v3, v4, v9}, Li1/w;->g(JI)I

    move-result v17

    const/4 v10, 0x5

    aput v17, v5, v10

    .line 6
    invoke-virtual {v0, v3, v4, v10}, Li1/w;->g(JI)I

    move-result v11

    aput v11, v5, v9

    .line 7
    invoke-virtual {v0, v3, v4, v7}, Li1/w;->g(JI)I

    move-result v11

    aput v11, v5, v14

    .line 8
    invoke-virtual {v0, v3, v4, v15}, Li1/w;->g(JI)I

    move-result v11

    aput v11, v5, v12

    const/16 v11, 0x9

    .line 9
    invoke-virtual {v0, v3, v4, v13}, Li1/w;->g(JI)I

    move-result v12

    aput v12, v5, v11

    const/16 v11, 0xa

    .line 10
    invoke-virtual {v0, v3, v4, v8}, Li1/w;->g(JI)I

    move-result v12

    aput v12, v5, v11

    const/16 v11, 0xb

    .line 11
    invoke-virtual {v0, v3, v4, v6}, Li1/w;->g(JI)I

    move-result v3

    aput v3, v5, v11

    const/16 v3, 0xc

    const-wide/16 v11, 0x0

    cmp-long v4, v1, v11

    if-ltz v4, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v8

    :goto_1
    aput v4, v5, v3

    const/16 v3, 0xd

    .line 12
    invoke-virtual {v0, v1, v2, v14}, Li1/w;->g(JI)I

    move-result v4

    aput v4, v5, v3

    const/16 v3, 0xe

    .line 13
    invoke-virtual {v0, v1, v2, v9}, Li1/w;->g(JI)I

    move-result v4

    aput v4, v5, v3

    const/16 v3, 0xf

    .line 14
    invoke-virtual {v0, v1, v2, v10}, Li1/w;->g(JI)I

    move-result v4

    aput v4, v5, v3

    const/16 v3, 0x10

    .line 15
    invoke-virtual {v0, v1, v2, v7}, Li1/w;->g(JI)I

    move-result v4

    aput v4, v5, v3

    const/16 v3, 0x11

    .line 16
    invoke-virtual {v0, v1, v2, v15}, Li1/w;->g(JI)I

    move-result v4

    aput v4, v5, v3

    const/16 v3, 0x12

    .line 17
    invoke-virtual {v0, v1, v2, v13}, Li1/w;->g(JI)I

    move-result v4

    aput v4, v5, v3

    .line 18
    invoke-virtual {v0, v1, v2, v8}, Li1/w;->g(JI)I

    move-result v3

    const/16 v4, 0x13

    aput v3, v5, v4

    .line 19
    invoke-virtual {v0, v1, v2, v6}, Li1/w;->g(JI)I

    move-result v1

    const/16 v2, 0x14

    aput v1, v5, v2

    .line 20
    invoke-virtual {v0, v5}, Li1/w;->h([I)V

    return-void
.end method

.method public f([I)V
    .locals 4

    .line 1
    sget-boolean v0, Li1/w;->G:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    array-length v0, p1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    .line 3
    aget v0, p1, v0

    const/4 v2, 0x6

    .line 4
    aget p1, p1, v2

    and-int/lit8 v3, v0, 0x3

    rsub-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0xa

    .line 5
    div-int/2addr v3, v1

    invoke-static {v3}, Lu0/d;->D2(I)V

    shr-int/lit8 v3, v0, 0x2

    and-int/2addr v3, v1

    rsub-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0xa

    .line 6
    div-int/2addr v3, v1

    invoke-static {v3}, Lu0/d;->E2(I)V

    shr-int/lit8 v3, v0, 0x4

    and-int/2addr v3, v1

    rsub-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0xa

    .line 7
    div-int/2addr v3, v1

    invoke-static {v3}, Lu0/d;->G2(I)V

    shr-int/2addr v0, v2

    and-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0xa

    .line 8
    div-int/2addr v0, v1

    invoke-static {v0}, Lu0/d;->F2(I)V

    and-int/lit8 v0, p1, 0x3

    rsub-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0xa

    .line 9
    div-int/2addr v0, v1

    invoke-static {v0}, Lu0/d;->R2(I)V

    shr-int/lit8 v0, p1, 0x2

    and-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0xa

    .line 10
    div-int/2addr v0, v1

    invoke-static {v0}, Lu0/d;->S2(I)V

    shr-int/lit8 v0, p1, 0x4

    and-int/2addr v0, v1

    rsub-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0xa

    .line 11
    div-int/2addr v0, v1

    invoke-static {v0}, Lu0/d;->U2(I)V

    shr-int/2addr p1, v2

    and-int/2addr p1, v1

    rsub-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0xa

    .line 12
    div-int/2addr p1, v1

    invoke-static {p1}, Lu0/d;->T2(I)V

    :cond_1
    return-void
.end method

.method public g(JI)I
    .locals 4

    long-to-double p1, p1

    add-int/lit8 v0, p3, 0x1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    rem-double/2addr p1, v0

    int-to-double v0, p3

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method public varargs h([I)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    if-gtz v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v1, 0x2

    .line 2
    new-array v2, v2, [I

    const/16 v3, 0x2e

    .line 3
    aput v3, v2, v0

    move v3, v0

    :goto_1
    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v0, 0x1

    .line 4
    aget v5, p1, v0

    aput v5, v2, v4

    .line 5
    aget v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v3, v0

    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    xor-int/lit16 p1, v3, 0xff

    .line 6
    aput p1, v2, v1

    .line 7
    iget-object p1, p0, Li1/b0$b;->a:Li1/b0;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lb/c$b;->f([I)V

    :cond_3
    return-void
.end method

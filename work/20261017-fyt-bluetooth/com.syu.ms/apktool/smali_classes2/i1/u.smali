.class public Li1/u;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/u$k;,
        Li1/u$l;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/u$k;",
        ">;"
    }
.end annotation


# instance fields
.field public final A:Lo1/t0$b;

.field public final B:Ljava/lang/Runnable;

.field public final C:Ljava/lang/Runnable;

.field public final D:Ljava/lang/Runnable;

.field public final E:Ljava/lang/Runnable;

.field public final F:Ljava/lang/Runnable;

.field public final G:Ljava/lang/Runnable;

.field public final k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:I

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Lo1/t0;

.field public final z:Lo1/t0$a;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li1/u;->k:Z

    const/4 p2, 0x0

    .line 3
    iput p2, p0, Li1/u;->l:I

    .line 4
    iput p2, p0, Li1/u;->m:I

    .line 5
    iput p2, p0, Li1/u;->n:I

    .line 6
    iput p2, p0, Li1/u;->o:I

    .line 7
    iput p2, p0, Li1/u;->p:I

    .line 8
    iput p2, p0, Li1/u;->q:I

    const/16 v0, 0x14

    .line 9
    iput v0, p0, Li1/u;->r:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Li1/u;->s:I

    .line 11
    iput p2, p0, Li1/u;->t:I

    .line 12
    iput-boolean p1, p0, Li1/u;->u:Z

    .line 13
    iput p2, p0, Li1/u;->v:I

    .line 14
    iput-boolean p2, p0, Li1/u;->w:Z

    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Li1/u;->x:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Li1/u;->y:Lo1/t0;

    .line 17
    new-instance p2, Li1/u$b;

    invoke-direct {p2, p0}, Li1/u$b;-><init>(Li1/u;)V

    iput-object p2, p0, Li1/u;->z:Lo1/t0$a;

    .line 18
    new-instance p2, Li1/u$c;

    invoke-direct {p2, p0}, Li1/u$c;-><init>(Li1/u;)V

    iput-object p2, p0, Li1/u;->A:Lo1/t0$b;

    .line 19
    new-instance p2, Li1/u$d;

    invoke-direct {p2, p0}, Li1/u$d;-><init>(Li1/u;)V

    iput-object p2, p0, Li1/u;->B:Ljava/lang/Runnable;

    .line 20
    new-instance p2, Li1/u$e;

    invoke-direct {p2, p0}, Li1/u$e;-><init>(Li1/u;)V

    iput-object p2, p0, Li1/u;->C:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Li1/u$f;

    invoke-direct {v0, p0}, Li1/u$f;-><init>(Li1/u;)V

    iput-object v0, p0, Li1/u;->D:Ljava/lang/Runnable;

    .line 22
    new-instance v1, Li1/u$g;

    invoke-direct {v1, p0}, Li1/u$g;-><init>(Li1/u;)V

    iput-object v1, p0, Li1/u;->E:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Li1/u$h;

    invoke-direct {v1, p0}, Li1/u$h;-><init>(Li1/u;)V

    iput-object v1, p0, Li1/u;->F:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Li1/u$i;

    invoke-direct {v1, p0}, Li1/u$i;-><init>(Li1/u;)V

    iput-object v1, p0, Li1/u;->G:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Li1/u$k;

    invoke-direct {v1, p0}, Li1/u$k;-><init>(Li1/u;)V

    iput-object v1, p0, Li1/s;->a:Li1/e;

    .line 26
    invoke-virtual {v1}, Li1/e;->h()V

    .line 27
    invoke-virtual {p0}, Li1/a;->v()V

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============== DataMain.sAccOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->a0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Lu0/c;->m:Lo1/y;

    invoke-virtual {v1, p2, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 30
    sget-object p2, Lo1/h;->b:Lo1/y;

    invoke-virtual {p2, v0, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic w(Li1/u;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li1/u;->x(II)V

    return-void
.end method


# virtual methods
.method public varargs A([I)V
    .locals 8

    .line 1
    iget-object v0, p0, Li1/u;->y:Lo1/t0;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move v1, v0

    goto :goto_0

    .line 2
    :cond_1
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v1, 0x5

    .line 3
    new-array v3, v2, [I

    const/16 v4, 0xaa

    .line 4
    aput v4, v3, v0

    const/16 v4, 0x41

    const/4 v5, 0x1

    .line 5
    aput v4, v3, v5

    const/16 v4, 0xa1

    const/4 v6, 0x2

    .line 6
    aput v4, v3, v6

    and-int/lit16 v4, v2, 0xff

    const/4 v7, 0x3

    .line 7
    aput v4, v3, v7

    .line 8
    aget v4, v3, v0

    aget v5, v3, v5

    add-int/2addr v4, v5

    aget v5, v3, v6

    add-int/2addr v4, v5

    aget v5, v3, v7

    add-int/2addr v4, v5

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_3

    .line 9
    aget v6, p1, v5

    add-int/2addr v4, v6

    add-int/lit8 v6, v5, 0x4

    .line 10
    aget v7, p1, v5

    aput v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x4

    and-int/lit16 p1, v4, 0xff

    .line 11
    aput p1, v3, v1

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  PluginRadarTianChang write serial:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v3}, Lb/c$b;->f([I)V

    :cond_4
    return-void
.end method

.method public B()V
    .locals 5

    .line 1
    iget v0, p0, Li1/u;->m:I

    const/4 v1, 0x3

    and-int/2addr v0, v1

    iget v2, p0, Li1/u;->n:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x2

    shl-int/2addr v2, v4

    or-int/2addr v0, v2

    iget v2, p0, Li1/u;->o:I

    and-int/2addr v2, v3

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    iget v2, p0, Li1/u;->p:I

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x4

    or-int/2addr v0, v2

    iget v2, p0, Li1/u;->q:I

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x5

    or-int/2addr v0, v2

    .line 2
    iget v2, p0, Li1/u;->v:I

    if-eq v0, v2, :cond_0

    .line 3
    iput v0, p0, Li1/u;->v:I

    :cond_0
    new-array v0, v1, [I

    const/16 v1, 0x83

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v2, v0, v3

    .line 4
    iget v1, p0, Li1/u;->v:I

    aput v1, v0, v4

    invoke-virtual {p0, v0}, Li1/u;->A([I)V

    return-void
.end method

.method public a(Li1/b0;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Li1/a;->a(Li1/b0;)V

    return-void
.end method

.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  PluginRadarTianChang handleCmd cmdCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ints :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  strs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    invoke-static {p4, v1}, Lo1/s0;->i([Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3
    aget-object v3, p4, v1

    .line 4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    iput-object v3, p0, Li1/u;->x:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Li1/u;->A([I)V

    goto/16 :goto_7

    :cond_1
    new-array v2, v2, [I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 8
    invoke-virtual {p0, v0, v2}, Li1/s;->r(I[I)V

    goto/16 :goto_7

    .line 9
    :cond_2
    invoke-static {p2, v1}, Lo1/s0;->h([II)Z

    move-result v3

    if-eqz v3, :cond_11

    aget v1, p2, v1

    if-ne v1, v2, :cond_11

    .line 10
    iget v1, p0, Li1/u;->s:I

    if-gez v1, :cond_11

    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_1

    invoke-virtual {p0, v0}, Li1/u;->A([I)V

    goto/16 :goto_7

    .line 12
    :cond_3
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 13
    aget p1, p2, v1

    if-eqz p1, :cond_e

    if-eq p1, v2, :cond_c

    if-eq p1, v0, :cond_a

    const/4 p3, 0x3

    if-eq p1, p3, :cond_8

    const/4 p4, 0x4

    if-eq p1, p4, :cond_6

    const/4 p4, 0x5

    if-eq p1, p4, :cond_4

    goto/16 :goto_6

    .line 14
    :cond_4
    aget p1, p2, v2

    if-ltz p1, :cond_5

    aget p1, p2, v2

    goto :goto_0

    :cond_5
    move p1, v1

    .line 15
    :goto_0
    iget p2, p0, Li1/u;->r:I

    if-eq p1, p2, :cond_10

    .line 16
    iput p1, p0, Li1/u;->r:I

    new-array p2, v0, [I

    aput p4, p2, v1

    aput p1, p2, v2

    .line 17
    invoke-virtual {p0, v1, p2}, Li1/s;->r(I[I)V

    new-array p1, p3, [I

    const/16 p2, 0x84

    aput p2, p1, v1

    aput v1, p1, v2

    .line 18
    iget p2, p0, Li1/u;->r:I

    aput p2, p1, v0

    invoke-virtual {p0, p1}, Li1/u;->A([I)V

    .line 19
    invoke-virtual {p0}, Li1/u;->z()V

    goto/16 :goto_6

    .line 20
    :cond_6
    aget p1, p2, v2

    if-ltz p1, :cond_7

    aget p1, p2, v2

    if-gt p1, v0, :cond_7

    aget p1, p2, v2

    goto :goto_1

    :cond_7
    move p1, v1

    .line 21
    :goto_1
    iget p2, p0, Li1/u;->q:I

    if-eq p1, p2, :cond_10

    .line 22
    iput p1, p0, Li1/u;->q:I

    new-array p2, v0, [I

    aput p4, p2, v1

    aput p1, p2, v2

    .line 23
    invoke-virtual {p0, v1, p2}, Li1/s;->r(I[I)V

    .line 24
    invoke-virtual {p0}, Li1/u;->z()V

    goto/16 :goto_6

    .line 25
    :cond_8
    aget p1, p2, v2

    if-ne p1, v2, :cond_9

    move p1, v1

    goto :goto_2

    :cond_9
    move p1, v2

    .line 26
    :goto_2
    iget p2, p0, Li1/u;->p:I

    if-eq p1, p2, :cond_10

    .line 27
    iput p1, p0, Li1/u;->p:I

    new-array p2, v0, [I

    aput p3, p2, v1

    xor-int/2addr p1, v2

    aput p1, p2, v2

    .line 28
    invoke-virtual {p0, v1, p2}, Li1/s;->r(I[I)V

    .line 29
    invoke-virtual {p0}, Li1/u;->z()V

    goto :goto_6

    .line 30
    :cond_a
    aget p1, p2, v2

    if-ne p1, v2, :cond_b

    move p1, v1

    goto :goto_3

    :cond_b
    move p1, v2

    .line 31
    :goto_3
    iget p2, p0, Li1/u;->o:I

    if-eq p1, p2, :cond_10

    .line 32
    iput p1, p0, Li1/u;->o:I

    new-array p2, v0, [I

    aput v0, p2, v1

    xor-int/2addr p1, v2

    aput p1, p2, v2

    .line 33
    invoke-virtual {p0, v1, p2}, Li1/s;->r(I[I)V

    .line 34
    invoke-virtual {p0}, Li1/u;->z()V

    goto :goto_6

    .line 35
    :cond_c
    aget p1, p2, v2

    if-ne p1, v2, :cond_d

    move p1, v1

    goto :goto_4

    :cond_d
    move p1, v2

    .line 36
    :goto_4
    iget p2, p0, Li1/u;->n:I

    if-eq p1, p2, :cond_10

    .line 37
    iput p1, p0, Li1/u;->n:I

    new-array p2, v0, [I

    aput v2, p2, v1

    xor-int/2addr p1, v2

    aput p1, p2, v2

    .line 38
    invoke-virtual {p0, v1, p2}, Li1/s;->r(I[I)V

    .line 39
    invoke-virtual {p0}, Li1/u;->z()V

    goto :goto_6

    .line 40
    :cond_e
    aget p1, p2, v2

    if-ltz p1, :cond_f

    aget p1, p2, v2

    if-gt p1, v0, :cond_f

    aget p1, p2, v2

    goto :goto_5

    :cond_f
    move p1, v1

    .line 41
    :goto_5
    iget p2, p0, Li1/u;->m:I

    if-eq p1, p2, :cond_10

    .line 42
    iput p1, p0, Li1/u;->m:I

    new-array p2, v0, [I

    aput v1, p2, v1

    aput p1, p2, v2

    .line 43
    invoke-virtual {p0, v1, p2}, Li1/s;->r(I[I)V

    .line 44
    invoke-virtual {p0}, Li1/u;->z()V

    :cond_10
    :goto_6
    return v2

    .line 45
    :cond_11
    :goto_7
    invoke-super {p0, p1, p2, p3, p4}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result p1

    return p1

    :array_0
    .array-data 4
        0x78
        0x0
        0xa5
        0x5a
        0x19
        0x88
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x0
    .end array-data
.end method

.method public l([I)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1
    aget v3, v1, v2

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/16 v5, 0x81

    if-eq v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=====>  PluginRadarTianChang onHandle:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v1

    invoke-static {v1, v2, v5}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " toSet: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v0, Li1/u;->u:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Device"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :cond_0
    iget-object v3, v0, Li1/u;->y:Lo1/t0;

    const/16 v5, 0x11

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v3, :cond_2

    iget-boolean v3, v0, Li1/u;->u:Z

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v3, :cond_1

    new-array v3, v7, [I

    aput v5, v3, v2

    .line 4
    invoke-virtual {v0, v3}, Li1/u;->A([I)V

    const-wide/16 v8, 0x32

    .line 5
    invoke-static {v8, v9}, Lo1/s0;->C(J)V

    new-array v3, v6, [I

    .line 6
    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Li1/u;->A([I)V

    .line 7
    invoke-static {v8, v9}, Lo1/s0;->C(J)V

    new-array v3, v6, [I

    .line 8
    fill-array-data v3, :array_1

    invoke-virtual {v0, v3}, Li1/u;->A([I)V

    .line 9
    invoke-static {v8, v9}, Lo1/s0;->C(J)V

    new-array v3, v6, [I

    .line 10
    fill-array-data v3, :array_2

    invoke-virtual {v0, v3}, Li1/u;->A([I)V

    .line 11
    :cond_1
    iput-boolean v2, v0, Li1/u;->u:Z

    .line 12
    :cond_2
    iget-object v3, v0, Li1/s;->a:Li1/e;

    check-cast v3, Li1/u$k;

    iget-object v3, v3, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_24

    .line 13
    aget v3, v1, v2

    and-int/2addr v3, v4

    const/4 v8, 0x6

    if-eq v3, v5, :cond_22

    const/16 v9, 0x78

    const/16 v10, 0xaa

    if-eq v3, v9, :cond_1d

    const/16 v9, 0xa0

    const/4 v11, 0x4

    const/4 v12, 0x5

    const/4 v13, 0x3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_a

    .line 14
    :pswitch_0
    aget v3, v1, v7

    if-eq v3, v9, :cond_4

    if-eq v3, v10, :cond_3

    goto/16 :goto_a

    :cond_3
    new-array v1, v6, [I

    .line 15
    fill-array-data v1, :array_3

    invoke-virtual {v0, v1}, Li1/u;->A([I)V

    goto/16 :goto_a

    .line 16
    :cond_4
    aget v1, v1, v6

    and-int/2addr v1, v4

    .line 17
    iget v3, v0, Li1/u;->r:I

    if-eq v1, v3, :cond_24

    .line 18
    iput v1, v0, Li1/u;->r:I

    new-array v3, v6, [I

    aput v12, v3, v2

    aput v1, v3, v7

    .line 19
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    .line 20
    :pswitch_1
    aget v3, v1, v7

    if-eq v3, v9, :cond_6

    if-eq v3, v10, :cond_5

    goto/16 :goto_a

    :cond_5
    new-array v1, v6, [I

    .line 21
    fill-array-data v1, :array_4

    invoke-virtual {v0, v1}, Li1/u;->A([I)V

    goto/16 :goto_a

    .line 22
    :cond_6
    aget v1, v1, v6

    and-int/2addr v1, v4

    .line 23
    iget v3, v0, Li1/u;->v:I

    if-eq v1, v3, :cond_24

    .line 24
    iput v1, v0, Li1/u;->v:I

    and-int/2addr v1, v13

    .line 25
    iget v3, v0, Li1/u;->m:I

    if-eq v1, v3, :cond_7

    .line 26
    iput v1, v0, Li1/u;->m:I

    new-array v3, v6, [I

    aput v2, v3, v2

    aput v1, v3, v7

    .line 27
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    .line 28
    :cond_7
    iget v1, v0, Li1/u;->v:I

    shr-int/2addr v1, v6

    and-int/2addr v1, v7

    .line 29
    iget v3, v0, Li1/u;->n:I

    if-eq v1, v3, :cond_9

    .line 30
    iput v1, v0, Li1/u;->n:I

    new-array v3, v6, [I

    aput v7, v3, v2

    if-nez v1, :cond_8

    move v1, v7

    goto :goto_0

    :cond_8
    move v1, v2

    :goto_0
    aput v1, v3, v7

    .line 31
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    .line 32
    :cond_9
    iget v1, v0, Li1/u;->v:I

    shr-int/2addr v1, v13

    and-int/2addr v1, v7

    .line 33
    iget v3, v0, Li1/u;->o:I

    if-eq v1, v3, :cond_b

    .line 34
    iput v1, v0, Li1/u;->o:I

    new-array v3, v6, [I

    aput v6, v3, v2

    if-nez v1, :cond_a

    move v1, v7

    goto :goto_1

    :cond_a
    move v1, v2

    :goto_1
    aput v1, v3, v7

    .line 35
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    .line 36
    :cond_b
    iget v1, v0, Li1/u;->v:I

    shr-int/2addr v1, v11

    and-int/2addr v1, v7

    .line 37
    iget v3, v0, Li1/u;->p:I

    if-eq v1, v3, :cond_d

    .line 38
    iput v1, v0, Li1/u;->p:I

    new-array v3, v6, [I

    aput v13, v3, v2

    if-nez v1, :cond_c

    move v1, v7

    goto :goto_2

    :cond_c
    move v1, v2

    :goto_2
    aput v1, v3, v7

    .line 39
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    .line 40
    :cond_d
    iget v1, v0, Li1/u;->v:I

    shr-int/2addr v1, v12

    and-int/2addr v1, v13

    .line 41
    iget v3, v0, Li1/u;->q:I

    if-eq v1, v3, :cond_24

    .line 42
    iput v1, v0, Li1/u;->q:I

    new-array v3, v6, [I

    aput v11, v3, v2

    aput v1, v3, v7

    .line 43
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    .line 44
    :pswitch_2
    aget v1, v1, v7

    if-eqz v1, :cond_12

    if-eq v1, v10, :cond_11

    if-eq v1, v4, :cond_10

    if-eq v1, v9, :cond_f

    const/16 v3, 0xa1

    if-eq v1, v3, :cond_e

    goto/16 :goto_a

    .line 45
    :cond_e
    iput v2, v0, Li1/u;->s:I

    new-array v1, v6, [I

    .line 46
    fill-array-data v1, :array_5

    invoke-virtual {v0, v7, v1}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    .line 47
    :cond_f
    iput v2, v0, Li1/u;->s:I

    new-array v1, v6, [I

    .line 48
    fill-array-data v1, :array_6

    invoke-virtual {v0, v7, v1}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    .line 49
    :cond_10
    iput v2, v0, Li1/u;->s:I

    new-array v1, v6, [I

    .line 50
    fill-array-data v1, :array_7

    invoke-virtual {v0, v7, v1}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    .line 51
    :cond_11
    iput v2, v0, Li1/u;->s:I

    new-array v1, v6, [I

    .line 52
    fill-array-data v1, :array_8

    invoke-virtual {v0, v7, v1}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    .line 53
    :cond_12
    iput v2, v0, Li1/u;->s:I

    new-array v1, v6, [I

    .line 54
    fill-array-data v1, :array_9

    invoke-virtual {v0, v7, v1}, Li1/s;->r(I[I)V

    goto/16 :goto_a

    :pswitch_3
    const/16 v3, 0x8

    .line 55
    invoke-static {v1, v3}, Lo1/s0;->h([II)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 56
    aget v3, v1, v3

    invoke-virtual {v0, v3}, Li1/u;->y(I)Li1/u$l;

    move-result-object v3

    .line 57
    aget v4, v1, v7

    aget v9, v1, v6

    aget v10, v1, v13

    invoke-static {v4, v9, v10}, Lo1/s0;->y(III)I

    move-result v4

    iput v4, v0, Li1/u;->l:I

    const-string v4, "persist.tzy.radar.left2right"

    .line 58
    invoke-static {v4, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v4

    const/16 v9, 0x15

    const/16 v10, 0x12

    const/16 v14, 0xf

    const/16 v15, 0x14

    const/16 v16, 0x10

    const/16 v17, 0x13

    const/16 v18, 0x7

    if-nez v4, :cond_17

    .line 59
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_13

    move/from16 v4, v16

    goto :goto_3

    :cond_13
    move/from16 v4, v17

    :goto_3
    aget v5, v1, v11

    invoke-virtual {v0, v4, v5}, Li1/u;->x(II)V

    .line 60
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_14

    goto :goto_4

    :cond_14
    move v14, v15

    :goto_4
    aget v4, v1, v12

    invoke-virtual {v0, v14, v4}, Li1/u;->x(II)V

    .line 61
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_15

    const/16 v5, 0x11

    goto :goto_5

    :cond_15
    move v5, v10

    :goto_5
    aget v4, v1, v8

    invoke-virtual {v0, v5, v4}, Li1/u;->x(II)V

    .line 62
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_16

    const/16 v9, 0xe

    :cond_16
    aget v4, v1, v18

    invoke-virtual {v0, v9, v4}, Li1/u;->x(II)V

    goto :goto_9

    .line 63
    :cond_17
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_18

    move/from16 v4, v16

    goto :goto_6

    :cond_18
    move/from16 v4, v17

    :goto_6
    aget v5, v1, v12

    invoke-virtual {v0, v4, v5}, Li1/u;->x(II)V

    .line 64
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_19

    goto :goto_7

    :cond_19
    move v14, v15

    :goto_7
    aget v4, v1, v11

    invoke-virtual {v0, v14, v4}, Li1/u;->x(II)V

    .line 65
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_1a

    const/16 v5, 0x11

    goto :goto_8

    :cond_1a
    move v5, v10

    :goto_8
    aget v4, v1, v18

    invoke-virtual {v0, v5, v4}, Li1/u;->x(II)V

    .line 66
    iget-boolean v4, v3, Li1/u$l;->a:Z

    if-eqz v4, :cond_1b

    const/16 v9, 0xe

    :cond_1b
    aget v4, v1, v8

    invoke-virtual {v0, v9, v4}, Li1/u;->x(II)V

    .line 67
    :goto_9
    aget v4, v1, v11

    aget v5, v1, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v5, v1, v8

    aget v1, v1, v18

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-array v4, v13, [I

    aput v2, v4, v2

    aput v1, v4, v7

    .line 68
    iget-boolean v1, v3, Li1/u$l;->a:Z

    aput v1, v4, v6

    invoke-virtual {v0, v7, v4}, Li1/s;->r(I[I)V

    .line 69
    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_24

    sget v2, Lu0/b;->a0:I

    if-ne v2, v7, :cond_24

    .line 70
    iget-boolean v2, v3, Li1/u$l;->a:Z

    if-eqz v2, :cond_1c

    .line 71
    iget-object v2, v0, Li1/u;->E:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v2, v0, Li1/u;->E:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 73
    :cond_1c
    iget-object v2, v0, Li1/u;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 74
    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v2, v0, Li1/u;->F:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 75
    :cond_1d
    aget v2, v1, v7

    const-wide/16 v5, 0x258

    if-eq v2, v7, :cond_1f

    if-eq v2, v10, :cond_1e

    if-eq v2, v4, :cond_1f

    goto/16 :goto_a

    .line 76
    :cond_1e
    iget-object v1, v0, Li1/u;->y:Lo1/t0;

    if-nez v1, :cond_24

    iget-object v1, v0, Li1/u;->x:Ljava/lang/String;

    invoke-static {v1}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 77
    new-instance v1, Lo1/t0;

    invoke-direct {v1}, Lo1/t0;-><init>()V

    iput-object v1, v0, Li1/u;->y:Lo1/t0;

    .line 78
    iget-object v2, v0, Li1/u;->z:Lo1/t0$a;

    invoke-virtual {v1, v2}, Lo1/t0;->g(Lo1/t0$a;)V

    .line 79
    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_24

    .line 80
    new-instance v2, Li1/u$j;

    invoke-direct {v2, v0}, Li1/u$j;-><init>(Li1/u;)V

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 81
    :cond_1f
    iget-object v2, v0, Li1/u;->y:Lo1/t0;

    if-eqz v2, :cond_20

    const/4 v2, 0x0

    .line 82
    iput-object v2, v0, Li1/u;->y:Lo1/t0;

    .line 83
    iput-object v2, v0, Li1/u;->x:Ljava/lang/String;

    .line 84
    :cond_20
    aget v1, v1, v7

    if-ne v1, v7, :cond_21

    .line 85
    iput-boolean v7, v0, Li1/u;->u:Z

    .line 86
    iget-object v1, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v1, :cond_24

    .line 87
    new-instance v2, Li1/u$a;

    invoke-direct {v2, v0}, Li1/u$a;-><init>(Li1/u;)V

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_a

    .line 88
    :cond_21
    iget-object v1, v0, Li1/u;->A:Lo1/t0$b;

    if-eqz v1, :cond_24

    const/4 v2, -0x2

    .line 89
    invoke-interface {v1, v2, v7}, Lo1/t0$b;->a(IZ)V

    goto :goto_a

    .line 90
    :cond_22
    iget-object v3, v0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v3, :cond_23

    .line 91
    iget-object v4, v0, Li1/u;->G:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v3, v0, Li1/a;->i:Landroid/os/Handler;

    iget-object v4, v0, Li1/u;->G:Ljava/lang/Runnable;

    const-wide/16 v9, 0x1f4

    invoke-virtual {v3, v4, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_23
    invoke-static {v1, v7}, Lo1/s0;->h([II)Z

    move-result v3

    if-eqz v3, :cond_24

    aget v3, v1, v7

    iget v4, v0, Li1/u;->t:I

    if-eq v3, v4, :cond_24

    .line 94
    aget v1, v1, v7

    iput v1, v0, Li1/u;->t:I

    new-array v3, v6, [I

    aput v8, v3, v2

    aput v1, v3, v7

    .line 95
    invoke-virtual {v0, v2, v3}, Li1/s;->r(I[I)V

    :cond_24
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x82
        0x10
    .end array-data

    :array_1
    .array-data 4
        0x83
        0x10
    .end array-data

    :array_2
    .array-data 4
        0x84
        0x10
    .end array-data

    :array_3
    .array-data 4
        0x84
        0x10
    .end array-data

    :array_4
    .array-data 4
        0x83
        0x10
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        -0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public o([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Li1/u;->y:Lo1/t0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lo1/t0;->c([B)V

    :cond_0
    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    new-array v0, v0, [I

    aput v2, v0, v1

    .line 1
    iget v3, p0, Li1/u;->s:I

    aput v3, v0, v2

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    goto :goto_3

    :cond_1
    new-array v3, v0, [I

    aput v1, v3, v1

    .line 2
    iget v4, p0, Li1/u;->m:I

    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v0, [I

    aput v2, v3, v1

    .line 3
    iget v4, p0, Li1/u;->n:I

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v0, [I

    aput v0, v3, v1

    .line 4
    iget v4, p0, Li1/u;->o:I

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v0, [I

    const/4 v4, 0x3

    aput v4, v3, v1

    .line 5
    iget v4, p0, Li1/u;->p:I

    if-nez v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v0, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    .line 6
    iget v4, p0, Li1/u;->q:I

    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v0, [I

    const/4 v4, 0x5

    aput v4, v3, v1

    .line 7
    iget v4, p0, Li1/u;->r:I

    aput v4, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v0, v0, [I

    const/4 v3, 0x6

    aput v3, v0, v1

    .line 8
    iget v1, p0, Li1/u;->t:I

    aput v1, v0, v2

    invoke-static {p1, p2, v0}, Lo1/x;->v(Ly/b;I[I)V

    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    goto :goto_4

    .line 9
    :cond_5
    invoke-super {p0, p1, p2, p3}, Li1/s;->p(Ly/b;II)Z

    move-result v1

    :goto_4
    return v1
.end method

.method public final x(II)V
    .locals 5

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xa

    if-ltz p2, :cond_0

    const/16 v1, 0xf9

    if-gt p2, v1, :cond_0

    mul-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v1, 0x437a0000    # 250.0f

    div-float/2addr p2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p2, v1

    float-to-int p2, p2

    goto :goto_1

    :cond_0
    const/16 v1, 0xfd

    if-ne p2, v1, :cond_1

    :goto_0
    move p2, v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xfe

    goto :goto_0

    :goto_1
    if-gez p2, :cond_2

    return-void

    .line 1
    :cond_2
    sget v1, Lu0/b;->G:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_3

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v1

    if-nez v1, :cond_3

    new-array p2, v4, [I

    aput v0, p2, v3

    .line 2
    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p2, Lu0/c;->R:Lo1/z;

    new-array v1, v2, [I

    aput p1, v1, v3

    aput v0, v1, v4

    invoke-virtual {p2, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-array v0, v4, [I

    aput p2, v0, v3

    .line 4
    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    .line 5
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v1, v2, [I

    aput p1, v1, v3

    aput p2, v1, v4

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :goto_2
    return-void
.end method

.method public final y(I)Li1/u$l;
    .locals 5

    shr-int/lit8 v0, p1, 0x7

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    and-int/lit8 p1, p1, 0x7

    const/4 v3, -0x1

    const/16 v4, 0xa

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1
    :goto_1
    iget-boolean p1, p0, Li1/u;->w:Z

    if-eq v0, p1, :cond_3

    .line 2
    iput-boolean v0, p0, Li1/u;->w:Z

    .line 3
    invoke-static {v0}, Ly0/h;->U(Z)V

    .line 4
    :cond_3
    new-instance p1, Li1/u$l;

    invoke-direct {p1, p0, v1, v3}, Li1/u$l;-><init>(Li1/u;ZI)V

    return-object p1
.end method

.method public z()V
    .locals 4

    .line 1
    iget-object v0, p0, Li1/a;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Li1/u;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Li1/a;->i:Landroid/os/Handler;

    iget-object v1, p0, Li1/u;->B:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

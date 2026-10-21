.class public Li1/c0;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/c0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/c0$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public final s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li1/c0;->k:Z

    .line 3
    iput p1, p0, Li1/c0;->l:I

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Li1/c0;->m:I

    const/16 v0, 0x32

    .line 5
    iput v0, p0, Li1/c0;->n:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Li1/c0;->o:I

    .line 7
    iput v0, p0, Li1/c0;->p:I

    .line 8
    iput p2, p0, Li1/c0;->q:I

    .line 9
    new-instance v1, Li1/c0$a;

    invoke-direct {v1, p0}, Li1/c0$a;-><init>(Li1/c0;)V

    iput-object v1, p0, Li1/c0;->r:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Li1/c0$b;

    invoke-direct {v1, p0}, Li1/c0$b;-><init>(Li1/c0;)V

    iput-object v1, p0, Li1/c0;->s:Ljava/lang/Runnable;

    .line 11
    invoke-virtual {p0}, Li1/a;->v()V

    .line 12
    new-instance v2, Li1/c0$c;

    invoke-direct {v2, p0}, Li1/c0$c;-><init>(Li1/c0;)V

    iput-object v2, p0, Li1/s;->a:Li1/e;

    .line 13
    invoke-virtual {v2}, Li1/e;->h()V

    .line 14
    sget-object v2, Lu0/c;->m:Lo1/y;

    invoke-virtual {v2, v1, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const/16 v1, 0xd9

    .line 15
    invoke-static {v1, p1}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Li1/c0;->l:I

    const/16 p1, 0xda

    .line 16
    invoke-static {p1, p2}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Li1/c0;->m:I

    const/16 p1, 0xdb

    .line 17
    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Li1/c0;->n:I

    const/16 p1, 0xdc

    const v1, -0xff0100

    .line 18
    invoke-static {p1, v1}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Li1/c0;->o:I

    const/16 p1, 0xde

    .line 19
    invoke-static {p1, p2}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Li1/c0;->q:I

    const/16 p1, 0xdd

    .line 20
    invoke-static {p1, v0}, Lm1/c;->c(II)I

    move-result p1

    iput p1, p0, Li1/c0;->p:I

    return-void
.end method


# virtual methods
.method public j(I[I[F[Ljava/lang/String;)Z
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  SnnavLed handleCmd cmdCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ints :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==============  SnnavLed  powerOn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Li1/c0;->l:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Li1/c0;->m:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Li1/c0;->o:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "%08X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " speed :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Li1/c0;->p:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " speedEnable: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Li1/c0;->q:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-static {p2, v2}, Lo1/s0;->h([II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4
    aget p3, p2, v5

    const/4 p4, 0x3

    const/4 v0, 0x2

    if-eqz p3, :cond_e

    const/4 v1, 0x5

    if-eq p3, v2, :cond_b

    const/16 v3, 0x64

    const/16 v4, 0x32

    if-eq p3, v0, :cond_8

    const/4 v6, 0x4

    if-eq p3, p4, :cond_6

    if-eq p3, v6, :cond_1

    goto/16 :goto_4

    .line 5
    :cond_1
    iget p3, p0, Li1/c0;->l:I

    if-eq p3, v2, :cond_2

    goto/16 :goto_4

    .line 6
    :cond_2
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 7
    aget p3, p2, v2

    if-ne p3, v2, :cond_3

    aget p3, p2, v2

    goto :goto_0

    :cond_3
    move p3, v5

    .line 8
    :goto_0
    aget v7, p2, v0

    if-ltz v7, :cond_4

    aget v7, p2, v0

    if-gt v7, v3, :cond_4

    aget v4, p2, v2

    .line 9
    :cond_4
    iget p2, p0, Li1/c0;->p:I

    if-ne v4, p2, :cond_5

    iget p2, p0, Li1/c0;->q:I

    if-eq p3, p2, :cond_11

    .line 10
    :cond_5
    iput v4, p0, Li1/c0;->p:I

    .line 11
    iput p3, p0, Li1/c0;->q:I

    new-array p2, p4, [I

    aput v1, p2, v5

    aput p3, p2, v2

    aput v4, p2, v0

    .line 12
    invoke-virtual {p0, p2}, Li1/c0;->w([I)V

    const/16 p2, 0xdd

    .line 13
    iget p4, p0, Li1/c0;->p:I

    invoke-static {p2, p4}, Lm1/c;->e(II)I

    const/16 p2, 0xde

    .line 14
    iget p4, p0, Li1/c0;->q:I

    invoke-static {p2, p4}, Lm1/c;->e(II)I

    new-array p2, v0, [I

    aput v6, p2, v5

    aput p3, p2, v2

    .line 15
    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    goto/16 :goto_4

    .line 16
    :cond_6
    iget p3, p0, Li1/c0;->l:I

    if-eq p3, v2, :cond_7

    goto/16 :goto_4

    .line 17
    :cond_7
    aget p2, p2, v2

    .line 18
    iget p3, p0, Li1/c0;->o:I

    if-eq p2, p3, :cond_11

    .line 19
    iput p2, p0, Li1/c0;->o:I

    .line 20
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result p2

    .line 21
    iget p3, p0, Li1/c0;->o:I

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result p3

    .line 22
    iget v3, p0, Li1/c0;->o:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    const/4 v4, 0x7

    new-array v4, v4, [I

    aput v6, v4, v5

    aput p2, v4, v2

    aput p3, v4, v0

    aput v3, v4, p4

    aput p2, v4, v6

    aput p3, v4, v1

    const/4 p2, 0x6

    aput v3, v4, p2

    .line 23
    invoke-virtual {p0, v4}, Li1/c0;->w([I)V

    const/16 p2, 0xdc

    .line 24
    iget p3, p0, Li1/c0;->o:I

    invoke-static {p2, p3}, Lm1/c;->e(II)I

    new-array p2, v0, [I

    aput p4, p2, v5

    .line 25
    iget p3, p0, Li1/c0;->o:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    goto/16 :goto_4

    .line 26
    :cond_8
    iget p3, p0, Li1/c0;->l:I

    if-eq p3, v2, :cond_9

    goto/16 :goto_4

    .line 27
    :cond_9
    aget p3, p2, v2

    if-ltz p3, :cond_a

    aget p3, p2, v2

    if-gt p3, v3, :cond_a

    aget v4, p2, v2

    .line 28
    :cond_a
    iget p2, p0, Li1/c0;->n:I

    if-eq v4, p2, :cond_11

    .line 29
    iput v4, p0, Li1/c0;->n:I

    new-array p2, p4, [I

    aput v0, p2, v5

    aput v4, p2, v2

    aput v4, p2, v0

    .line 30
    invoke-virtual {p0, p2}, Li1/c0;->w([I)V

    const/16 p2, 0xdb

    .line 31
    iget p3, p0, Li1/c0;->n:I

    invoke-static {p2, p3}, Lm1/c;->e(II)I

    new-array p2, v0, [I

    aput v0, p2, v5

    .line 32
    iget p3, p0, Li1/c0;->n:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    goto/16 :goto_4

    .line 33
    :cond_b
    iget p3, p0, Li1/c0;->l:I

    if-eq p3, v2, :cond_c

    goto :goto_4

    .line 34
    :cond_c
    aget p3, p2, v2

    if-ltz p3, :cond_d

    aget p3, p2, v2

    if-gt p3, v1, :cond_d

    aget p2, p2, v2

    goto :goto_1

    :cond_d
    move p2, v5

    .line 35
    :goto_1
    iget p3, p0, Li1/c0;->m:I

    if-eq p2, p3, :cond_11

    .line 36
    iput p2, p0, Li1/c0;->m:I

    new-array p3, p4, [I

    aput p4, p3, v5

    aput p2, p3, v2

    aput p2, p3, v0

    .line 37
    invoke-virtual {p0, p3}, Li1/c0;->w([I)V

    const/16 p2, 0xda

    .line 38
    iget p3, p0, Li1/c0;->m:I

    invoke-static {p2, p3}, Lm1/c;->e(II)I

    new-array p2, v0, [I

    aput v2, p2, v5

    .line 39
    iget p3, p0, Li1/c0;->m:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    goto :goto_4

    .line 40
    :cond_e
    aget p3, p2, v2

    if-ne p3, v2, :cond_f

    aget p2, p2, v2

    goto :goto_2

    :cond_f
    move p2, v5

    .line 41
    :goto_2
    iget p3, p0, Li1/c0;->l:I

    if-eq p2, p3, :cond_11

    .line 42
    iput p2, p0, Li1/c0;->l:I

    if-ne p2, v2, :cond_10

    new-array p2, p4, [I

    .line 43
    fill-array-data p2, :array_0

    invoke-virtual {p0, p2}, Li1/c0;->w([I)V

    goto :goto_3

    :cond_10
    new-array p2, p4, [I

    .line 44
    fill-array-data p2, :array_1

    invoke-virtual {p0, p2}, Li1/c0;->w([I)V

    :goto_3
    const/16 p2, 0xd9

    .line 45
    iget p3, p0, Li1/c0;->l:I

    invoke-static {p2, p3}, Lm1/c;->e(II)I

    new-array p2, v0, [I

    aput v5, p2, v5

    .line 46
    iget p3, p0, Li1/c0;->l:I

    aput p3, p2, v2

    invoke-virtual {p0, p1, p2}, Li1/s;->r(I[I)V

    :cond_11
    :goto_4
    return v2

    .line 47
    :cond_12
    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Li1/s;->j(I[I[F[Ljava/lang/String;)Z

    move-result p1

    return p1

    :array_0
    .array-data 4
        0x2
        0x42
        0x42
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public l([I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  SnnavLed onHandle data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p(Ly/b;II)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v3, v2, [I

    aput v1, v3, v1

    .line 1
    iget v4, p0, Li1/c0;->l:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 2
    iget v4, p0, Li1/c0;->m:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 3
    iget v4, p0, Li1/c0;->n:I

    aput v4, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v2, [I

    const/4 v4, 0x3

    aput v4, v3, v1

    .line 4
    iget v5, p0, Li1/c0;->o:I

    aput v5, v3, v0

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    new-array v3, v4, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    .line 5
    iget v1, p0, Li1/c0;->q:I

    aput v1, v3, v0

    iget v1, p0, Li1/c0;->p:I

    aput v1, v3, v2

    invoke-static {p1, p2, v3}, Lo1/x;->v(Ly/b;I[I)V

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-super {p0, p1, p2, p3}, Li1/s;->p(Ly/b;II)Z

    move-result v0

    :goto_1
    return v0
.end method

.method public varargs w([I)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    .line 1
    :cond_0
    array-length v1, p1

    :goto_0
    if-nez v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v2, v1, 0x4

    .line 2
    new-array v3, v2, [I

    const/16 v4, 0x55

    .line 3
    aput v4, v3, v0

    const/4 v4, 0x1

    .line 4
    aput v1, v3, v4

    .line 5
    aget v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    move v5, v0

    :goto_1
    if-ge v5, v1, :cond_2

    .line 6
    aget v6, p1, v5

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v4, v6

    add-int/lit8 v6, v5, 0x2

    .line 7
    aget v7, p1, v5

    aput v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p1, v1, 0x2

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    and-int/lit16 v4, v4, 0xff

    .line 8
    aput v4, v3, p1

    add-int/lit8 v1, v1, 0x3

    const/16 p1, 0xaa

    .line 9
    aput p1, v3, v1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============  PluginWLLeds write serial:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v0, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p1, v3}, Lb/c$b;->f([I)V

    const-wide/16 v0, 0x14

    .line 13
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    .line 14
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    invoke-virtual {p1, v3}, Lb/c$b;->f([I)V

    :cond_3
    return-void
.end method

.class public Li1/v;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/v$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/v$e;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Ljava/lang/String;

.field public final l:Z

.field public final m:Ljava/lang/Runnable;

.field public final n:Ljava/lang/Runnable;

.field public final o:Ljava/lang/Runnable;

.field public final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const-string p1, "XiaoFD"

    .line 2
    iput-object p1, p0, Li1/v;->k:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Li1/v;->l:Z

    .line 4
    new-instance p2, Li1/v$a;

    invoke-direct {p2, p0}, Li1/v$a;-><init>(Li1/v;)V

    iput-object p2, p0, Li1/v;->m:Ljava/lang/Runnable;

    .line 5
    new-instance p2, Li1/v$b;

    invoke-direct {p2, p0}, Li1/v$b;-><init>(Li1/v;)V

    iput-object p2, p0, Li1/v;->n:Ljava/lang/Runnable;

    .line 6
    new-instance p2, Li1/v$c;

    invoke-direct {p2, p0}, Li1/v$c;-><init>(Li1/v;)V

    iput-object p2, p0, Li1/v;->o:Ljava/lang/Runnable;

    .line 7
    new-instance p2, Li1/v$d;

    invoke-direct {p2, p0}, Li1/v$d;-><init>(Li1/v;)V

    iput-object p2, p0, Li1/v;->p:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Li1/v$e;

    invoke-direct {v0, p0}, Li1/v$e;-><init>(Li1/v;)V

    iput-object v0, p0, Li1/s;->a:Li1/e;

    .line 9
    invoke-virtual {v0}, Li1/e;->h()V

    .line 10
    invoke-virtual {p0}, Li1/a;->v()V

    .line 11
    sget-object v0, Lu0/c;->m:Lo1/y;

    invoke-virtual {v0, p2, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public static synthetic w(Li1/v;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Li1/v;->x(II)V

    return-void
.end method


# virtual methods
.method public l([I)V
    .locals 13

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XiaoFD onHandle DATA : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Device"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v2, p0, Li1/s;->a:Li1/e;

    check-cast v2, Li1/v$e;

    iget-object v2, v2, Li1/e;->d:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_8

    .line 3
    aget v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v4, 0x9

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v4, :cond_4

    const/16 v4, 0x22

    const/16 v7, 0x1b

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v2, v4, :cond_2

    const/16 v4, 0x23

    if-eq v2, v4, :cond_0

    goto/16 :goto_0

    .line 4
    :cond_0
    aget v2, p1, v6

    aget v11, p1, v5

    aget v10, p1, v10

    aget v9, p1, v9

    const/4 v12, 0x1

    aget v0, p1, v8

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v7, :cond_1

    move v3, v6

    :cond_1
    move-object v4, p0

    move v5, v2

    move v6, v11

    move v7, v10

    move v8, v9

    move v9, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Li1/v;->y(IIIIZZ)V

    goto :goto_0

    .line 5
    :cond_2
    aget v2, p1, v6

    aget v11, p1, v5

    aget v10, p1, v10

    aget v9, p1, v9

    const/4 v12, 0x0

    aget v0, p1, v8

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v7, :cond_3

    move v3, v6

    :cond_3
    move-object v4, p0

    move v5, v2

    move v6, v11

    move v7, v10

    move v8, v9

    move v9, v12

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Li1/v;->y(IIIIZZ)V

    goto :goto_0

    .line 6
    :cond_4
    aget v2, p1, v6

    const/16 v4, 0xf1

    if-ne v2, v4, :cond_8

    .line 7
    aget v0, p1, v5

    if-eqz v0, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2, v6}, Lu0/i;->m4(IZ)V

    goto :goto_0

    .line 9
    :cond_6
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v6}, Lu0/i;->m4(IZ)V

    goto :goto_0

    .line 10
    :cond_7
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-virtual {v0, v2, v3}, Lu0/i;->m4(IZ)V

    :cond_8
    :goto_0
    return-void
.end method

.method public o([B)V
    .locals 6

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p1, v2

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2
    iget-object v3, p0, Li1/a;->h:Li1/b0;

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xff

    aput v5, v4, v1

    invoke-virtual {v3, v4}, Lb/c$b;->f([I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final x(II)V
    .locals 5

    and-int/lit16 p2, p2, 0xff

    const/16 v0, 0xa

    const/4 v1, 0x1

    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    sub-int/2addr p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-gez p2, :cond_1

    return-void

    .line 1
    :cond_1
    sget v2, Lu0/b;->G:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {}, Lk0/qt;->k0()Z

    move-result v2

    if-nez v2, :cond_2

    new-array p2, v1, [I

    aput v0, p2, v4

    .line 2
    invoke-static {p1, p2}, Lu0/d;->I3(I[I)V

    .line 3
    sget-object p2, Lu0/c;->R:Lo1/z;

    new-array v2, v3, [I

    aput p1, v2, v4

    aput v0, v2, v1

    invoke-virtual {p2, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v1, [I

    aput p2, v0, v4

    .line 4
    invoke-static {p1, v0}, Lu0/d;->I3(I[I)V

    .line 5
    sget-object v0, Lu0/c;->R:Lo1/z;

    new-array v2, v3, [I

    aput p1, v2, v4

    aput p2, v2, v1

    invoke-virtual {v0, v2}, Lo1/z;->c(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final y(IIIIZZ)V
    .locals 2

    if-eqz p5, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    const/4 v1, 0x0

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p3, v1

    .line 1
    :goto_1
    invoke-virtual {p0, v0, p3}, Li1/v;->x(II)V

    if-eqz p5, :cond_2

    const/16 p3, 0xf

    goto :goto_2

    :cond_2
    const/16 p3, 0x13

    :goto_2
    if-eqz p6, :cond_3

    goto :goto_3

    :cond_3
    move p2, v1

    .line 2
    :goto_3
    invoke-virtual {p0, p3, p2}, Li1/v;->x(II)V

    if-eqz p5, :cond_4

    const/16 p2, 0x11

    goto :goto_4

    :cond_4
    const/16 p2, 0x15

    :goto_4
    if-eqz p6, :cond_5

    goto :goto_5

    :cond_5
    move p4, v1

    .line 3
    :goto_5
    invoke-virtual {p0, p2, p4}, Li1/v;->x(II)V

    if-eqz p5, :cond_6

    const/16 p2, 0xe

    goto :goto_6

    :cond_6
    const/16 p2, 0x12

    :goto_6
    if-eqz p6, :cond_7

    goto :goto_7

    :cond_7
    move p1, v1

    .line 4
    :goto_7
    invoke-virtual {p0, p2, p1}, Li1/v;->x(II)V

    return-void
.end method

.method public varargs z([I)V
    .locals 6

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
    add-int/lit8 v2, v1, 0x2

    .line 2
    new-array v2, v2, [I

    const/16 v3, 0x2e

    .line 3
    aput v3, v2, v0

    move v3, v0

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_2

    .line 4
    aget v5, p1, v3

    add-int/2addr v4, v5

    add-int/lit8 v5, v3, 0x1

    .line 5
    aget v3, p1, v3

    aput v3, v2, v5

    move v3, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    xor-int/lit16 v3, v4, 0xff

    .line 6
    aput v3, v2, v1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==============  PluginCommon360_817 write serial:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    invoke-static {p1, v0, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Device"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p1, p0, Li1/a;->h:Li1/b0;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lb/c$b;->f([I)V

    :cond_3
    return-void
.end method

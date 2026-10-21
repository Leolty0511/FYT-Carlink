.class public Li1/k;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/k$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/k$c;",
        ">;"
    }
.end annotation


# instance fields
.field public k:I

.field public final l:Ljava/lang/Runnable;

.field public m:I

.field public n:I

.field public o:[[I

.field public p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/16 p1, 0xff

    .line 2
    iput p1, p0, Li1/k;->k:I

    .line 3
    new-instance p1, Li1/k$a;

    invoke-direct {p1, p0}, Li1/k$a;-><init>(Li1/k;)V

    iput-object p1, p0, Li1/k;->l:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Li1/k;->n:I

    const/16 v0, 0x19

    new-array v0, v0, [[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_0

    aput-object v2, v0, p2

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v3, 0x8

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v3, 0xa

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v3, 0xb

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v3, 0xd

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v3, 0xe

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v3, 0xf

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v3, 0x10

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v3, 0x11

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v3, 0x12

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v3, 0x13

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v3, 0x14

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v3, 0x15

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v3, 0x16

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v3, 0x17

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_18

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iput-object v0, p0, Li1/k;->o:[[I

    .line 6
    new-instance v0, Li1/k$b;

    invoke-direct {v0, p0}, Li1/k$b;-><init>(Li1/k;)V

    iput-object v0, p0, Li1/k;->p:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Li1/k$c;

    invoke-direct {v0, p0}, Li1/k$c;-><init>(Li1/k;)V

    iput-object v0, p0, Li1/s;->a:Li1/e;

    .line 8
    invoke-virtual {v0}, Li1/e;->h()V

    .line 9
    sget-object v0, Lu0/c;->z:Lo1/y;

    invoke-virtual {v0, p1, p2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    const-string p1, "LG"

    const-string p2, "PluginBBAKeyLZH"

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x8
    .end array-data

    :array_2
    .array-data 4
        0x3
        0x51
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x50
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x12
    .end array-data

    :array_5
    .array-data 4
        0x6
        0xc
    .end array-data

    :array_6
    .array-data 4
        0x7
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x8
        0x5
    .end array-data

    :array_8
    .array-data 4
        0x9
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xa
        0x15
    .end array-data

    :array_a
    .array-data 4
        0xb
        0xd
    .end array-data

    :array_b
    .array-data 4
        0xc
        0x12
    .end array-data

    :array_c
    .array-data 4
        0xd
        -0x1
    .end array-data

    :array_d
    .array-data 4
        0xe
        -0x1
    .end array-data

    :array_e
    .array-data 4
        0xf
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x10
        0xb
    .end array-data

    :array_10
    .array-data 4
        0x11
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x12
        0x37
    .end array-data

    :array_12
    .array-data 4
        0x13
        0x6
    .end array-data

    :array_13
    .array-data 4
        0x14
        0x52
    .end array-data

    :array_14
    .array-data 4
        0x15
        0x24
    .end array-data

    :array_15
    .array-data 4
        0x16
        0x19
    .end array-data

    :array_16
    .array-data 4
        0x17
        0x26
    .end array-data

    :array_17
    .array-data 4
        0x18
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x19
        -0x1
    .end array-data
.end method


# virtual methods
.method public l([I)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget v4, p1, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, "55  pannel data[0]:%2X "

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v4, " data[1]:%2X "

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget v5, p1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v5, "data[2]:%2X"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Device"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    aget v0, p1, v3

    const/16 v2, 0x21

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    aget v0, p1, v1

    .line 4
    aget p1, p1, v4

    and-int/lit16 v0, v0, 0xff

    .line 5
    iput v0, p0, Li1/k;->n:I

    move v0, v3

    .line 6
    :goto_0
    iget-object v2, p0, Li1/k;->o:[[I

    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 7
    iget v4, p0, Li1/k;->n:I

    aget-object v5, v2, v0

    aget v5, v5, v3

    if-ne v4, v5, :cond_1

    if-eqz v4, :cond_2

    .line 8
    iput v0, p0, Li1/k;->m:I

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_3

    .line 9
    array-length p1, v2

    if-ge v0, p1, :cond_4

    .line 10
    aget-object p1, v2, v0

    aget p1, p1, v1

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 11
    :cond_3
    array-length p1, v2

    if-gt v0, p1, :cond_4

    .line 12
    iget p1, p0, Li1/k;->m:I

    aget-object p1, v2, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    :cond_4
    :goto_2
    return-void
.end method

.method public varargs w([I)V
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

    const-string v3, "PluginBBAKeyLZH write serial:"

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

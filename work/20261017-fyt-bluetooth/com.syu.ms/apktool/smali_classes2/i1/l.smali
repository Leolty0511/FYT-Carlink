.class public Li1/l;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/l$a;",
        ">;"
    }
.end annotation


# instance fields
.field public k:I

.field public l:I

.field public m:[[I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Li1/l;->l:I

    const/16 p2, 0x11

    new-array p2, p2, [[I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_0

    aput-object v1, p2, p1

    new-array p1, v0, [I

    fill-array-data p1, :array_1

    const/4 v1, 0x1

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_2

    aput-object p1, p2, v0

    new-array p1, v0, [I

    fill-array-data p1, :array_3

    const/4 v1, 0x3

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_4

    const/4 v1, 0x4

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_5

    const/4 v1, 0x5

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_6

    const/4 v1, 0x6

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_7

    const/4 v1, 0x7

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_8

    const/16 v1, 0x8

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_9

    const/16 v1, 0x9

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_a

    const/16 v1, 0xa

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_b

    const/16 v1, 0xb

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_c

    const/16 v1, 0xc

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_d

    const/16 v1, 0xd

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_e

    const/16 v1, 0xe

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_f

    const/16 v1, 0xf

    aput-object p1, p2, v1

    new-array p1, v0, [I

    fill-array-data p1, :array_10

    const/16 v0, 0x10

    aput-object p1, p2, v0

    iput-object p2, p0, Li1/l;->m:[[I

    .line 4
    new-instance p1, Li1/l$a;

    invoke-direct {p1, p0}, Li1/l$a;-><init>(Li1/l;)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 5
    invoke-virtual {p1}, Li1/e;->h()V

    return-void

    nop

    :array_0
    .array-data 4
        0x10
        0x15
    .end array-data

    :array_1
    .array-data 4
        0x1e
        0x12
    .end array-data

    :array_2
    .array-data 4
        0x1f
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x23
        0xc
    .end array-data

    :array_4
    .array-data 4
        0x26
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x40
        0x7
    .end array-data

    :array_6
    .array-data 4
        0x41
        0x8
    .end array-data

    :array_7
    .array-data 4
        0x42
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x43
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x44
        -0x1
    .end array-data

    :array_a
    .array-data 4
        0x45
        0x4f
    .end array-data

    :array_b
    .array-data 4
        0x46
        0x9
    .end array-data

    :array_c
    .array-data 4
        0x47
        0x6
    .end array-data

    :array_d
    .array-data 4
        0x49
        0x4
    .end array-data

    :array_e
    .array-data 4
        0x4b
        0x5
    .end array-data

    :array_f
    .array-data 4
        0x4d
        0x1d
    .end array-data

    :array_10
    .array-data 4
        0x4e
        -0x1
    .end array-data
.end method


# virtual methods
.method public l([I)V
    .locals 9

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

    const-string v4, "22  pannel data[0]:%2X "

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

    if-eq v0, v4, :cond_1

    const/16 v5, 0x12

    if-eq v0, v5, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    aget v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    .line 4
    aget v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    const/4 v6, 0x3

    aget v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v4, v6

    const/4 v6, 0x4

    .line 5
    aget v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v5

    const/4 v7, 0x5

    aget v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v6, v7

    const/4 v7, 0x6

    .line 6
    aget v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v5

    const/4 v8, 0x7

    aget v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    .line 7
    aget v8, p1, v5

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v5, v8, 0x8

    const/16 v8, 0x9

    aget p1, p1, v8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v5

    .line 8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v3

    const-string v0, "touch state =%2X "

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, " x1=%2X "

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, " y1=%2X"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v4, " x2=%2X"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, " y2=%2X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 9
    :cond_1
    aget v0, p1, v1

    .line 10
    aget p1, p1, v4

    and-int/lit16 v0, v0, 0xff

    .line 11
    iput v0, p0, Li1/l;->l:I

    move v0, v3

    .line 12
    :goto_0
    iget-object v2, p0, Li1/l;->m:[[I

    array-length v4, v2

    if-ge v0, v4, :cond_3

    .line 13
    iget v4, p0, Li1/l;->l:I

    aget-object v5, v2, v0

    aget v5, v5, v3

    if-ne v4, v5, :cond_2

    if-eqz v4, :cond_3

    .line 14
    iput v0, p0, Li1/l;->k:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    and-int/lit16 p1, p1, 0xff

    if-eqz p1, :cond_4

    .line 15
    array-length p1, v2

    if-ge v0, p1, :cond_5

    .line 16
    aget-object p1, v2, v0

    aget p1, p1, v1

    invoke-static {p1, v3}, Ll0/b0;->l0(II)V

    goto :goto_2

    .line 17
    :cond_4
    array-length p1, v2

    if-gt v0, p1, :cond_5

    .line 18
    iget p1, p0, Li1/l;->k:I

    aget-object p1, v2, p1

    aget p1, p1, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    :cond_5
    :goto_2
    return-void
.end method

.class public Lk0/rt;
.super Lbase/b;
.source "SourceFile"


# static fields
.field public static k:Lk0/rt;


# instance fields
.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lk0/lt;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lbase/b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lk0/rt;->g:Z

    .line 3
    iput-boolean v0, p0, Lk0/rt;->h:Z

    .line 4
    iput-boolean v0, p0, Lk0/rt;->i:Z

    .line 5
    iget-object v1, p0, Lbase/b;->f:Lo1/x;

    const-string v2, "Canbus-TRAN"

    invoke-virtual {v1, v2}, Lo1/x;->n(Ljava/lang/String;)V

    const-string v1, "sys.persist.keydirect"

    .line 6
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lk0/nt;->p:I

    return-void
.end method

.method public static declared-synchronized a3()Lk0/rt;
    .locals 2

    const-class v0, Lk0/rt;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lk0/rt;->k:Lk0/rt;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lk0/rt;

    invoke-direct {v1}, Lk0/rt;-><init>()V

    sput-object v1, Lk0/rt;->k:Lk0/rt;

    .line 3
    :cond_0
    sget-object v1, Lk0/rt;->k:Lk0/rt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 1

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lk0/rt;->j:Lk0/lt;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lk0/lt;->M1(I[I[F[Ljava/lang/String;)Ly/f;

    move-result-object p1

    return-object p1

    :cond_0
    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p2, p1}, Lk0/rt;->d3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    aget p3, p2, p1

    if-ltz p3, :cond_2

    aget p3, p2, p1

    if-ge p3, v0, :cond_2

    .line 4
    new-instance p3, Ly/f;

    sget-object p4, Lk0/nt;->c0:[I

    aget p1, p2, p1

    aget p1, p4, p1

    invoke-direct {p3, p1}, Ly/f;-><init>(I)V

    return-object p3

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public N2(I[I[F[Ljava/lang/String;)V
    .locals 11

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_1d

    const/16 v0, 0x3f9

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x3fa

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/16 v6, 0x10

    packed-switch p1, :pswitch_data_1

    const/16 v7, 0x8f

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_8

    .line 1
    :pswitch_0
    aget p1, p2, v1

    if-nez p1, :cond_1e

    const/16 p1, 0x3f4

    new-array p2, v2, [I

    aput v1, p2, v1

    .line 2
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_8

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2, p4}, Lk0/rt;->c3([I[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 4
    :pswitch_2
    aget p1, p2, v1

    sput p1, Lu0/b;->w1:I

    goto/16 :goto_8

    .line 5
    :pswitch_3
    sget p1, Ln0/j4;->b:I

    if-eq p1, v7, :cond_1

    .line 6
    array-length p1, p2

    new-array p3, p1, [B

    move p4, v1

    .line 7
    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_0

    .line 8
    aget v0, p2, p4

    int-to-byte v0, v0

    aput-byte v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p3}, Lz/k;->q([B)V

    .line 10
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    sget-object p4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WR duduOK OBD---->: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1, p1}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    if-eqz p2, :cond_1e

    .line 11
    array-length p1, p2

    if-lez p1, :cond_1e

    .line 12
    array-length p1, p2

    add-int/2addr p1, v2

    .line 13
    new-array p3, p1, [I

    const/16 p4, 0xf0

    .line 14
    aput p4, p3, v1

    :goto_1
    if-ge v2, p1, :cond_2

    add-int/lit8 p4, v2, -0x1

    .line 15
    aget p4, p2, p4

    aput p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_2
    sget-object p2, Lz/a;->b:Lo1/e0;

    invoke-static {p3}, Lz/k;->b([I)[B

    move-result-object p4

    invoke-virtual {p2, p4}, Lo1/e0;->i([B)V

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    sget-object p4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WR ds OK ---->: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1, p1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 18
    :pswitch_4
    invoke-static {p2, p3, p4}, Lu0/d;->y2([I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 19
    :pswitch_5
    sget v3, Ln0/j4;->b:I

    if-eq v3, v7, :cond_3

    .line 20
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 21
    :cond_3
    aget v1, p2, v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 23
    :cond_4
    aget p1, p2, v2

    if-eq p1, v2, :cond_a

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_6

    const/16 p2, 0xff

    if-eq p1, p2, :cond_5

    goto/16 :goto_8

    .line 24
    :cond_5
    sget-object p1, Lk0/nt;->f:[Lo1/x;

    const/16 p2, 0x41f

    new-array p3, v4, [I

    fill-array-data p3, :array_0

    invoke-static {p1, p2, p3, v0, v0}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 25
    :cond_6
    aget p1, p2, v5

    if-ne p1, v2, :cond_7

    const/16 p1, 0xf

    .line 26
    invoke-virtual {p0, p1}, Lk0/rt;->X2(I)V

    goto/16 :goto_8

    .line 27
    :cond_7
    aget p1, p2, v5

    if-ne p1, v5, :cond_1e

    .line 28
    invoke-virtual {p0, v6}, Lk0/rt;->X2(I)V

    goto/16 :goto_8

    .line 29
    :cond_8
    aget p1, p2, v5

    if-ne p1, v2, :cond_9

    const/16 p1, 0xd

    .line 30
    invoke-virtual {p0, p1}, Lk0/rt;->X2(I)V

    goto/16 :goto_8

    .line 31
    :cond_9
    aget p1, p2, v5

    if-ne p1, v5, :cond_1e

    const/16 p1, 0xe

    .line 32
    invoke-virtual {p0, p1}, Lk0/rt;->X2(I)V

    goto/16 :goto_8

    .line 33
    :cond_a
    aget p1, p2, v5

    if-ne p1, v2, :cond_b

    const/16 p1, 0xb

    .line 34
    invoke-virtual {p0, p1}, Lk0/rt;->X2(I)V

    goto/16 :goto_8

    .line 35
    :cond_b
    aget p1, p2, v5

    if-ne p1, v5, :cond_1e

    const/16 p1, 0xc

    .line 36
    invoke-virtual {p0, p1}, Lk0/rt;->X2(I)V

    goto/16 :goto_8

    .line 37
    :pswitch_6
    aget p1, p2, v1

    sput p1, Lu0/b;->v1:I

    goto/16 :goto_8

    .line 38
    :pswitch_7
    aget p1, p2, v1

    sput p1, Lu0/b;->u1:I

    goto/16 :goto_8

    :pswitch_8
    new-array p1, v5, [I

    aput v1, p1, v1

    .line 39
    aget p3, p2, v1

    shr-int/2addr p3, v1

    and-int/2addr p3, v2

    aput p3, p1, v2

    const/16 p3, 0x97

    invoke-static {p3, p1}, Lu0/d;->I3(I[I)V

    new-array p1, v5, [I

    aput v2, p1, v1

    .line 40
    aget p4, p2, v1

    shr-int/2addr p4, v2

    and-int/2addr p4, v2

    aput p4, p1, v2

    invoke-static {p3, p1}, Lu0/d;->I3(I[I)V

    new-array p1, v5, [I

    aput v5, p1, v1

    .line 41
    aget p4, p2, v1

    shr-int/2addr p4, v5

    and-int/2addr p4, v2

    aput p4, p1, v2

    invoke-static {p3, p1}, Lu0/d;->I3(I[I)V

    new-array p1, v5, [I

    aput v4, p1, v1

    .line 42
    aget p4, p2, v1

    shr-int/2addr p4, v4

    and-int/2addr p4, v2

    aput p4, p1, v2

    invoke-static {p3, p1}, Lu0/d;->I3(I[I)V

    new-array p1, v5, [I

    const/4 p4, 0x4

    aput p4, p1, v1

    .line 43
    aget v7, p2, v1

    shr-int/2addr v7, p4

    and-int/2addr v7, v2

    aput v7, p1, v2

    invoke-static {p3, p1}, Lu0/d;->I3(I[I)V

    new-array p1, v5, [I

    const/4 v7, 0x5

    aput v7, p1, v1

    .line 44
    aget v8, p2, v1

    shr-int/2addr v8, v7

    and-int/2addr v8, v2

    aput v8, p1, v2

    invoke-static {p3, p1}, Lu0/d;->I3(I[I)V

    .line 45
    aget p1, p2, v1

    shr-int/2addr p1, v1

    and-int/2addr p1, v2

    .line 46
    aget p3, p2, v1

    shr-int/2addr p3, v2

    and-int/2addr p3, v2

    .line 47
    aget v8, p2, v1

    shr-int/2addr v8, v5

    and-int/2addr v8, v2

    .line 48
    aget v9, p2, v1

    shr-int/2addr v9, v4

    and-int/2addr v9, v2

    .line 49
    aget v10, p2, v1

    shr-int/2addr v10, p4

    and-int/2addr v10, v2

    .line 50
    aget p2, p2, v1

    shr-int/2addr p2, v7

    and-int/2addr p2, v2

    shl-int/lit8 v9, v9, 0x7

    and-int/lit16 v9, v9, 0x80

    shl-int/2addr v8, v3

    and-int/lit8 v8, v8, 0x40

    or-int/2addr v8, v9

    shl-int/2addr p2, v7

    and-int/lit8 p2, p2, 0x20

    or-int/2addr p2, v8

    shl-int/lit8 v7, v10, 0x4

    and-int/2addr v6, v7

    or-int/2addr p2, v6

    shl-int/2addr p3, v4

    and-int/lit8 p3, p3, 0x8

    or-int/2addr p2, p3

    shl-int/2addr p1, v5

    and-int/2addr p1, p4

    or-int/2addr p1, p2

    const/16 p2, 0x419

    new-array p3, v5, [I

    aput v3, p3, v1

    aput p1, p3, v2

    .line 51
    invoke-static {p2, p3, v0, v0}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_9
    if-eqz p2, :cond_1e

    .line 52
    array-length p1, p2

    if-le p1, v2, :cond_1e

    .line 53
    sget-object p1, Ll0/z;->a:Ll0/a;

    if-eqz p1, :cond_1e

    .line 54
    invoke-virtual {p1, p2}, Ll0/a;->f([I)V

    goto/16 :goto_8

    .line 55
    :pswitch_a
    invoke-virtual {p0, p2, p4}, Lk0/rt;->b3([I[Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_b
    if-eqz p2, :cond_1e

    .line 56
    array-length p1, p2

    if-le p1, v2, :cond_1e

    .line 57
    aget p1, p2, v1

    aget p2, p2, v2

    invoke-static {p1, p2}, Ll0/b0;->l0(II)V

    goto/16 :goto_8

    :pswitch_c
    if-eqz p2, :cond_1e

    .line 58
    array-length p1, p2

    if-lez p1, :cond_1e

    .line 59
    array-length p1, p2

    add-int/2addr p1, v2

    .line 60
    new-array p3, p1, [I

    .line 61
    aput v6, p3, v1

    :goto_2
    if-ge v2, p1, :cond_c

    add-int/lit8 p4, v2, -0x1

    .line 62
    aget p4, p2, p4

    aput p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 63
    :cond_c
    invoke-static {p3}, Lz/k;->s([I)V

    goto/16 :goto_8

    :pswitch_d
    if-eqz p2, :cond_1e

    .line 64
    array-length p1, p2

    if-lez p1, :cond_1e

    .line 65
    array-length p1, p2

    add-int/2addr p1, v2

    .line 66
    new-array p3, p1, [I

    const/16 p4, 0x91

    .line 67
    aput p4, p3, v1

    :goto_3
    if-ge v2, p1, :cond_d

    add-int/lit8 p4, v2, -0x1

    .line 68
    aget p4, p2, p4

    aput p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 69
    :cond_d
    invoke-static {p3}, Lz/k;->s([I)V

    goto/16 :goto_8

    .line 70
    :pswitch_e
    invoke-virtual {p0, p2, v2}, Lk0/rt;->d3([II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 71
    aget p1, p2, v1

    invoke-static {p1}, Lk0/qt;->t0(I)V

    goto/16 :goto_8

    .line 72
    :pswitch_f
    invoke-virtual {p0, p2, v2}, Lk0/rt;->d3([II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 73
    aget p1, p2, v1

    invoke-static {p1}, Lk0/qt;->M(I)V

    goto/16 :goto_8

    .line 74
    :pswitch_10
    invoke-virtual {p0, p2, v2}, Lk0/rt;->d3([II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 75
    aget p1, p2, v1

    invoke-static {p1}, Lk0/qt;->B(I)V

    goto/16 :goto_8

    .line 76
    :pswitch_11
    sget-boolean p1, Lu0/b;->T3:Z

    .line 77
    sget p1, Lk0/nt;->a:I

    sparse-switch p1, :sswitch_data_0

    if-eqz p2, :cond_1e

    .line 78
    array-length p1, p2

    if-lez p1, :cond_1e

    .line 79
    array-length p1, p2

    add-int/2addr p1, v2

    .line 80
    new-array p3, p1, [I

    const/16 p4, 0xe3

    .line 81
    aput p4, p3, v1

    goto :goto_6

    .line 82
    :sswitch_0
    array-length p1, p2

    new-array p1, p1, [B

    .line 83
    array-length p3, p2

    sub-int/2addr p3, v2

    :goto_4
    if-ge v1, p3, :cond_e

    .line 84
    aget p4, p2, v1

    int-to-byte p4, p4

    aput-byte p4, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 85
    :cond_e
    invoke-static {p1}, Lz/k;->q([B)V

    goto/16 :goto_8

    :sswitch_1
    if-eqz p2, :cond_1e

    .line 86
    array-length p1, p2

    if-lez p1, :cond_1e

    .line 87
    array-length p1, p2

    add-int/2addr p1, v2

    .line 88
    new-array p3, p1, [I

    const/16 p4, 0xe9

    .line 89
    aput p4, p3, v1

    :goto_5
    if-ge v2, p1, :cond_f

    add-int/lit8 p4, v2, -0x1

    .line 90
    aget p4, p2, p4

    aput p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 91
    :cond_f
    sget-object p2, Lz/a;->b:Lo1/e0;

    invoke-static {p3}, Lz/k;->b([I)[B

    move-result-object p4

    invoke-virtual {p2, p4}, Lo1/e0;->i([B)V

    .line 92
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    sget-object p4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WR duduOK canbus 0 ---->: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, v1, p1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_8

    :goto_6
    if-ge v2, p1, :cond_10

    add-int/lit8 p4, v2, -0x1

    .line 93
    aget p4, p2, p4

    aput p4, p3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 94
    :cond_10
    invoke-static {p3}, Lz/k;->s([I)V

    .line 95
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    sget-object p4, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WR duduOK ---->:canbusid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lk0/nt;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p3, v1, p1}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 96
    :pswitch_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_13
    const/16 p1, 0x3f3

    .line 97
    invoke-static {p1, v0, v0, v0}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 98
    :pswitch_14
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_15
    const/16 p1, 0x3f0

    .line 99
    invoke-static {p1, v0, v0, v0}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_8

    .line 100
    :pswitch_16
    invoke-virtual {p0, p2, v2}, Lk0/rt;->d3([II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 101
    aget p1, p2, v1

    invoke-static {p1}, Lk0/qt;->P(I)V

    goto/16 :goto_8

    .line 102
    :pswitch_17
    invoke-virtual {p0, p2, v2}, Lk0/rt;->d3([II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 103
    aget p1, p2, v1

    invoke-static {p1}, Lk0/qt;->K(I)V

    goto/16 :goto_8

    :cond_11
    if-eqz p2, :cond_1e

    .line 104
    array-length p1, p2

    if-le p1, v2, :cond_1e

    .line 105
    aget p1, p2, v1

    if-eqz p1, :cond_18

    if-eq p1, v2, :cond_16

    if-eq p1, v5, :cond_14

    if-eq p1, v4, :cond_12

    goto/16 :goto_8

    .line 106
    :cond_12
    aget p1, p2, v2

    if-eqz p1, :cond_13

    .line 107
    invoke-static {v2}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 108
    :cond_13
    invoke-static {v1}, Lk0/qt;->a(I)V

    goto/16 :goto_8

    .line 109
    :cond_14
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_1e

    .line 110
    aget p1, p2, v2

    if-eqz p1, :cond_15

    .line 111
    sget-object p1, La/b;->X:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 112
    sget-object p1, La/b;->Y:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto/16 :goto_8

    .line 113
    :cond_15
    sget-object p1, La/b;->X:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 114
    invoke-static {}, Lo1/u;->k()V

    .line 115
    invoke-static {v3, v1}, Lu0/d;->T3(II)V

    goto/16 :goto_8

    .line 116
    :cond_16
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_1e

    .line 117
    aget p1, p2, v2

    if-eqz p1, :cond_17

    .line 118
    sget-object p1, La/b;->V:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 119
    sget-object p1, La/b;->W:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_8

    .line 120
    :cond_17
    sget-object p1, La/b;->V:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 121
    invoke-static {}, Lo1/u;->k()V

    .line 122
    invoke-static {v3, v1}, Lu0/d;->T3(II)V

    goto :goto_8

    .line 123
    :cond_18
    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_1e

    .line 124
    aget p1, p2, v2

    if-eqz p1, :cond_19

    .line 125
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 126
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_8

    .line 127
    :cond_19
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 128
    invoke-static {}, Lk0/qt;->f()V

    goto :goto_8

    :cond_1a
    if-eqz p2, :cond_1e

    .line 129
    array-length p1, p2

    if-le p1, v2, :cond_1e

    .line 130
    aget p1, p2, v2

    if-le p1, v2, :cond_1c

    move p1, v1

    .line 131
    :goto_7
    aget p3, p2, v2

    if-ge p1, p3, :cond_1b

    .line 132
    aget p3, p2, v1

    invoke-static {p3, v2}, Ll0/b0;->l0(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 133
    :cond_1b
    aget p1, p2, v1

    invoke-static {p1, v1}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 134
    :cond_1c
    aget p1, p2, v1

    aget p2, p2, v2

    invoke-static {p1, p2}, Ll0/b0;->l0(II)V

    goto :goto_8

    .line 135
    :cond_1d
    invoke-virtual {p0, p1, p2, p3, p4}, Lk0/rt;->Y2(I[I[F[Ljava/lang/String;)V

    :cond_1e
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x405
        :pswitch_12
        :pswitch_9
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_12
        :pswitch_12
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2e012a -> :sswitch_0
        0x2f012a -> :sswitch_0
        0x3c012a -> :sswitch_0
        0x3d012a -> :sswitch_0
        0x40012a -> :sswitch_0
        0x49012a -> :sswitch_0
        0x4a012a -> :sswitch_0
        0x99012a -> :sswitch_0
        0x9a012a -> :sswitch_0
        0x9b012a -> :sswitch_0
        0x9c012a -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0x0
        0xff
        0x1
    .end array-data
.end method

.method public O2(I[I[F[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public P0(Ly/b;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->p(Ly/b;I)V

    if-ltz p2, :cond_1

    const/16 v0, 0x4b0

    if-ge p2, v0, :cond_1

    .line 2
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lk0/nt;->h:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->o(Lo1/x;Ly/b;I)V

    :cond_1
    return-void
.end method

.method public Q2(Lo1/h0;)V
    .locals 0

    return-void
.end method

.method public final X2(I)V
    .locals 13

    .line 1
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/4 v4, 0x1

    aput p1, v2, v4

    const/4 v5, 0x2

    aput v4, v2, v5

    const/16 v6, 0x41f

    const/4 v7, 0x0

    invoke-static {v0, v6, v2, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v8, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WR DS Air OK ---->:0 cmd = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "  touch = 0x01"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    const-wide/16 v11, 0xc8

    .line 3
    invoke-static {v11, v12}, La/i;->a0(J)V

    new-array v1, v1, [I

    aput v3, v1, v3

    aput p1, v1, v4

    aput v3, v1, v5

    .line 4
    invoke-static {v0, v6, v1, v7, v7}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  touch = 0x00"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lbase/b;->Y1(Ly/b;II)V

    .line 2
    iget-object v0, p0, Lbase/b;->f:Lo1/x;

    invoke-virtual {v0, p1, p2}, Lo1/x;->m(Ly/b;I)Z

    if-ltz p2, :cond_3

    const/16 v0, 0x4b0

    if-ge p2, v0, :cond_3

    .line 3
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    aget-object v1, v0, p2

    if-nez v1, :cond_2

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lk0/nt;->h:Lo1/x;

    aput-object v1, v0, p2

    .line 7
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lk0/nt;->h:Lo1/x;

    invoke-static {v0, p1, p2}, Lo1/x;->k(Lo1/x;Ly/b;I)V

    :cond_3
    if-nez p3, :cond_4

    return-void

    :cond_4
    const/16 v0, 0x3e8

    if-lt p2, v0, :cond_11

    const/16 v0, 0x3fd

    if-ne p2, v0, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 p3, 0x3ef

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, p3, :cond_10

    const/16 p3, 0x411

    if-eq p2, p3, :cond_f

    const/16 p3, 0x416

    if-eq p2, p3, :cond_e

    const/16 p3, 0x41b

    if-eq p2, p3, :cond_d

    const/16 p3, 0x41e

    if-eq p2, p3, :cond_c

    const/16 p3, 0x3f1

    if-eq p2, p3, :cond_b

    const/16 p3, 0x3f2

    if-eq p2, p3, :cond_a

    const/16 p3, 0x3f4

    if-eq p2, p3, :cond_9

    const/16 p3, 0x3f5

    if-eq p2, p3, :cond_8

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    goto/16 :goto_2

    .line 9
    :pswitch_0
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->O:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 10
    :pswitch_1
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->F:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 11
    :pswitch_2
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->N:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 12
    :pswitch_3
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->k:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 13
    :pswitch_4
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->l:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 14
    :pswitch_5
    iget-boolean p1, p0, Lk0/rt;->i:Z

    if-nez p1, :cond_12

    .line 15
    iput-boolean v0, p0, Lk0/rt;->i:Z

    goto/16 :goto_2

    .line 16
    :pswitch_6
    sget-object p3, Lk0/nt;->b0:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 17
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v1, Lk0/nt;->b0:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0, v1}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    goto/16 :goto_2

    .line 18
    :cond_6
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lk0/nt;->b0:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v1, v0}, Lo1/x;->E(Ly/b;IILjava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :pswitch_7
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->R:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 20
    :pswitch_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 21
    :pswitch_9
    iget-boolean p3, p0, Lk0/rt;->h:Z

    if-nez p3, :cond_7

    .line 22
    iput-boolean v0, p0, Lk0/rt;->h:Z

    .line 23
    :cond_7
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 24
    :pswitch_a
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->E:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 25
    :pswitch_b
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 26
    :pswitch_c
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->K:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 27
    :pswitch_d
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 28
    :pswitch_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    sget-object v0, Lk0/nt;->a0:Ljava/lang/String;

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->F(Ly/b;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 29
    :pswitch_f
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->A:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 30
    :pswitch_10
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->W:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 31
    :pswitch_11
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->S:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 32
    :pswitch_12
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->U:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 33
    :pswitch_13
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    const/16 v2, 0x40d

    new-array v3, v0, [I

    sget v4, Lk0/nt;->a:I

    invoke-static {v4}, Lk0/qt;->g(I)I

    move-result v4

    aput v4, v3, v1

    invoke-virtual {p3, p1, v2, v3}, Lo1/x;->G(Ly/b;I[I)V

    .line 34
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->a:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto/16 :goto_2

    .line 35
    :cond_8
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->P:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 36
    :cond_9
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->C:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 37
    :cond_a
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->Y:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 38
    :cond_b
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->D:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 39
    :cond_c
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->M:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 40
    :cond_d
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->J:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 41
    :cond_e
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->H:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 42
    :cond_f
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->G:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 43
    :cond_10
    iget-object p3, p0, Lbase/b;->f:Lo1/x;

    new-array v0, v0, [I

    sget v2, Lk0/nt;->B:I

    aput v2, v0, v1

    invoke-virtual {p3, p1, p2, v0}, Lo1/x;->G(Ly/b;I[I)V

    goto :goto_2

    .line 44
    :cond_11
    :goto_1
    iget-object v0, p0, Lk0/rt;->j:Lk0/lt;

    if-eqz v0, :cond_12

    .line 45
    invoke-virtual {v0, p1, p2, p3}, Lk0/lt;->Y1(Ly/b;II)V

    :cond_12
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f7
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3fe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x40a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Y2(I[I[F[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/rt;->j:Lk0/lt;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lk0/lt;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public Z2()Lk0/lt;
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/rt;->j:Lk0/lt;

    return-object v0
.end method

.method public final b3([I[Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lk0/rt;->d3([II)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    .line 2
    aget v2, p1, v1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_b

    .line 3
    :pswitch_0
    sget-boolean p2, Lu0/b;->C1:Z

    if-nez p2, :cond_11

    aget p1, p1, v0

    div-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Lu0/d;->v0(I)V

    goto/16 :goto_b

    .line 4
    :pswitch_1
    aget p2, p1, v0

    and-int/lit16 p2, p2, 0xff

    if-ne p2, v5, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    .line 5
    :goto_1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, v5, v2}, Lu0/i;->g4(IZ)V

    .line 6
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/16 v4, 0x2000

    invoke-virtual {v2, v4, p2}, Lu0/i;->g4(IZ)V

    const/16 p2, 0x8b

    new-array v2, v0, [I

    .line 7
    aget p1, p1, v0

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    aput v0, v2, v1

    invoke-static {p2, v2}, Lu0/d;->I3(I[I)V

    goto/16 :goto_b

    .line 8
    :pswitch_2
    aget p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    new-array p2, v5, [I

    aput v1, p2, v1

    shr-int/lit8 v2, p1, 0x2

    and-int/2addr v2, v0

    aput v2, p2, v0

    const/16 v2, 0x97

    .line 9
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    new-array p2, v5, [I

    aput v0, p2, v1

    shr-int/lit8 v6, p1, 0x3

    and-int/2addr v6, v0

    aput v6, p2, v0

    .line 10
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    new-array p2, v5, [I

    aput v5, p2, v1

    shr-int/lit8 v6, p1, 0x7

    and-int/2addr v6, v0

    aput v6, p2, v0

    .line 11
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    new-array p2, v5, [I

    aput v4, p2, v1

    shr-int/lit8 v4, p1, 0x6

    and-int/2addr v4, v0

    aput v4, p2, v0

    .line 12
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    new-array p2, v5, [I

    aput v3, p2, v1

    shr-int/lit8 v4, p1, 0x5

    and-int/2addr v4, v0

    aput v4, p2, v0

    .line 13
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    new-array p2, v5, [I

    const/4 v4, 0x5

    aput v4, p2, v1

    shr-int/2addr p1, v3

    and-int/2addr p1, v0

    aput p1, p2, v0

    .line 14
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    goto/16 :goto_b

    :pswitch_3
    const/16 p2, 0x3f5

    new-array v2, v0, [I

    .line 15
    aget p1, p1, v0

    aput p1, v2, v1

    invoke-static {p2, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_b

    .line 16
    :pswitch_4
    invoke-virtual {p0, p1, v4}, Lk0/rt;->d3([II)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 17
    aget p2, p1, v0

    if-eqz p2, :cond_7

    if-eq p2, v0, :cond_5

    if-eq p2, v5, :cond_3

    goto/16 :goto_b

    .line 18
    :cond_3
    aget p1, p1, v5

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-static {v0}, Lk0/qt;->T(I)V

    goto/16 :goto_b

    .line 19
    :cond_5
    aget p1, p1, v5

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    invoke-static {v0}, Lk0/qt;->U(I)V

    goto/16 :goto_b

    .line 20
    :cond_7
    aget p1, p1, v5

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    move v0, v1

    :goto_5
    invoke-static {v0}, Lk0/qt;->X(I)V

    goto/16 :goto_b

    :pswitch_5
    if-eqz p2, :cond_11

    .line 21
    array-length p1, p2

    if-lez p1, :cond_11

    .line 22
    aget-object p1, p2, v1

    invoke-static {p1}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 23
    :pswitch_6
    invoke-virtual {p0, p1, v4}, Lk0/rt;->d3([II)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 24
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p2

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rev TempOut =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v1, v4}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 25
    aget p2, p1, v0

    if-eqz p2, :cond_a

    if-eq p2, v0, :cond_9

    goto/16 :goto_b

    .line 26
    :cond_9
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->B3(I)V

    goto/16 :goto_b

    .line 27
    :cond_a
    aget p1, p1, v5

    if-eqz p1, :cond_b

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    invoke-static {v0}, Lk0/qt;->f0(I)V

    goto/16 :goto_b

    .line 28
    :pswitch_7
    invoke-virtual {p0, p1, v4}, Lk0/rt;->d3([II)Z

    move-result p2

    if-eqz p2, :cond_11

    .line 29
    aget p2, p1, v0

    packed-switch p2, :pswitch_data_1

    goto/16 :goto_b

    .line 30
    :pswitch_8
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->H2(I)V

    goto/16 :goto_b

    .line 31
    :pswitch_9
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->J2(I)V

    goto/16 :goto_b

    .line 32
    :pswitch_a
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->K2(I)V

    goto/16 :goto_b

    .line 33
    :pswitch_b
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->I2(I)V

    goto/16 :goto_b

    .line 34
    :pswitch_c
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->N2(I)V

    goto/16 :goto_b

    .line 35
    :pswitch_d
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->P2(I)V

    goto/16 :goto_b

    .line 36
    :pswitch_e
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->Q2(I)V

    goto/16 :goto_b

    .line 37
    :pswitch_f
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->O2(I)V

    goto/16 :goto_b

    .line 38
    :pswitch_10
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto/16 :goto_b

    .line 39
    :pswitch_11
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->T2(I)V

    goto/16 :goto_b

    .line 40
    :pswitch_12
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->S2(I)V

    goto/16 :goto_b

    .line 41
    :pswitch_13
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->R2(I)V

    goto/16 :goto_b

    .line 42
    :pswitch_14
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto/16 :goto_b

    .line 43
    :pswitch_15
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->F2(I)V

    goto/16 :goto_b

    .line 44
    :pswitch_16
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->E2(I)V

    goto/16 :goto_b

    .line 45
    :pswitch_17
    aget p1, p1, v5

    invoke-static {p1}, Lu0/d;->D2(I)V

    goto/16 :goto_b

    .line 46
    :pswitch_18
    aget p1, p1, v5

    if-eqz p1, :cond_c

    move p1, v0

    goto :goto_7

    :cond_c
    move p1, v1

    .line 47
    :goto_7
    sget p2, Lu0/b;->G:I

    const/16 v2, 0xd

    if-eqz p2, :cond_e

    .line 48
    invoke-static {}, Lo1/u;->i0()Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "persist.fyt.radar_click"

    .line 49
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    const-string p2, "persist.fyt.showfloatradar"

    .line 50
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, v0, :cond_d

    goto :goto_8

    :cond_d
    new-array p2, v0, [I

    aput p1, p2, v1

    .line 51
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    goto :goto_9

    :cond_e
    :goto_8
    new-array p2, v0, [I

    aput v1, p2, v1

    .line 52
    invoke-static {v2, p2}, Lu0/d;->I3(I[I)V

    .line 53
    :goto_9
    sget-object p2, Lu0/c;->R:Lo1/z;

    new-array v3, v5, [I

    aput v2, v3, v1

    aput p1, v3, v0

    invoke-virtual {p2, v3}, Lo1/z;->c(Ljava/lang/Object;)V

    goto :goto_b

    .line 54
    :pswitch_19
    invoke-virtual {p0, p1, v5}, Lk0/rt;->d3([II)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p2, "persist.fyt.track_angle_max"

    const/16 v2, 0x28

    .line 55
    invoke-static {p2, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_f

    goto :goto_a

    :cond_f
    move v2, p2

    :goto_a
    mul-int/lit8 p2, v2, 0x4

    .line 56
    aget p1, p1, v0

    .line 57
    sget v3, Lu0/b;->d1:I

    const/16 v6, 0x29

    if-ne v3, v0, :cond_10

    sub-int p1, p2, p1

    new-array v3, v4, [I

    aput p1, v3, v1

    aput p2, v3, v0

    mul-int/2addr v2, v5

    aput v2, v3, v5

    .line 58
    invoke-static {v6, v3}, Lu0/d;->I3(I[I)V

    goto :goto_b

    :cond_10
    new-array v3, v4, [I

    aput p1, v3, v1

    aput p2, v3, v0

    mul-int/2addr v2, v5

    aput v2, v3, v5

    .line 59
    invoke-static {v6, v3}, Lu0/d;->I3(I[I)V

    :cond_11
    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final c3([I[Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p1

    const/4 v1, 0x1

    move-object/from16 v2, p0

    .line 1
    invoke-virtual {v2, v0, v1}, Lk0/rt;->d3([II)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    .line 2
    aget v4, v0, v3

    const/16 v5, 0x25

    const/16 v7, 0xf

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/16 v15, 0x419

    const/4 v6, 0x7

    const/16 v16, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 3
    :pswitch_1
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v6, v9, [I

    aput v5, v6, v3

    aget v3, v0, v1

    aput v3, v6, v1

    aget v1, v0, v14

    aput v1, v6, v14

    aget v0, v0, v10

    aput v0, v6, v10

    invoke-static {v4, v15, v6, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    new-array v4, v9, [I

    const/16 v5, 0x68

    aput v5, v4, v3

    .line 4
    aget v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    aput v3, v4, v1

    aget v1, v0, v14

    and-int/lit16 v1, v1, 0xff

    aput v1, v4, v14

    aget v0, v0, v10

    and-int/lit16 v0, v0, 0xff

    aput v0, v4, v10

    invoke-static {v4}, Lz/k;->s([I)V

    goto/16 :goto_1

    .line 5
    :pswitch_3
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v7, [I

    const/16 v7, 0x23

    aput v7, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v14

    aput v1, v5, v14

    aget v1, v0, v10

    aput v1, v5, v10

    aget v1, v0, v9

    aput v1, v5, v9

    aget v1, v0, v8

    aput v1, v5, v8

    aget v1, v0, v16

    aput v1, v5, v16

    aget v1, v0, v6

    aput v1, v5, v6

    aget v1, v0, v12

    aput v1, v5, v12

    aget v1, v0, v11

    aput v1, v5, v11

    const/16 v1, 0xa

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xb

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xc

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xd

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xe

    aget v0, v0, v1

    aput v0, v5, v1

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6
    :pswitch_4
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v7, [I

    const/16 v7, 0x22

    aput v7, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v14

    aput v1, v5, v14

    aget v1, v0, v10

    aput v1, v5, v10

    aget v1, v0, v9

    aput v1, v5, v9

    aget v1, v0, v8

    aput v1, v5, v8

    aget v1, v0, v16

    aput v1, v5, v16

    aget v1, v0, v6

    aput v1, v5, v6

    aget v1, v0, v12

    aput v1, v5, v12

    aget v1, v0, v11

    aput v1, v5, v11

    const/16 v1, 0xa

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xb

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xc

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xd

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xe

    aget v0, v0, v1

    aput v0, v5, v1

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 7
    :pswitch_5
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0x17

    new-array v5, v5, [I

    const/16 v17, 0x21

    aput v17, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v14

    aput v1, v5, v14

    aget v1, v0, v10

    aput v1, v5, v10

    aget v1, v0, v9

    aput v1, v5, v9

    aget v1, v0, v8

    aput v1, v5, v8

    aget v1, v0, v16

    aput v1, v5, v16

    aget v1, v0, v6

    aput v1, v5, v6

    aget v1, v0, v12

    aput v1, v5, v12

    aget v1, v0, v11

    aput v1, v5, v11

    const/16 v1, 0xa

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xb

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xc

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xd

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xe

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v7

    aput v1, v5, v7

    const/16 v1, 0x10

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0x11

    const/16 v3, 0x11

    aget v3, v0, v3

    aput v3, v5, v1

    const/16 v1, 0x12

    const/16 v3, 0x12

    aget v3, v0, v3

    aput v3, v5, v1

    const/16 v1, 0x13

    const/16 v3, 0x13

    aget v3, v0, v3

    aput v3, v5, v1

    const/16 v1, 0x14

    const/16 v3, 0x14

    aget v3, v0, v3

    aput v3, v5, v1

    const/16 v1, 0x15

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0x16

    const/16 v3, 0x16

    aget v0, v0, v3

    aput v0, v5, v1

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8
    :pswitch_6
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v6, [I

    const/16 v6, 0x20

    aput v6, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v14

    aput v1, v5, v14

    aget v1, v0, v10

    aput v1, v5, v10

    aget v1, v0, v9

    aput v1, v5, v9

    aget v1, v0, v8

    aput v1, v5, v8

    aget v0, v0, v16

    aput v0, v5, v16

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9
    :pswitch_7
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    const/16 v5, 0xe

    new-array v5, v5, [I

    const/16 v7, 0x1f

    aput v7, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v14

    aput v1, v5, v14

    aget v1, v0, v10

    aput v1, v5, v10

    aget v1, v0, v9

    aput v1, v5, v9

    aget v1, v0, v8

    aput v1, v5, v8

    aget v1, v0, v16

    aput v1, v5, v16

    aget v1, v0, v6

    aput v1, v5, v6

    aget v1, v0, v12

    aput v1, v5, v12

    aget v1, v0, v11

    aput v1, v5, v11

    const/16 v1, 0xa

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xb

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xc

    aget v3, v0, v1

    aput v3, v5, v1

    const/16 v1, 0xd

    aget v0, v0, v1

    aput v0, v5, v1

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 10
    :pswitch_8
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v8, [I

    const/16 v6, 0x1e

    aput v6, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v1, v0, v14

    aput v1, v5, v14

    aget v1, v0, v10

    aput v1, v5, v10

    aget v0, v0, v9

    aput v0, v5, v9

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 11
    :pswitch_9
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v14, [I

    aput v9, v5, v3

    aget v0, v0, v1

    aput v0, v5, v1

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 12
    :pswitch_a
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v10, [I

    const/16 v6, 0xb

    aput v6, v5, v3

    aget v3, v0, v1

    aput v3, v5, v1

    aget v0, v0, v14

    aput v0, v5, v14

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 13
    :pswitch_b
    new-instance v3, Ljava/lang/String;

    aget v1, v0, v1

    invoke-direct {v3, v0, v14, v1}, Ljava/lang/String;-><init>([III)V

    invoke-static {v3}, Lk0/qt;->L(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 14
    :pswitch_c
    aget v0, v0, v1

    invoke-static {v0}, Lk0/qt;->a(I)V

    goto :goto_1

    .line 15
    :pswitch_d
    sget-object v4, Lk0/nt;->f:[Lo1/x;

    new-array v5, v14, [I

    const/16 v6, 0x1d

    aput v6, v5, v3

    aget v0, v0, v1

    aput v0, v5, v1

    invoke-static {v4, v15, v5, v13, v13}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    goto :goto_1

    :pswitch_e
    new-array v4, v1, [I

    .line 16
    aget v7, v0, v1

    shr-int/lit8 v6, v7, 0x7

    and-int/2addr v6, v1

    aput v6, v4, v3

    const/16 v6, 0xa

    invoke-static {v6, v4}, Lk0/qt;->y0(I[I)V

    new-array v4, v1, [I

    .line 17
    aget v6, v0, v1

    shr-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v1

    aput v6, v4, v3

    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const-string v4, "persist.fyt.reversetemp"

    .line 18
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    new-array v5, v1, [I

    .line 19
    aget v6, v0, v10

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1c

    new-array v5, v1, [I

    .line 20
    aget v6, v0, v14

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x1b

    new-array v5, v1, [I

    .line 21
    aget v6, v0, v14

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x1c

    new-array v5, v1, [I

    .line 22
    aget v6, v0, v10

    aput v6, v5, v3

    invoke-static {v4, v5}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v4, v1, [I

    .line 23
    aget v5, v0, v9

    aput v5, v4, v3

    const/16 v5, 0x15

    invoke-static {v5, v4}, Lk0/qt;->y0(I[I)V

    const/16 v4, 0x4f

    new-array v1, v1, [I

    .line 24
    aget v0, v0, v8

    aput v0, v1, v3

    invoke-static {v4, v1}, Lk0/qt;->y0(I[I)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d3([II)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    array-length p1, p1

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public e3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk0/rt;->i:Z

    return v0
.end method

.method public f3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk0/rt;->h:Z

    return v0
.end method

.method public g3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk0/rt;->g:Z

    return v0
.end method

.method public h3(Lk0/lt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rt;->j:Lk0/lt;

    return-void
.end method

.method public i3(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk0/rt;->g:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lk0/rt;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    sput p1, Lk0/nt;->i:I

    :cond_0
    return-void
.end method

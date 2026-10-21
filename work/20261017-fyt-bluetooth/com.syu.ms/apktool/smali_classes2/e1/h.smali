.class public Le1/h;
.super Le1/c;
.source "SourceFile"


# static fields
.field public static Q:Le1/h;


# instance fields
.field public final A:I

.field public B:J

.field public C:J

.field public D:J

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:J

.field public I:J

.field public J:Ljava/lang/String;

.field public K:Z

.field public L:Z

.field public final M:Ljava/lang/Runnable;

.field public final N:Ljava/lang/Runnable;

.field public O:J

.field public final P:Ljava/lang/Runnable;

.field public final x:Z

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 3

    .line 22
    invoke-direct {p0, p1}, Le1/c;-><init>(Landroid/os/Handler;)V

    const/4 p1, 0x0

    .line 23
    iput-boolean p1, p0, Le1/h;->x:Z

    const/16 v0, 0x3e8

    .line 24
    iput v0, p0, Le1/h;->y:I

    const/4 v0, 0x3

    .line 25
    iput v0, p0, Le1/h;->z:I

    const/16 v0, 0xa

    .line 26
    iput v0, p0, Le1/h;->A:I

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Le1/h;->B:J

    .line 28
    iput-wide v0, p0, Le1/h;->C:J

    iput-wide v0, p0, Le1/h;->D:J

    .line 29
    iput-boolean p1, p0, Le1/h;->E:Z

    .line 30
    iput-boolean p1, p0, Le1/h;->F:Z

    .line 31
    iput-boolean p1, p0, Le1/h;->G:Z

    .line 32
    iput-wide v0, p0, Le1/h;->H:J

    .line 33
    iput-wide v0, p0, Le1/h;->I:J

    const/4 v2, 0x0

    .line 34
    iput-object v2, p0, Le1/h;->J:Ljava/lang/String;

    .line 35
    iput-boolean p1, p0, Le1/h;->K:Z

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Le1/h;->L:Z

    .line 37
    new-instance p1, Le1/h$a;

    invoke-direct {p1, p0}, Le1/h$a;-><init>(Le1/h;)V

    iput-object p1, p0, Le1/h;->M:Ljava/lang/Runnable;

    .line 38
    new-instance p1, Le1/h$b;

    invoke-direct {p1, p0}, Le1/h$b;-><init>(Le1/h;)V

    iput-object p1, p0, Le1/h;->N:Ljava/lang/Runnable;

    .line 39
    iput-wide v0, p0, Le1/h;->O:J

    .line 40
    new-instance p1, Le1/h$c;

    invoke-direct {p1, p0}, Le1/h$c;-><init>(Le1/h;)V

    iput-object p1, p0, Le1/h;->P:Ljava/lang/Runnable;

    const/4 p1, 0x2

    .line 41
    iput p1, p0, Le1/c;->f:I

    sput p1, Lu0/b;->s4:I

    .line 42
    sput-object p0, Le1/h;->Q:Le1/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le1/c;-><init>(Ljava/lang/String;ILandroid/os/Handler;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Le1/h;->x:Z

    const/16 p2, 0x3e8

    .line 3
    iput p2, p0, Le1/h;->y:I

    const/4 p2, 0x3

    .line 4
    iput p2, p0, Le1/h;->z:I

    const/16 p2, 0xa

    .line 5
    iput p2, p0, Le1/h;->A:I

    const-wide/16 p2, 0x0

    .line 6
    iput-wide p2, p0, Le1/h;->B:J

    .line 7
    iput-wide p2, p0, Le1/h;->C:J

    iput-wide p2, p0, Le1/h;->D:J

    .line 8
    iput-boolean p1, p0, Le1/h;->E:Z

    .line 9
    iput-boolean p1, p0, Le1/h;->F:Z

    .line 10
    iput-boolean p1, p0, Le1/h;->G:Z

    .line 11
    iput-wide p2, p0, Le1/h;->H:J

    .line 12
    iput-wide p2, p0, Le1/h;->I:J

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Le1/h;->J:Ljava/lang/String;

    .line 14
    iput-boolean p1, p0, Le1/h;->K:Z

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Le1/h;->L:Z

    .line 16
    new-instance p1, Le1/h$a;

    invoke-direct {p1, p0}, Le1/h$a;-><init>(Le1/h;)V

    iput-object p1, p0, Le1/h;->M:Ljava/lang/Runnable;

    .line 17
    new-instance p1, Le1/h$b;

    invoke-direct {p1, p0}, Le1/h$b;-><init>(Le1/h;)V

    iput-object p1, p0, Le1/h;->N:Ljava/lang/Runnable;

    .line 18
    iput-wide p2, p0, Le1/h;->O:J

    .line 19
    new-instance p1, Le1/h$c;

    invoke-direct {p1, p0}, Le1/h$c;-><init>(Le1/h;)V

    iput-object p1, p0, Le1/h;->P:Ljava/lang/Runnable;

    const/4 p1, 0x2

    .line 20
    iput p1, p0, Le1/c;->f:I

    sput p1, Lu0/b;->s4:I

    .line 21
    sput-object p0, Le1/h;->Q:Le1/h;

    return-void
.end method


# virtual methods
.method public D(II)I
    .locals 1

    .line 1
    iget v0, p0, Le1/c;->p:I

    invoke-virtual {p0, v0, p1, p2}, Le1/h;->E(III)I

    move-result p1

    return p1
.end method

.method public E(III)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Le1/c;->o:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p2, v2, v3

    new-array p2, v1, [I

    aput p3, p2, v3

    invoke-virtual {v0, p1, v2, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public F()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0x80

    .line 1
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0xee

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0x5a

    const/16 v1, 0x82

    .line 3
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v2, 0x86

    .line 4
    invoke-virtual {p0, v0, v2}, Le1/h;->D(II)I

    .line 5
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v2, 0x5b

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x5c

    .line 7
    invoke-virtual {p0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x5d

    .line 8
    invoke-virtual {p0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x83

    .line 9
    invoke-virtual {p0, v0, v2}, Le1/h;->D(II)I

    .line 10
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const-wide/16 v0, 0x3e8

    .line 11
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    return-void
.end method

.method public G()Z
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0x80

    .line 1
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v1, 0xee

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p0, v1, v2}, Le1/h;->D(II)I

    const/16 v1, 0xa0

    .line 3
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Le1/h;->s(I)I

    move-result v1

    .line 5
    invoke-virtual {p0, v2}, Le1/h;->s(I)I

    move-result v3

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    const/16 v3, 0x1605

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public H()V
    .locals 4

    const/16 v0, 0xff

    const/16 v1, 0x80

    .line 1
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0xee

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0x5a

    const/16 v1, 0x82

    .line 3
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    const/16 v2, 0x5e

    const/16 v3, 0xc0

    .line 4
    invoke-virtual {p0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x58

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x59

    const/16 v3, 0x51

    .line 6
    invoke-virtual {p0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x92

    .line 7
    invoke-virtual {p0, v0, v2}, Le1/h;->D(II)I

    .line 8
    invoke-virtual {p0, v0, v1}, Le1/h;->D(II)I

    return-void
.end method

.method public I(II)[I
    .locals 5

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Le1/c;->m:Lo1/n;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Le1/c;->m:Lo1/n;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Le1/c;->o:Z

    if-eqz v3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p0, Le1/c;->p:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    invoke-virtual {v2, p2, v1, v4, v3}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    array-length p2, p1

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    aget p2, p1, v4

    .line 6
    :cond_3
    :goto_0
    monitor-exit v0

    return-object p1

    .line 7
    :cond_4
    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public J(I)V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "Keys"

    const-string v2, "*****************start readFirmware******************"

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xff

    const/16 v3, 0x80

    .line 2
    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    const/16 v4, 0xee

    const/4 v5, 0x1

    .line 3
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/16 v4, 0x90

    .line 4
    invoke-virtual {v0, v2, v4}, Le1/h;->D(II)I

    const/4 v4, 0x2

    .line 5
    invoke-virtual {v0, v4}, Le1/h;->s(I)I

    move-result v6

    and-int/lit16 v6, v6, 0xdf

    .line 6
    invoke-virtual {v0, v4, v6}, Le1/h;->D(II)I

    or-int/lit8 v6, v6, 0x20

    .line 7
    invoke-virtual {v0, v4, v6}, Le1/h;->D(II)I

    .line 8
    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    const/16 v2, 0x5a

    const/16 v3, 0x86

    .line 9
    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    const/16 v3, 0x82

    .line 10
    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 11
    fill-array-data v6, :array_0

    const-wide/16 v7, 0x0

    long-to-int v9, v7

    const/4 v10, 0x0

    aput v9, v6, v10

    long-to-int v9, v7

    aput v9, v6, v5

    long-to-int v9, v7

    aput v9, v6, v4

    .line 12
    div-int/lit8 v9, p1, 0x10

    .line 13
    rem-int/lit8 v11, p1, 0x10

    if-eqz v11, :cond_0

    add-int/lit8 v9, v9, 0x1

    :cond_0
    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_2

    const/16 v12, 0x5e

    const/16 v13, 0x6f

    .line 14
    invoke-virtual {v0, v12, v13}, Le1/h;->D(II)I

    const/16 v12, 0xa2

    .line 15
    invoke-virtual {v0, v2, v12}, Le1/h;->D(II)I

    .line 16
    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    const/16 v12, 0x5b

    .line 17
    aget v13, v6, v10

    invoke-virtual {v0, v12, v13}, Le1/h;->D(II)I

    const/16 v12, 0x5c

    .line 18
    aget v13, v6, v5

    invoke-virtual {v0, v12, v13}, Le1/h;->D(II)I

    const/16 v12, 0x5d

    .line 19
    aget v13, v6, v4

    invoke-virtual {v0, v12, v13}, Le1/h;->D(II)I

    const/16 v12, 0x92

    .line 20
    invoke-virtual {v0, v2, v12}, Le1/h;->D(II)I

    .line 21
    invoke-virtual {v0, v2, v3}, Le1/h;->D(II)I

    const/16 v12, 0x58

    .line 22
    invoke-virtual {v0, v12, v5}, Le1/h;->D(II)I

    mul-int/lit8 v12, v11, 0x10

    sub-int v12, p1, v12

    const/16 v13, 0x10

    if-ge v12, v13, :cond_1

    goto :goto_1

    :cond_1
    move v12, v13

    :goto_1
    const/16 v14, 0x5f

    .line 23
    invoke-virtual {v0, v14, v12}, Le1/h;->I(II)[I

    move-result-object v14

    .line 24
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v2, v10

    const-string v3, "Read Page:%04d   "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14, v10, v12}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, v12

    add-long/2addr v7, v2

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, v7

    shr-long/2addr v2, v13

    long-to-int v2, v2

    aput v2, v6, v10

    const-wide/32 v2, 0xff00

    and-long/2addr v2, v7

    const/16 v12, 0x8

    shr-long/2addr v2, v12

    long-to-int v2, v2

    aput v2, v6, v5

    const-wide/16 v2, 0xff

    and-long/2addr v2, v7

    long-to-int v2, v2

    aput v2, v6, v4

    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0x5a

    const/16 v3, 0x82

    goto/16 :goto_0

    :cond_2
    const-string v2, "*****************END readFirmware******************"

    .line 25
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public K()[I
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "Keys"

    const-string v2, "*****************start readKeys******************"

    .line 1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x11e

    new-array v3, v3, [I

    const/16 v4, 0xff

    const/16 v5, 0x80

    .line 2
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/16 v6, 0xee

    const/4 v7, 0x1

    .line 3
    invoke-virtual {v0, v6, v7}, Le1/h;->D(II)I

    const/16 v6, 0x90

    .line 4
    invoke-virtual {v0, v4, v6}, Le1/h;->D(II)I

    const/4 v6, 0x2

    .line 5
    invoke-virtual {v0, v6}, Le1/h;->s(I)I

    move-result v8

    and-int/lit16 v8, v8, 0xdf

    .line 6
    invoke-virtual {v0, v6, v8}, Le1/h;->D(II)I

    or-int/lit8 v8, v8, 0x20

    .line 7
    invoke-virtual {v0, v6, v8}, Le1/h;->D(II)I

    .line 8
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/16 v4, 0x5a

    const/16 v5, 0x86

    .line 9
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/16 v5, 0x82

    .line 10
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/4 v8, 0x3

    new-array v8, v8, [I

    .line 11
    fill-array-data v8, :array_0

    const-wide/16 v9, 0x0

    long-to-int v11, v9

    const/4 v12, 0x0

    aput v11, v8, v12

    const-wide/16 v13, 0x60

    long-to-int v11, v13

    aput v11, v8, v7

    long-to-int v9, v9

    aput v9, v8, v6

    const-wide/16 v9, 0x6000

    move v11, v12

    :goto_0
    const/16 v13, 0x12

    if-ge v11, v13, :cond_1

    const/16 v13, 0x5e

    const/16 v14, 0x6f

    .line 12
    invoke-virtual {v0, v13, v14}, Le1/h;->D(II)I

    const/16 v13, 0xa2

    .line 13
    invoke-virtual {v0, v4, v13}, Le1/h;->D(II)I

    .line 14
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/16 v13, 0x5b

    .line 15
    aget v14, v8, v12

    invoke-virtual {v0, v13, v14}, Le1/h;->D(II)I

    const/16 v13, 0x5c

    .line 16
    aget v14, v8, v7

    invoke-virtual {v0, v13, v14}, Le1/h;->D(II)I

    const/16 v13, 0x5d

    .line 17
    aget v14, v8, v6

    invoke-virtual {v0, v13, v14}, Le1/h;->D(II)I

    const/16 v13, 0x92

    .line 18
    invoke-virtual {v0, v4, v13}, Le1/h;->D(II)I

    .line 19
    invoke-virtual {v0, v4, v5}, Le1/h;->D(II)I

    const/16 v13, 0x58

    .line 20
    invoke-virtual {v0, v13, v7}, Le1/h;->D(II)I

    mul-int/lit8 v13, v11, 0x10

    rsub-int v14, v13, 0x11e

    const/16 v15, 0x10

    if-ge v14, v15, :cond_0

    goto :goto_1

    :cond_0
    move v14, v15

    :goto_1
    const/16 v4, 0x5f

    .line 21
    invoke-virtual {v0, v4, v14}, Le1/h;->I(II)[I

    move-result-object v4

    .line 22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v12

    const-string v7, "Read Page:%04d   "

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v12, v14}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v4, v12, v3, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v4, v14

    add-long/2addr v9, v4

    const-wide/32 v4, 0xff0000

    and-long/2addr v4, v9

    shr-long/2addr v4, v15

    long-to-int v4, v4

    aput v4, v8, v12

    const-wide/32 v4, 0xff00

    and-long/2addr v4, v9

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    long-to-int v4, v4

    const/4 v5, 0x1

    aput v4, v8, v5

    const-wide/16 v6, 0xff

    and-long/2addr v6, v9

    long-to-int v4, v6

    const/4 v6, 0x2

    aput v4, v8, v6

    add-int/lit8 v11, v11, 0x1

    move v7, v5

    const/16 v4, 0x5a

    const/16 v5, 0x82

    goto/16 :goto_0

    .line 24
    :cond_1
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public L(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Le1/h;->L:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Le1/h;->L:Z

    :cond_0
    return-void
.end method

.method public M(II[III)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    array-length v0, p3

    add-int v2, p4, p5

    const/4 v3, 0x0

    if-gt v2, v0, :cond_1

    .line 3
    invoke-static {p3, p4, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p3

    goto :goto_0

    :cond_1
    const/16 v2, 0xff

    .line 4
    invoke-static {p5, v2}, Lo1/s0;->q(II)[I

    move-result-object p5

    sub-int/2addr v0, p4

    .line 5
    invoke-static {p3, p4, p5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p3, p5

    .line 6
    :goto_0
    invoke-static {p3, v1}, Lo1/s0;->h([II)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Write:  "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p5, p3

    invoke-static {p3, v3, p5}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Keys"

    invoke-static {p5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_2
    iget-object p4, p0, Le1/c;->m:Lo1/n;

    if-eqz p4, :cond_4

    iget-boolean p5, p0, Le1/c;->o:Z

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    new-array p5, v1, [I

    aput p2, p5, v3

    invoke-virtual {p4, p1, p5, p3}, Lo1/n;->d(I[I[I)I

    move-result p1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p1, -0x1

    :goto_2
    return p1
.end method

.method public N([I)V
    .locals 24

    move-object/from16 v6, p0

    const-string v7, "Keys"

    const-string v0, "*****************start writeFirmware******************"

    .line 1
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff

    const/16 v1, 0x80

    .line 2
    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v2, 0xee

    const/4 v8, 0x1

    .line 3
    invoke-virtual {v6, v2, v8}, Le1/h;->D(II)I

    const/16 v2, 0x90

    .line 4
    invoke-virtual {v6, v0, v2}, Le1/h;->D(II)I

    const/4 v9, 0x2

    .line 5
    invoke-virtual {v6, v9}, Le1/h;->s(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xdf

    .line 6
    invoke-virtual {v6, v9, v2}, Le1/h;->D(II)I

    or-int/lit8 v2, v2, 0x20

    .line 7
    invoke-virtual {v6, v9, v2}, Le1/h;->D(II)I

    .line 8
    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v10, 0x5a

    const/16 v11, 0x86

    .line 9
    invoke-virtual {v6, v10, v11}, Le1/h;->D(II)I

    const/16 v12, 0x82

    .line 10
    invoke-virtual {v6, v10, v12}, Le1/h;->D(II)I

    const/4 v0, 0x3

    new-array v13, v0, [I

    .line 11
    fill-array-data v13, :array_0

    move-object/from16 v14, p1

    .line 12
    array-length v15, v14

    .line 13
    div-int/lit8 v0, v15, 0x10

    .line 14
    rem-int/lit8 v1, v15, 0x10

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    move v5, v0

    const/16 v16, 0x0

    const-wide/16 v0, 0x0

    move-wide/from16 v17, v0

    move/from16 v3, v16

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    .line 15
    invoke-virtual {v6, v10, v11}, Le1/h;->D(II)I

    .line 16
    invoke-virtual {v6, v10, v12}, Le1/h;->D(II)I

    const/16 v0, 0xef

    const/16 v2, 0x5e

    .line 17
    invoke-virtual {v6, v2, v0}, Le1/h;->D(II)I

    const/16 v0, 0xa2

    .line 18
    invoke-virtual {v6, v10, v0}, Le1/h;->D(II)I

    .line 19
    invoke-virtual {v6, v10, v12}, Le1/h;->D(II)I

    const/16 v0, 0x58

    .line 20
    invoke-virtual {v6, v0, v8}, Le1/h;->D(II)I

    .line 21
    iget v1, v6, Le1/c;->p:I

    const/16 v19, 0x59

    mul-int/lit8 v0, v4, 0x10

    const/16 v20, 0x10

    move/from16 v21, v0

    move-object/from16 v0, p0

    move v11, v2

    move/from16 v2, v19

    move v12, v3

    move-object/from16 v3, p1

    move/from16 v22, v4

    move/from16 v4, v21

    move/from16 v23, v5

    move/from16 v5, v20

    invoke-virtual/range {v0 .. v5}, Le1/h;->M(II[III)I

    if-ge v4, v15, :cond_1

    const/high16 v0, 0x42c80000    # 100.0f

    int-to-float v1, v15

    div-float/2addr v0, v1

    int-to-float v1, v4

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    :cond_1
    const/16 v0, 0x63

    :goto_1
    move v3, v0

    if-eq v12, v3, :cond_2

    const/16 v0, 0x8d

    new-array v1, v8, [I

    aput v3, v1, v16

    .line 22
    invoke-static {v0, v1}, Lu0/d;->I3(I[I)V

    goto :goto_2

    :cond_2
    move v3, v12

    :goto_2
    const/16 v0, 0x5b

    .line 23
    aget v1, v13, v16

    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0x5c

    .line 24
    aget v1, v13, v8

    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0x5d

    .line 25
    aget v1, v13, v9

    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0xe0

    .line 26
    invoke-virtual {v6, v11, v0}, Le1/h;->D(II)I

    const/16 v0, 0x92

    .line 27
    invoke-virtual {v6, v10, v0}, Le1/h;->D(II)I

    const/16 v0, 0x82

    .line 28
    invoke-virtual {v6, v10, v0}, Le1/h;->D(II)I

    const-wide/16 v0, 0x10

    add-long v17, v17, v0

    const-wide/32 v0, 0xff0000

    and-long v0, v17, v0

    const/16 v2, 0x10

    shr-long/2addr v0, v2

    long-to-int v0, v0

    aput v0, v13, v16

    const-wide/32 v0, 0xff00

    and-long v0, v17, v0

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    long-to-int v0, v0

    aput v0, v13, v8

    const-wide/16 v0, 0xff

    and-long v0, v17, v0

    long-to-int v0, v0

    aput v0, v13, v9

    add-int/lit8 v4, v22, 0x1

    move/from16 v5, v23

    const/16 v11, 0x86

    const/16 v12, 0x82

    goto/16 :goto_0

    :cond_3
    const-string v0, "*****************end writeFirmware******************"

    .line 29
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8a

    .line 30
    invoke-virtual {v6, v10, v0}, Le1/h;->D(II)I

    const/16 v0, 0x82

    .line 31
    invoke-virtual {v6, v10, v0}, Le1/h;->D(II)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public O([I)V
    .locals 23

    move-object/from16 v6, p0

    const-string v7, "Keys"

    const-string v8, "*****************END writeKey******************"

    .line 1
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xff

    const/16 v1, 0x80

    .line 2
    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v2, 0xee

    const/4 v9, 0x1

    .line 3
    invoke-virtual {v6, v2, v9}, Le1/h;->D(II)I

    const/16 v2, 0x90

    .line 4
    invoke-virtual {v6, v0, v2}, Le1/h;->D(II)I

    const/4 v10, 0x2

    .line 5
    invoke-virtual {v6, v10}, Le1/h;->s(I)I

    move-result v2

    and-int/lit16 v2, v2, 0xdf

    .line 6
    invoke-virtual {v6, v10, v2}, Le1/h;->D(II)I

    or-int/lit8 v2, v2, 0x20

    .line 7
    invoke-virtual {v6, v10, v2}, Le1/h;->D(II)I

    const/4 v2, 0x3

    new-array v11, v2, [I

    .line 8
    fill-array-data v11, :array_0

    .line 9
    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v12, 0x5a

    const/16 v13, 0x86

    .line 10
    invoke-virtual {v6, v12, v13}, Le1/h;->D(II)I

    const/16 v14, 0x82

    .line 11
    invoke-virtual {v6, v12, v14}, Le1/h;->D(II)I

    move-object/from16 v15, p1

    .line 12
    array-length v0, v15

    .line 13
    div-int/lit8 v1, v0, 0x10

    const/16 v16, 0x10

    .line 14
    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v5, v1

    const/16 v17, 0x0

    const-wide/16 v0, 0x6000

    move-wide/from16 v18, v0

    move/from16 v4, v17

    :goto_0
    if-ge v4, v5, :cond_1

    .line 15
    invoke-virtual {v6, v12, v13}, Le1/h;->D(II)I

    .line 16
    invoke-virtual {v6, v12, v14}, Le1/h;->D(II)I

    const/16 v0, 0xef

    const/16 v3, 0x5e

    .line 17
    invoke-virtual {v6, v3, v0}, Le1/h;->D(II)I

    const/16 v0, 0xa2

    .line 18
    invoke-virtual {v6, v12, v0}, Le1/h;->D(II)I

    .line 19
    invoke-virtual {v6, v12, v14}, Le1/h;->D(II)I

    const/16 v0, 0x58

    .line 20
    invoke-virtual {v6, v0, v9}, Le1/h;->D(II)I

    .line 21
    iget v1, v6, Le1/c;->p:I

    const/16 v2, 0x59

    mul-int/lit8 v0, v4, 0x10

    add-int v20, v17, v0

    const/16 v21, 0x10

    move-object/from16 v0, p0

    move v13, v3

    move-object/from16 v3, p1

    move/from16 v22, v4

    move/from16 v4, v20

    move/from16 v20, v5

    move/from16 v5, v21

    invoke-virtual/range {v0 .. v5}, Le1/h;->M(II[III)I

    const/16 v0, 0x5b

    .line 22
    aget v1, v11, v17

    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0x5c

    .line 23
    aget v1, v11, v9

    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0x5d

    .line 24
    aget v1, v11, v10

    invoke-virtual {v6, v0, v1}, Le1/h;->D(II)I

    const/16 v0, 0xe0

    .line 25
    invoke-virtual {v6, v13, v0}, Le1/h;->D(II)I

    const/16 v0, 0x92

    .line 26
    invoke-virtual {v6, v12, v0}, Le1/h;->D(II)I

    .line 27
    invoke-virtual {v6, v12, v14}, Le1/h;->D(II)I

    const-wide/16 v0, 0x10

    add-long v18, v18, v0

    const-wide/32 v0, 0xff0000

    and-long v0, v18, v0

    shr-long v0, v0, v16

    long-to-int v0, v0

    aput v0, v11, v17

    const-wide/32 v0, 0xff00

    and-long v0, v18, v0

    const/16 v2, 0x8

    shr-long/2addr v0, v2

    long-to-int v0, v0

    aput v0, v11, v9

    const-wide/16 v0, 0xff

    and-long v0, v18, v0

    long-to-int v0, v0

    aput v0, v11, v10

    add-int/lit8 v4, v22, 0x1

    move/from16 v5, v20

    const/16 v13, 0x86

    goto :goto_0

    :cond_1
    const/16 v0, 0x8a

    .line 28
    invoke-virtual {v6, v12, v0}, Le1/h;->D(II)I

    .line 29
    invoke-virtual {v6, v12, v14}, Le1/h;->D(II)I

    .line 30
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x60
        0x0
    .end array-data
.end method

.method public a()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Le1/h;->B:J

    .line 2
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Le1/h;->E:Z

    .line 4
    iput-boolean v0, p0, Le1/c;->r:Z

    .line 5
    iput v0, p0, Le1/c;->e:I

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Le1/c;->f:I

    return-void
.end method

.method public declared-synchronized c(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Le1/h;->E:Z

    .line 2
    invoke-super {p0, p1}, Le1/c;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public g(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Le1/h;->K:Z

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p2}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    iput-object p2, p0, Le1/h;->J:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Le1/c;->j:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 4
    iget-object p2, p0, Le1/h;->N:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object p1, p0, Le1/c;->j:Landroid/os/Handler;

    iget-object p2, p0, Le1/h;->N:Ljava/lang/Runnable;

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method public j()I
    .locals 6

    .line 1
    iget-boolean v0, p0, Le1/h;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 3
    iget-wide v2, p0, Le1/h;->B:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Le1/h;->B:J

    const-wide/16 v4, 0x32

    rem-long/2addr v2, v4

    .line 4
    invoke-virtual {p0, v1}, Le1/h;->p(I)I

    .line 5
    iget-boolean v0, p0, Le1/h;->L:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le1/h;->E:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public m()V
    .locals 3

    const-string v0, "sys.fyt.cvbs.needdeinterlace"

    const-string v1, ""

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0, v2}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    .line 3
    iput v0, p0, Le1/c;->f:I

    return-void
.end method

.method public p(I)I
    .locals 0

    const/4 p1, 0x2

    return p1
.end method

.method public r()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Le1/h;->O:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    .line 3
    iput-boolean v2, p0, Le1/h;->E:Z

    .line 4
    iput-wide v0, p0, Le1/h;->O:J

    .line 5
    iget-object v0, p0, Le1/c;->j:Landroid/os/Handler;

    new-instance v1, Le1/h$d;

    invoke-direct {v1, p0}, Le1/h$d;-><init>(Le1/h;)V

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public s(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Le1/c;->k()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v1}, Le1/h;->I(II)[I

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1
.end method

.method public t()V
    .locals 0

    .line 1
    invoke-super {p0}, Le1/c;->t()V

    return-void
.end method

.method public z()Z
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Le1/h;->M:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return v2
.end method

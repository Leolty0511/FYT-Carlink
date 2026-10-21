.class public Lz/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static D:I


# instance fields
.field public A:I

.field public B:Z

.field public C:J

.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lo1/k0;

.field public h:Lo1/q;

.field public i:Li1/h;

.field public final j:[I

.field public volatile k:I

.field public l:Lo1/q;

.field public m:I

.field public final n:[C

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:Ljava/lang/Runnable;

.field public t:Lo1/k0;

.field public u:Lo1/k0;

.field public v:Lo1/l0;

.field public w:Lo1/l0;

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lz/i;->a:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lz/i;->b:I

    .line 4
    iput v0, p0, Lz/i;->c:I

    .line 5
    iput v0, p0, Lz/i;->d:I

    .line 6
    iput v0, p0, Lz/i;->e:I

    .line 7
    iput v0, p0, Lz/i;->f:I

    .line 8
    new-instance v1, Lo1/k0;

    invoke-direct {v1}, Lo1/k0;-><init>()V

    iput-object v1, p0, Lz/i;->g:Lo1/k0;

    .line 9
    new-instance v1, Li1/h;

    invoke-direct {v1}, Li1/h;-><init>()V

    iput-object v1, p0, Lz/i;->i:Li1/h;

    const/16 v1, 0x200

    new-array v1, v1, [I

    .line 10
    iput-object v1, p0, Lz/i;->j:[I

    .line 11
    iput v0, p0, Lz/i;->k:I

    .line 12
    new-instance v1, Lz/i$a;

    invoke-direct {v1, p0}, Lz/i$a;-><init>(Lz/i;)V

    iput-object v1, p0, Lz/i;->l:Lo1/q;

    const/16 v1, 0x8

    new-array v1, v1, [C

    .line 13
    iput-object v1, p0, Lz/i;->n:[C

    .line 14
    new-instance v1, Lz/i$f;

    invoke-direct {v1, p0}, Lz/i$f;-><init>(Lz/i;)V

    iput-object v1, p0, Lz/i;->s:Ljava/lang/Runnable;

    .line 15
    new-instance v1, Lo1/k0;

    invoke-direct {v1}, Lo1/k0;-><init>()V

    iput-object v1, p0, Lz/i;->t:Lo1/k0;

    .line 16
    new-instance v1, Lo1/k0;

    invoke-direct {v1}, Lo1/k0;-><init>()V

    iput-object v1, p0, Lz/i;->u:Lo1/k0;

    .line 17
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lz/i;->v:Lo1/l0;

    .line 18
    new-instance v1, Lo1/l0;

    invoke-direct {v1}, Lo1/l0;-><init>()V

    iput-object v1, p0, Lz/i;->w:Lo1/l0;

    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lz/i;->A:I

    .line 20
    iput-boolean v0, p0, Lz/i;->B:Z

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lz/i;->C:J

    .line 22
    iget-object v0, p0, Lz/i;->i:Li1/h;

    invoke-virtual {v0}, Li1/e;->h()V

    return-void
.end method

.method public static synthetic a(Lz/i;I)I
    .locals 0

    .line 1
    iput p1, p0, Lz/i;->r:I

    return p1
.end method

.method public static synthetic c(Lz/i;)I
    .locals 1

    .line 1
    iget v0, p0, Lz/i;->r:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lz/i;->r:I

    return v0
.end method

.method public static p()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput v0, Lz/i;->D:I

    return-void
.end method


# virtual methods
.method public b([B)V
    .locals 7

    .line 1
    sget-boolean v0, Lu0/b;->D1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_f

    .line 2
    array-length v0, p1

    if-gtz v0, :cond_1

    goto/16 :goto_7

    .line 3
    :cond_1
    iget-object v0, p0, Lz/i;->l:Lo1/q;

    invoke-interface {v0, p1}, Lo1/q;->b([B)V

    .line 4
    iget v0, p0, Lz/i;->b:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 5
    iput v2, p0, Lz/i;->b:I

    .line 6
    iput v2, p0, Lz/i;->c:I

    .line 7
    iput v2, p0, Lz/i;->d:I

    .line 8
    :cond_2
    iget-object v0, p0, Lz/i;->a:[B

    iget v1, p0, Lz/i;->b:I

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v0, p0, Lz/i;->b:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lz/i;->b:I

    .line 10
    iget p1, p0, Lz/i;->d:I

    const/4 v1, 0x3

    const/4 v3, 0x4

    if-eqz p1, :cond_6

    if-lt p1, v0, :cond_3

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Lz/i;->a:[B

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    move v4, v1

    .line 12
    :goto_0
    iget v5, p0, Lz/i;->d:I

    if-ge v4, v5, :cond_4

    .line 13
    iget-object v5, p0, Lz/i;->a:[B

    aget-byte v5, v5, v4

    xor-int/2addr p1, v5

    int-to-byte p1, p1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_4
    iget-object v4, p0, Lz/i;->a:[B

    aget-byte v6, v4, v5

    if-ne p1, v6, :cond_5

    sub-int/2addr v5, v3

    .line 15
    invoke-virtual {p0, v4, v3, v5}, Lz/i;->f([BII)V

    .line 16
    iget p1, p0, Lz/i;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lz/i;->c:I

    goto :goto_1

    .line 17
    :cond_5
    iput v0, p0, Lz/i;->c:I

    .line 18
    :goto_1
    iput v2, p0, Lz/i;->d:I

    .line 19
    :cond_6
    iget p1, p0, Lz/i;->b:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lz/i;->c:I

    if-ge v0, p1, :cond_c

    .line 20
    iget-object v1, p0, Lz/i;->a:[B

    aget-byte v4, v1, v0

    const/16 v5, -0x78

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    const/16 v5, 0x55

    if-ne v4, v5, :cond_b

    add-int/lit8 v4, v0, 0x2

    .line 21
    aget-byte v4, v1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    iput v4, p0, Lz/i;->d:I

    const/16 v5, 0x200

    if-le v4, v5, :cond_7

    .line 22
    iput v2, p0, Lz/i;->d:I

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    .line 23
    iput v4, p0, Lz/i;->d:I

    .line 24
    iget v5, p0, Lz/i;->b:I

    if-lt v4, v5, :cond_8

    sub-int/2addr v4, v0

    .line 25
    iput v4, p0, Lz/i;->d:I

    goto :goto_6

    :cond_8
    add-int/lit8 v4, v0, 0x2

    .line 26
    aget-byte v1, v1, v4

    add-int/lit8 v0, v0, 0x3

    .line 27
    :goto_3
    iget v4, p0, Lz/i;->d:I

    if-ge v0, v4, :cond_9

    .line 28
    iget-object v4, p0, Lz/i;->a:[B

    aget-byte v4, v4, v0

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 29
    :cond_9
    iget-object v0, p0, Lz/i;->a:[B

    aget-byte v5, v0, v4

    if-ne v1, v5, :cond_a

    .line 30
    iget v1, p0, Lz/i;->c:I

    add-int/lit8 v5, v1, 0x4

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v0, v5, v4}, Lz/i;->f([BII)V

    .line 31
    iget v0, p0, Lz/i;->d:I

    iput v0, p0, Lz/i;->c:I

    goto :goto_4

    .line 32
    :cond_a
    iget v0, p0, Lz/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/i;->c:I

    .line 33
    :goto_4
    iput v2, p0, Lz/i;->d:I

    .line 34
    :cond_b
    :goto_5
    iget v0, p0, Lz/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lz/i;->c:I

    goto :goto_2

    :cond_c
    :goto_6
    if-eqz v0, :cond_e

    .line 35
    iget p1, p0, Lz/i;->b:I

    sub-int/2addr p1, v0

    iput p1, p0, Lz/i;->b:I

    if-eqz p1, :cond_d

    .line 36
    iget-object v1, p0, Lz/i;->a:[B

    invoke-static {v1, v0, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    :cond_d
    iput v2, p0, Lz/i;->c:I

    :cond_e
    return-void

    :cond_f
    :goto_7
    const-wide/16 v0, 0x32

    .line 38
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 39
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v0, "MCU DATA IS NULL"

    invoke-virtual {p1, v0}, Ln1/b;->s(Ljava/lang/String;)V

    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lz/i;->s:Ljava/lang/Runnable;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lz/i;->r:I

    const/16 v2, 0xa

    if-lez v1, :cond_0

    .line 3
    iput v2, p0, Lz/i;->r:I

    goto :goto_0

    .line 4
    :cond_0
    iput v2, p0, Lz/i;->r:I

    .line 5
    iget-object v1, p0, Lz/i;->s:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()I
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    .line 3
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    .line 4
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    .line 5
    invoke-static {}, Lg/e;->e()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final f([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    sget-object v4, Lbase/Configure$Property;->Q:Lbase/Configure$Property;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lbase/Configure$Property;->b(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MCU"

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MCU  Data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v4

    sget-object v6, Lutil/log/LogType;->i:Lutil/log/LogType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive Data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget-boolean v4, Lu0/b;->e4:Z

    const/4 v6, 0x1

    if-nez v4, :cond_1

    .line 5
    sput-boolean v6, Lu0/b;->e4:Z

    .line 6
    :cond_1
    aget-byte v4, v0, v2

    const/16 v8, 0x50

    const/16 v9, 0x10

    const/16 v14, 0x8

    const/4 v7, 0x5

    const/4 v13, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    if-eq v4, v6, :cond_5f

    if-eq v4, v11, :cond_5e

    const/16 v12, -0x4c

    if-eq v4, v12, :cond_5a

    const/16 v12, -0x4b

    if-eq v4, v12, :cond_59

    if-eq v4, v8, :cond_54

    const/16 v8, 0x51

    if-eq v4, v8, :cond_50

    const/16 v8, 0x7a

    if-eq v4, v8, :cond_4d

    const/16 v8, 0x7b

    if-eq v4, v8, :cond_4a

    const/16 v8, 0x3fb

    const v12, 0xff00

    sparse-switch v4, :sswitch_data_0

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    const v8, 0xfffe

    const v15, 0xffff

    packed-switch v4, :pswitch_data_3

    packed-switch v4, :pswitch_data_4

    packed-switch v4, :pswitch_data_5

    goto/16 :goto_16

    :pswitch_0
    add-int/lit8 v3, v2, 0x1

    .line 7
    aget-byte v3, v0, v3

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    const/16 v2, 0x258

    if-le v0, v2, :cond_79

    .line 8
    invoke-static {v0}, Lu0/d;->A3(I)V

    goto/16 :goto_16

    :pswitch_1
    add-int/2addr v2, v6

    .line 9
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lu0/d;->y3(I)V

    goto/16 :goto_16

    :pswitch_2
    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    .line 10
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->k([BII)V

    goto/16 :goto_16

    :pswitch_3
    sub-int/2addr v3, v6

    .line 11
    div-int/2addr v3, v10

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_2

    const/16 v3, 0x3e8

    :cond_2
    move v4, v5

    :goto_0
    if-ge v4, v3, :cond_3

    .line 12
    sget-object v6, Lk0/nt;->c0:[I

    add-int/lit8 v7, v2, 0x1

    shl-int/lit8 v8, v4, 0x1

    add-int/2addr v7, v8

    aget-byte v7, v0, v7

    shl-int/2addr v7, v14

    and-int/2addr v7, v12

    add-int/lit8 v9, v2, 0x2

    add-int/2addr v9, v8

    aget-byte v8, v0, v9

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v5}, Lk0/qt;->m0(I)V

    .line 14
    invoke-static {v3}, Lk0/qt;->m0(I)V

    goto/16 :goto_16

    :pswitch_4
    add-int/lit8 v3, v2, 0x1

    .line 15
    aget-byte v3, v0, v3

    shl-int/2addr v3, v14

    and-int/2addr v3, v12

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    const-string v2, "CAN"

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STEP2 MCU 0x61\u56de\u4f20\u7684\u534f\u8baeID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lz/i;->m:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " \u9ad8\u4f4e\u914d = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v15, :cond_4

    .line 17
    invoke-static {v5}, Lk0/qt;->v0(I)V

    goto/16 :goto_16

    :cond_4
    if-ne v0, v8, :cond_5

    .line 18
    invoke-static {v5}, Lk0/qt;->J(I)V

    goto/16 :goto_16

    :cond_5
    const v2, 0xe000

    if-ne v0, v2, :cond_6

    const v0, 0xe000

    .line 19
    invoke-static {v0}, Lk0/qt;->J(I)V

    goto/16 :goto_16

    .line 20
    :cond_6
    iput v0, v1, Lz/i;->m:I

    if-nez v0, :cond_79

    .line 21
    invoke-static {v5}, Lk0/qt;->J(I)V

    goto/16 :goto_16

    :pswitch_5
    add-int/2addr v2, v6

    .line 22
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ld1/f;->a(I)V

    goto/16 :goto_16

    :pswitch_6
    add-int/2addr v2, v6

    .line 23
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ld1/f;->b(I)V

    goto/16 :goto_16

    :pswitch_7
    add-int/lit8 v3, v2, 0x1

    .line 24
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x2

    .line 25
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v8, v2, 0x3

    .line 26
    aget-byte v8, v0, v8

    shl-int/2addr v8, v9

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    add-int/lit8 v9, v2, 0x4

    aget-byte v9, v0, v9

    shl-int/2addr v9, v14

    and-int/2addr v9, v12

    or-int/2addr v8, v9

    add-int/2addr v2, v7

    aget-byte v0, v0, v2

    shl-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v8

    if-lez v3, :cond_7

    .line 27
    sget-object v2, Ld1/d;->j:[I

    sub-int/2addr v3, v6

    aput v0, v2, v3

    :cond_7
    if-ne v4, v6, :cond_8

    .line 28
    invoke-static {v5}, Ld1/f;->c(I)V

    .line 29
    :cond_8
    invoke-static {v4}, Ld1/f;->c(I)V

    goto/16 :goto_16

    :pswitch_8
    add-int/lit8 v3, v2, 0x1

    .line 30
    aget-byte v3, v0, v3

    if-eq v3, v6, :cond_d

    if-eq v3, v10, :cond_c

    if-eq v3, v11, :cond_b

    if-eq v3, v13, :cond_a

    if-eq v3, v7, :cond_9

    goto/16 :goto_16

    :cond_9
    add-int/lit8 v3, v2, 0x2

    .line 31
    aget-byte v3, v0, v3

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    invoke-static {v13, v0}, Lu0/d;->W3(II)V

    goto/16 :goto_16

    :cond_a
    add-int/lit8 v3, v2, 0x2

    .line 32
    aget-byte v3, v0, v3

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    invoke-static {v11, v0}, Lu0/d;->W3(II)V

    goto/16 :goto_16

    :cond_b
    add-int/lit8 v3, v2, 0x2

    .line 33
    aget-byte v3, v0, v3

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    invoke-static {v10, v0}, Lu0/d;->W3(II)V

    goto/16 :goto_16

    :cond_c
    add-int/lit8 v3, v2, 0x2

    .line 34
    aget-byte v3, v0, v3

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    invoke-static {v6, v0}, Lu0/d;->W3(II)V

    goto/16 :goto_16

    :cond_d
    add-int/2addr v2, v10

    .line 35
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v5, v0}, Lu0/d;->W3(II)V

    goto/16 :goto_16

    :pswitch_9
    const-string v3, "Gps"

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "=============>>> MCU Time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v2, 0x6

    invoke-static {v0, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lo1/i;->o()Lo1/i;

    move-result-object v8

    aget-byte v9, v0, v5

    add-int/lit8 v3, v2, 0x2

    aget-byte v10, v0, v3

    add-int/lit8 v3, v2, 0x3

    aget-byte v11, v0, v3

    add-int/lit8 v3, v2, 0x4

    aget-byte v12, v0, v3

    add-int/2addr v2, v7

    aget-byte v13, v0, v2

    aget-byte v14, v0, v6

    invoke-virtual/range {v8 .. v14}, Lo1/i;->s(IIIIII)V

    goto/16 :goto_16

    :pswitch_a
    add-int/lit8 v3, v2, 0x1

    .line 38
    aget-byte v3, v0, v3

    packed-switch v3, :pswitch_data_6

    :pswitch_b
    goto/16 :goto_16

    .line 39
    :pswitch_c
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v3, v4}, Lu0/i;->Z2(I)V

    .line 40
    :pswitch_d
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-virtual {v3, v0}, Lu0/i;->Y2(I)V

    goto/16 :goto_16

    :pswitch_e
    const/16 v3, 0xcf

    .line 41
    invoke-static {v3}, Lm1/c;->k(I)Z

    move-result v3

    if-nez v3, :cond_79

    add-int/2addr v2, v10

    .line 42
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_e

    goto :goto_1

    :cond_e
    move v5, v6

    :goto_1
    invoke-static {v5}, Lu0/d;->F3(I)V

    goto/16 :goto_16

    :pswitch_f
    add-int/2addr v2, v10

    .line 43
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_f

    goto :goto_2

    :cond_f
    move v5, v6

    :goto_2
    invoke-static {v5}, Lu0/d;->v3(I)V

    goto/16 :goto_16

    :pswitch_10
    add-int/2addr v2, v10

    .line 44
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_10

    move v5, v6

    :cond_10
    invoke-static {v5}, Lu0/d;->r2(I)V

    goto/16 :goto_16

    :pswitch_11
    add-int/2addr v2, v10

    .line 45
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->d0(I)V

    goto/16 :goto_16

    :pswitch_12
    add-int/2addr v2, v10

    .line 46
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lc1/b;->f(I)V

    goto/16 :goto_16

    :pswitch_13
    add-int/2addr v2, v10

    .line 47
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->J(I)V

    goto/16 :goto_16

    :pswitch_14
    add-int/2addr v2, v10

    .line 48
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->w2(I)V

    goto/16 :goto_16

    :pswitch_15
    add-int/2addr v2, v10

    .line 49
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->L2(I)V

    goto/16 :goto_16

    :pswitch_16
    add-int/2addr v2, v10

    .line 50
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->c1(I)V

    goto/16 :goto_16

    :pswitch_17
    add-int/2addr v2, v10

    .line 51
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->l1(I)V

    goto/16 :goto_16

    .line 52
    :pswitch_18
    sget v3, Lu0/b;->A4:I

    if-nez v3, :cond_79

    add-int/2addr v2, v10

    .line 53
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_11

    move v5, v6

    :cond_11
    invoke-static {v5}, Lu0/d;->H(I)V

    goto/16 :goto_16

    :pswitch_19
    const/16 v3, 0xd2

    .line 54
    invoke-static {v3}, Lm1/c;->k(I)Z

    move-result v3

    if-nez v3, :cond_79

    add-int/2addr v2, v10

    .line 55
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_12

    move v5, v6

    :cond_12
    invoke-static {v5}, Lu0/d;->H0(I)V

    goto/16 :goto_16

    :pswitch_1a
    add-int/lit8 v3, v2, 0x1

    .line 56
    aget-byte v3, v0, v3

    if-eqz v3, :cond_16

    if-eq v3, v13, :cond_15

    const/4 v4, 0x6

    if-eq v3, v4, :cond_14

    if-eq v3, v14, :cond_13

    goto/16 :goto_16

    :cond_13
    const-string v3, "Device"

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "second Display Brightness:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_14
    add-int/2addr v2, v10

    .line 58
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lu0/d;->e(I)V

    goto/16 :goto_16

    :cond_15
    add-int/2addr v2, v10

    .line 59
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lu0/d;->h(I)V

    goto/16 :goto_16

    :cond_16
    add-int/2addr v2, v10

    .line 60
    aget-byte v0, v0, v2

    if-ne v0, v10, :cond_79

    .line 61
    invoke-virtual/range {p0 .. p0}, Lz/i;->d()V

    goto/16 :goto_16

    :pswitch_1b
    add-int/2addr v2, v6

    .line 62
    aget-byte v0, v0, v2

    .line 63
    sget v2, Lu0/b;->y3:I

    if-eq v0, v2, :cond_18

    .line 64
    sput v0, Lu0/b;->y3:I

    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v6

    const/16 v3, 0xce

    .line 65
    invoke-static {v3}, Lm1/c;->k(I)Z

    move-result v3

    if-eqz v3, :cond_18

    new-array v3, v6, [B

    .line 66
    sget-boolean v4, Lu0/b;->a:Z

    if-eqz v4, :cond_17

    int-to-byte v2, v0

    goto :goto_3

    :cond_17
    int-to-byte v2, v2

    :goto_3
    aput-byte v2, v3, v5

    const/16 v2, 0xa9

    invoke-static {v3, v2}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    :cond_18
    shr-int/lit8 v2, v0, 0x6

    and-int/2addr v2, v6

    .line 67
    invoke-static {v2}, Lu0/d;->V1(I)V

    .line 68
    sget v2, Ly0/f;->b1:I

    if-nez v2, :cond_19

    shr-int/2addr v0, v11

    and-int/2addr v0, v6

    .line 69
    invoke-static {v0}, Ly0/h;->C(I)V

    .line 70
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lz/i;->e()I

    move-result v0

    if-eqz v0, :cond_79

    .line 71
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_79

    .line 72
    invoke-static {v6}, Lu0/d;->i(I)V

    goto/16 :goto_16

    :pswitch_1c
    add-int/lit8 v4, v2, 0x1

    .line 73
    aget-byte v4, v0, v4

    const/16 v7, 0x6a

    if-eqz v4, :cond_1e

    if-eq v4, v6, :cond_1b

    if-eq v4, v11, :cond_1a

    goto/16 :goto_16

    :cond_1a
    new-array v3, v10, [I

    aput v5, v3, v5

    add-int/lit8 v4, v2, 0x2

    .line 74
    aget-byte v4, v0, v4

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    .line 75
    invoke-static {v4, v0}, Lo1/p0;->c(BB)I

    move-result v0

    aput v0, v3, v6

    .line 76
    invoke-static {v7, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :cond_1b
    add-int/lit8 v3, v2, 0x2

    .line 77
    aget-byte v3, v0, v3

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    if-ne v0, v15, :cond_1c

    new-array v0, v10, [I

    .line 78
    fill-array-data v0, :array_0

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :cond_1c
    if-ne v0, v8, :cond_1d

    new-array v0, v10, [I

    .line 79
    fill-array-data v0, :array_1

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :cond_1d
    const v2, 0xfff0

    if-ne v0, v2, :cond_79

    new-array v0, v10, [I

    .line 80
    fill-array-data v0, :array_2

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :cond_1e
    add-int/lit8 v4, v2, 0x2

    .line 81
    aget-byte v9, v0, v4

    add-int/lit8 v12, v2, 0x3

    aget-byte v13, v0, v12

    invoke-static {v9, v13}, Lo1/p0;->c(BB)I

    move-result v9

    if-ne v9, v15, :cond_1f

    new-array v0, v10, [I

    .line 82
    fill-array-data v0, :array_3

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :cond_1f
    if-ne v9, v8, :cond_20

    new-array v0, v10, [I

    .line 83
    fill-array-data v0, :array_4

    invoke-static {v7, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :cond_20
    new-array v8, v10, [I

    .line 84
    fill-array-data v8, :array_5

    invoke-static {v7, v8}, Lu0/d;->I3(I[I)V

    add-int/lit8 v8, v3, -0x6

    add-int/2addr v8, v11

    .line 85
    new-array v9, v8, [I

    .line 86
    aput v11, v9, v5

    .line 87
    aget-byte v4, v0, v4

    aget-byte v12, v0, v12

    invoke-static {v4, v12}, Lo1/p0;->c(BB)I

    move-result v4

    aput v4, v9, v6

    add-int/lit8 v4, v2, 0x4

    .line 88
    aget-byte v4, v0, v4

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v0, v6

    invoke-static {v4, v6}, Lo1/p0;->c(BB)I

    move-result v4

    aput v4, v9, v10

    .line 89
    new-array v4, v3, [I

    :goto_4
    if-ge v5, v3, :cond_21

    add-int v6, v2, v5

    .line 90
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_21
    sub-int/2addr v8, v11

    const/4 v0, 0x6

    .line 91
    invoke-static {v4, v0, v9, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    invoke-static {v7, v9}, Lu0/d;->I3(I[I)V

    goto/16 :goto_16

    :pswitch_1d
    add-int/2addr v2, v6

    .line 93
    aget-byte v3, v0, v2

    and-int/lit8 v3, v3, 0xf

    invoke-static {v3}, Lu0/d;->t2(I)V

    .line 94
    aget-byte v0, v0, v2

    shr-int/2addr v0, v13

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Lu0/d;->v2(I)V

    goto/16 :goto_16

    .line 95
    :pswitch_1e
    new-instance v4, Ljava/lang/String;

    add-int/2addr v2, v11

    sub-int/2addr v3, v11

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Lu0/d;->X1(Ljava/lang/String;)V

    goto/16 :goto_16

    :pswitch_1f
    add-int/lit8 v3, v2, 0x1

    .line 96
    aget-byte v4, v0, v3

    if-eq v4, v10, :cond_23

    const/16 v5, 0x20

    if-eq v4, v5, :cond_22

    packed-switch v4, :pswitch_data_7

    goto/16 :goto_16

    .line 97
    :pswitch_20
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    aget-byte v3, v0, v3

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v4, v3, v0}, Lu0/i;->l4(II)V

    goto/16 :goto_16

    :cond_22
    add-int/2addr v2, v10

    .line 98
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lu0/d;->f3(I)V

    goto/16 :goto_16

    .line 99
    :cond_23
    sget v3, Ly0/f;->c1:I

    if-nez v3, :cond_79

    add-int/2addr v2, v10

    .line 100
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ly0/h;->A(I)V

    goto/16 :goto_16

    :pswitch_21
    add-int/lit8 v3, v2, 0x1

    .line 101
    aget-byte v3, v0, v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_79

    add-int/2addr v2, v10

    .line 102
    aget-byte v0, v0, v2

    if-eqz v0, :cond_25

    if-eq v0, v6, :cond_24

    goto/16 :goto_16

    :cond_24
    const/4 v0, -0x1

    .line 103
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_16

    :cond_25
    const/4 v0, -0x2

    .line 104
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_16

    .line 105
    :pswitch_22
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 106
    new-instance v5, Ljava/lang/String;

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    invoke-direct {v5, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4, v5}, Lu0/i;->j4(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 107
    :pswitch_23
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v4

    invoke-virtual {v4}, Lk0/rt;->f3()Z

    move-result v4

    if-eqz v4, :cond_79

    sub-int/2addr v3, v6

    .line 108
    new-array v4, v3, [I

    :goto_5
    add-int/2addr v2, v6

    if-ge v5, v3, :cond_26

    .line 109
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_26
    const/16 v0, 0x41c

    .line 110
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    .line 111
    :pswitch_24
    new-instance v4, Ljava/lang/String;

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    const-string v0, "_ivd"

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "persist.fyt.externalfm"

    .line 113
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_27

    .line 114
    invoke-static {v13}, Lw0/f;->l(I)V

    goto/16 :goto_16

    .line 115
    :cond_27
    invoke-static {v11}, Lw0/f;->l(I)V

    goto/16 :goto_16

    .line 116
    :cond_28
    iget v0, v1, Lz/i;->e:I

    if-nez v0, :cond_29

    .line 117
    iput v6, v1, Lz/i;->e:I

    .line 118
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "mcu need update"

    const-string v10, "MCU\u4e0e\u786c\u4ef6\u4e0d\u5339\u914d"

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v12, 0x32

    const/4 v13, -0x1

    const/16 v14, 0x3c

    const v15, 0x7fffff00

    invoke-virtual/range {v7 .. v15}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    const-string/jumbo v0, "sys.fyt.mcu_notmatch_hardware"

    .line 119
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v2, Lz/i$e;

    invoke-direct {v2, v1}, Lz/i$e;-><init>(Lz/i;)V

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_29
    const/4 v0, 0x7

    .line 121
    invoke-static {v0}, Lu0/d;->C3(I)V

    goto/16 :goto_16

    .line 122
    :pswitch_25
    new-instance v4, Ljava/lang/String;

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Lu0/d;->r3(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 123
    :pswitch_26
    new-instance v4, Ljava/lang/String;

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Lu0/d;->s3(Ljava/lang/String;)V

    goto/16 :goto_16

    :pswitch_27
    add-int/lit8 v3, v2, 0x1

    .line 124
    aget-byte v3, v0, v3

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    invoke-static {v3, v0}, Lo1/p0;->c(BB)I

    move-result v0

    const v2, 0xf003

    if-eq v0, v2, :cond_2c

    const v2, 0xf013

    if-eq v0, v2, :cond_2b

    const v2, 0xf023

    if-eq v0, v2, :cond_2a

    goto/16 :goto_16

    .line 125
    :cond_2a
    iget v0, v1, Lz/i;->q:I

    if-nez v0, :cond_79

    .line 126
    iput v6, v1, Lz/i;->q:I

    const-string v0, "/system/mcu/TwSpiMcu.bin"

    .line 127
    invoke-static {v0, v6}, Lu0/e;->i(Ljava/lang/String;I)V

    .line 128
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v2, Lz/i$d;

    invoke-direct {v2, v1}, Lz/i$d;-><init>(Lz/i;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_16

    .line 129
    :cond_2b
    iget v0, v1, Lz/i;->p:I

    if-nez v0, :cond_79

    .line 130
    iput v6, v1, Lz/i;->p:I

    const-string v0, "/system/mcu/TwSpiOsd.bin"

    .line 131
    invoke-static {v0, v5}, Lu0/e;->i(Ljava/lang/String;I)V

    .line 132
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v2, Lz/i$c;

    invoke-direct {v2, v1}, Lz/i$c;-><init>(Lz/i;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_16

    .line 133
    :cond_2c
    iget v0, v1, Lz/i;->o:I

    if-nez v0, :cond_79

    .line 134
    iput v6, v1, Lz/i;->o:I

    .line 135
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "stm32_need_upgrade"

    const-string v10, "STM32\u9700\u8981\u5347\u7ea7"

    sget-object v11, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v12, 0x1e

    const/4 v13, -0x1

    const/16 v14, 0x28

    const v15, 0x7fffff00

    invoke-virtual/range {v7 .. v15}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    const-string/jumbo v0, "sys.fyt.mcu_need_update"

    const-string v2, "1"

    .line 136
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v6}, Lu0/d;->S1(I)V

    goto/16 :goto_16

    :pswitch_28
    sub-int/2addr v3, v6

    .line 138
    new-array v4, v3, [B

    add-int/2addr v2, v6

    .line 139
    invoke-static {v0, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v7, v1, Lz/i;->h:Lo1/q;

    if-eqz v7, :cond_2d

    .line 141
    invoke-interface {v7, v4}, Lo1/q;->b([B)V

    goto :goto_6

    .line 142
    :cond_2d
    sget-object v7, Ll0/z;->a:Ll0/a;

    invoke-virtual {v7, v4}, Ll0/a;->b([B)V

    .line 143
    :goto_6
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v4

    invoke-virtual {v4}, Lk0/rt;->f3()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 144
    new-array v4, v3, [I

    :goto_7
    if-ge v5, v3, :cond_2e

    .line 145
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v6

    goto :goto_7

    .line 146
    :cond_2e
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :pswitch_29
    add-int/lit8 v3, v2, 0x1

    .line 147
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v0}, Ly0/h;->o(II)V

    goto/16 :goto_16

    .line 148
    :pswitch_2a
    sget-object v4, La1/b;->b:La1/d;

    instance-of v4, v4, La1/a;

    if-eqz v4, :cond_79

    .line 149
    new-instance v4, Lz/i$b;

    invoke-direct {v4, v1, v0, v2, v3}, Lz/i$b;-><init>(Lz/i;[BII)V

    const-wide/16 v2, 0x0

    invoke-static {v4, v2, v3}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    goto/16 :goto_16

    :pswitch_2b
    add-int/lit8 v3, v2, 0x1

    .line 150
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v10

    .line 151
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-ne v0, v6, :cond_2f

    goto :goto_8

    :cond_2f
    move v5, v6

    .line 152
    :goto_8
    invoke-static {v3, v5}, La1/c;->j(II)V

    goto/16 :goto_16

    :pswitch_2c
    sub-int/2addr v3, v6

    .line 153
    new-array v4, v3, [B

    add-int/2addr v2, v6

    .line 154
    invoke-static {v0, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    invoke-static {v4}, La1/c;->k([B)V

    goto/16 :goto_16

    :sswitch_0
    add-int/lit8 v3, v2, 0x1

    .line 156
    aget-byte v3, v0, v3

    if-eqz v3, :cond_36

    if-eq v3, v6, :cond_31

    if-eq v3, v10, :cond_30

    goto/16 :goto_16

    :cond_30
    add-int/lit8 v3, v2, 0x3

    .line 157
    invoke-static {v0, v3}, Lo1/s0;->f([BI)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 158
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v4

    add-int/2addr v2, v10

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    invoke-static {v2, v0}, Lo1/s0;->x(II)I

    move-result v0

    invoke-virtual {v4, v0}, Lu0/i;->u3(I)V

    goto/16 :goto_16

    :cond_31
    add-int/lit8 v3, v2, 0x2

    .line 159
    aget-byte v3, v0, v3

    if-eqz v3, :cond_35

    if-eq v3, v6, :cond_34

    if-eq v3, v10, :cond_33

    if-eq v3, v11, :cond_32

    goto/16 :goto_16

    :cond_32
    add-int/lit8 v3, v2, 0x3

    .line 160
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v13

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v0}, Ls0/d;->d(II)V

    goto/16 :goto_16

    :cond_33
    add-int/lit8 v3, v2, 0x3

    .line 161
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v13

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v0}, Ls0/d;->g(II)V

    goto/16 :goto_16

    :cond_34
    add-int/lit8 v3, v2, 0x3

    .line 162
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v13

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v0}, Ls0/d;->f(II)V

    goto/16 :goto_16

    :cond_35
    add-int/lit8 v3, v2, 0x3

    .line 163
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v13

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v0}, Ls0/d;->e(II)V

    goto/16 :goto_16

    :cond_36
    add-int/lit8 v3, v2, 0x2

    .line 164
    aget-byte v3, v0, v3

    if-eqz v3, :cond_39

    if-eq v3, v6, :cond_38

    if-eq v3, v10, :cond_37

    goto/16 :goto_16

    :cond_37
    add-int/lit8 v3, v2, 0x3

    .line 165
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v4, v0}, Ls0/d;->o(III)V

    goto/16 :goto_16

    :cond_38
    add-int/lit8 v3, v2, 0x3

    .line 166
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v4, v0}, Ls0/d;->i(III)V

    goto/16 :goto_16

    :cond_39
    add-int/lit8 v3, v2, 0x3

    .line 167
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v4, v0}, Ls0/d;->b(III)V

    goto/16 :goto_16

    :sswitch_1
    add-int/lit8 v4, v2, 0x1

    .line 168
    aget-byte v4, v0, v4

    if-eq v4, v13, :cond_3c

    if-eq v4, v9, :cond_3a

    goto/16 :goto_16

    .line 169
    :cond_3a
    sget-object v4, Lu0/b;->O2:Landroid/util/SparseIntArray;

    monitor-enter v4

    add-int/lit8 v5, v2, 0x2

    add-int/2addr v2, v3

    :goto_9
    if-ge v5, v2, :cond_3b

    .line 170
    :try_start_0
    aget-byte v3, v0, v5

    shl-int/2addr v3, v14

    and-int/2addr v3, v12

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    .line 171
    sget-object v6, Lu0/b;->O2:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_9

    .line 172
    :cond_3b
    monitor-exit v4

    goto/16 :goto_16

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3c
    const/4 v0, 0x0

    .line 173
    invoke-static {v0}, Lu0/d;->M3(Ly/b;)V

    goto/16 :goto_16

    :sswitch_2
    add-int/lit8 v3, v2, 0x1

    .line 174
    aget-byte v3, v0, v3

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, v0, v4

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    invoke-static {v3, v4, v0}, Lo1/p0;->d(BBB)I

    move-result v0

    sput v0, Ll0/z;->b:I

    .line 175
    sget-boolean v0, Ll0/z;->d:Z

    if-nez v0, :cond_79

    .line 176
    invoke-static {}, Ll0/b0;->m0()V

    goto/16 :goto_16

    :sswitch_3
    add-int/lit8 v3, v2, 0x1

    .line 177
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v10

    .line 178
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 179
    sget-boolean v2, La1/b;->k:Z

    if-eqz v2, :cond_3d

    const-string v2, "Steer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x36  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " adc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_3d
    invoke-static {v3, v0}, La1/c;->d(II)V

    goto/16 :goto_16

    :sswitch_4
    add-int/lit8 v3, v2, 0x1

    .line 181
    aget-byte v3, v0, v3

    add-int/lit8 v3, v3, 0x3c

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v10

    .line 182
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-eq v0, v6, :cond_3e

    move v5, v6

    .line 183
    :cond_3e
    sget-boolean v0, La1/b;->k:Z

    if-eqz v0, :cond_3f

    const-string v0, "Steer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0x34  : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " longClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_3f
    sget-object v0, La1/b;->b:La1/d;

    if-eqz v0, :cond_79

    instance-of v2, v0, La1/a;

    if-eqz v2, :cond_79

    .line 185
    check-cast v0, La1/a;

    if-eqz v5, :cond_40

    .line 186
    invoke-virtual {v0, v3}, La1/a;->t(I)V

    goto/16 :goto_16

    .line 187
    :cond_40
    invoke-virtual {v0, v3}, La1/a;->z(I)V

    goto/16 :goto_16

    :sswitch_5
    add-int/lit8 v4, v2, 0x1

    add-int/2addr v2, v3

    .line 188
    invoke-static {v0, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    if-eqz v0, :cond_79

    .line 189
    array-length v2, v0

    if-lez v2, :cond_79

    .line 190
    sget-object v2, Lu0/c;->Q:Lo1/z;

    invoke-virtual {v2, v0}, Lo1/z;->c(Ljava/lang/Object;)V

    goto/16 :goto_16

    :sswitch_6
    add-int/lit8 v3, v2, 0x1

    .line 191
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x2

    .line 192
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v7, v2, 0x3

    .line 193
    aget-byte v7, v0, v7

    add-int/lit8 v8, v2, 0x4

    aget-byte v8, v0, v8

    add-int/lit8 v12, v2, 0x5

    aget-byte v12, v0, v12

    invoke-static {v7, v8, v12}, Lo1/p0;->d(BBB)I

    move-result v7

    add-int/lit8 v8, v2, 0x6

    .line 194
    aget-byte v8, v0, v8

    add-int/lit8 v12, v2, 0x7

    aget-byte v12, v0, v12

    add-int/2addr v2, v14

    aget-byte v0, v0, v2

    invoke-static {v8, v12, v0}, Lo1/p0;->d(BBB)I

    move-result v0

    if-gt v3, v10, :cond_41

    .line 195
    div-int/lit8 v4, v4, 0xa

    .line 196
    div-int/lit8 v7, v7, 0xa

    .line 197
    div-int/lit8 v0, v0, 0xa

    :cond_41
    sub-int v2, v0, v7

    .line 198
    div-int/2addr v2, v4

    .line 199
    sget v3, Lw0/d;->K:I

    if-eqz v3, :cond_79

    new-array v3, v13, [I

    aput v7, v3, v5

    .line 200
    sput v7, Lw0/d;->L:I

    aput v0, v3, v6

    .line 201
    sput v0, Lw0/d;->M:I

    aput v4, v3, v10

    .line 202
    sput v4, Lw0/d;->N:I

    aput v2, v3, v11

    .line 203
    sput v2, Lw0/d;->O:I

    .line 204
    invoke-static {v9, v3}, Lw0/f;->J(I[I)V

    goto/16 :goto_16

    :sswitch_7
    add-int/lit8 v4, v2, 0x1

    .line 205
    aget-byte v4, v0, v4

    const/16 v4, 0x1f7

    add-int/2addr v3, v2

    add-int/2addr v3, v10

    .line 206
    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lo1/s0;->e([B)[I

    move-result-object v0

    .line 207
    invoke-static {v4, v0}, Lc1/b;->i(I[I)V

    goto/16 :goto_16

    .line 208
    :sswitch_8
    aget-byte v4, v0, v2

    invoke-static {v4}, Li1/s;->g(I)Li1/s;

    move-result-object v4

    if-eqz v4, :cond_79

    .line 209
    monitor-enter v4

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, v3

    .line 210
    :try_start_1
    invoke-static {v0, v5, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 211
    invoke-virtual {v4, v0}, Li1/s;->b([B)V

    .line 212
    monitor-exit v4

    goto/16 :goto_16

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 213
    :sswitch_9
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v4

    invoke-virtual {v4}, Lk0/rt;->f3()Z

    move-result v4

    if-eqz v4, :cond_79

    sub-int/2addr v3, v6

    .line 214
    new-array v4, v3, [I

    :goto_a
    add-int/2addr v2, v6

    if-ge v5, v3, :cond_42

    .line 215
    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 216
    :cond_42
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    .line 217
    :sswitch_a
    sget-object v4, Lk0/nt;->d:Lk0/lt;

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    invoke-virtual {v4, v0, v2, v3}, Lk0/lt;->U2([BII)V

    .line 218
    sget-boolean v4, Lu0/b;->T3:Z

    if-eqz v4, :cond_79

    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v4

    invoke-virtual {v4}, Lk0/rt;->f3()Z

    move-result v4

    if-eqz v4, :cond_79

    .line 219
    new-array v4, v3, [I

    :goto_b
    if-ge v5, v3, :cond_43

    .line 220
    aget-byte v7, v0, v2

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v2, v6

    goto :goto_b

    .line 221
    :cond_43
    invoke-static {v8, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    .line 222
    :sswitch_b
    new-instance v4, Ljava/lang/String;

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    invoke-direct {v4, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-static {v4}, Lu0/d;->b2(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 223
    :sswitch_c
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v3

    .line 224
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v6, :cond_44

    goto :goto_c

    :cond_44
    move v6, v10

    .line 225
    :goto_c
    invoke-virtual {v3, v6}, Lu0/i;->h4(I)V

    goto/16 :goto_16

    :sswitch_d
    add-int/2addr v2, v6

    .line 226
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, La1/c;->h(I)V

    goto/16 :goto_16

    :sswitch_e
    add-int/lit8 v3, v2, 0x5

    .line 227
    invoke-static {v0, v3}, Lo1/s0;->f([BI)Z

    move-result v4

    if-eqz v4, :cond_79

    .line 228
    aget-byte v3, v0, v3

    add-int/lit8 v4, v2, 0x4

    aget-byte v4, v0, v4

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v0, v5

    add-int/2addr v2, v10

    aget-byte v0, v0, v2

    invoke-static {v3, v4, v5, v0}, Lo1/s0;->z(IIII)I

    move-result v0

    shr-int/lit8 v2, v0, 0x1f

    and-int/2addr v2, v6

    if-nez v2, :cond_45

    move v2, v6

    goto :goto_d

    :cond_45
    const/4 v2, -0x1

    :goto_d
    shr-int/lit8 v3, v0, 0x17

    and-int/lit16 v3, v3, 0xff

    const v4, 0x7fffff

    and-int/2addr v0, v4

    if-nez v3, :cond_46

    shl-int/2addr v0, v6

    goto :goto_e

    :cond_46
    const/high16 v4, 0x800000

    or-int/2addr v0, v4

    :goto_e
    mul-int/2addr v2, v0

    int-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    int-to-double v2, v3

    const-wide v8, 0x4062c00000000000L    # 150.0

    sub-double/2addr v2, v8

    .line 229
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v4, v2

    double-to-float v0, v4

    const v2, 0x47c5e680    # 101325.0f

    div-float/2addr v0, v2

    float-to-double v2, v0

    const-wide v4, 0x3fc85bc01a36e2ebL    # 0.1903

    .line 230
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x40e5a54000000000L    # 44330.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    mul-double/2addr v6, v4

    double-to-float v0, v6

    .line 231
    sget-object v2, Lo1/a;->h:Lo1/a;

    invoke-virtual {v2, v0}, Lo1/a;->b(F)V

    goto/16 :goto_16

    :sswitch_f
    add-int/lit8 v4, v2, 0x3

    .line 232
    invoke-static {v0, v4}, Lo1/s0;->f([BI)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 233
    aget-byte v7, v0, v4

    and-int/lit16 v7, v7, 0xff

    if-lez v7, :cond_47

    add-int/lit8 v8, v2, 0x4

    add-int/2addr v7, v8

    add-int/2addr v3, v2

    if-gt v7, v3, :cond_47

    add-int/lit8 v3, v2, 0x1

    .line 234
    aget-byte v3, v0, v3

    add-int/lit8 v9, v2, 0x2

    aget-byte v9, v0, v9

    invoke-static {v3, v9}, Lo1/s0;->x(II)I

    move-result v3

    .line 235
    invoke-static {v0, v8, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    add-int/lit8 v3, v3, 0xd

    invoke-static {v7, v3}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    :cond_47
    new-array v3, v13, [I

    const/16 v7, 0xaa

    aput v7, v3, v5

    add-int/lit8 v5, v2, 0x1

    .line 236
    aget-byte v5, v0, v5

    aput v5, v3, v6

    add-int/2addr v2, v10

    aget-byte v2, v0, v2

    aput v2, v3, v10

    aget-byte v0, v0, v4

    aput v0, v3, v11

    invoke-static {v3}, Lz/k;->s([I)V

    goto/16 :goto_16

    .line 237
    :sswitch_10
    sget-object v4, Lz/a;->C:Lo1/r;

    if-eqz v4, :cond_48

    add-int/lit8 v7, v2, 0x1

    add-int/lit8 v8, v3, -0x1

    .line 238
    invoke-interface {v4, v0, v7, v8}, Lo1/r;->z1([BII)V

    .line 239
    :cond_48
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v4

    invoke-virtual {v4}, Lk0/rt;->e3()Z

    move-result v4

    if-eqz v4, :cond_79

    sub-int/2addr v3, v6

    .line 240
    new-array v4, v3, [I

    :goto_f
    add-int/2addr v2, v6

    if-ge v5, v3, :cond_49

    .line 241
    aget-byte v7, v0, v2

    aput v7, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_49
    const/16 v0, 0x400

    .line 242
    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_16

    :cond_4a
    add-int/lit8 v3, v2, 0x2

    .line 243
    aget-byte v3, v0, v3

    if-eqz v3, :cond_4c

    if-eq v3, v10, :cond_4b

    goto/16 :goto_16

    :cond_4b
    add-int/2addr v2, v11

    .line 244
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lu0/d;->o(I)V

    goto/16 :goto_16

    :cond_4c
    add-int/2addr v2, v11

    .line 245
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->p(I)V

    goto/16 :goto_16

    :cond_4d
    add-int/lit8 v3, v2, 0x1

    .line 246
    aget-byte v3, v0, v3

    if-eqz v3, :cond_4f

    if-eq v3, v11, :cond_4e

    goto/16 :goto_16

    :cond_4e
    add-int/2addr v2, v10

    .line 247
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->g1(I)V

    goto/16 :goto_16

    :cond_4f
    add-int/2addr v2, v10

    .line 248
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->j1(I)V

    goto/16 :goto_16

    .line 249
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 250
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rds data = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ln1/b;->s(Ljava/lang/String;)V

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v2, v3

    :goto_10
    if-ge v5, v2, :cond_53

    .line 251
    aget-byte v3, v0, v5

    if-nez v3, :cond_51

    goto :goto_11

    .line 252
    :cond_51
    aget-byte v3, v0, v5

    const/16 v6, 0x1f

    if-le v3, v6, :cond_52

    aget-byte v3, v0, v5

    const/16 v6, 0x7f

    if-ge v3, v6, :cond_52

    .line 253
    aget-byte v3, v0, v5

    int-to-char v3, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 254
    :cond_53
    :goto_11
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lw0/f;->x(Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_54
    add-int/lit8 v4, v2, 0x1

    .line 256
    aget-byte v4, v0, v4

    sub-int/2addr v4, v6

    if-ltz v4, :cond_79

    const/16 v6, 0x1e

    if-ge v4, v6, :cond_79

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    add-int/lit8 v7, v2, 0x2

    add-int/2addr v2, v3

    :goto_12
    if-ge v7, v2, :cond_57

    .line 258
    aget-byte v3, v0, v7

    if-nez v3, :cond_55

    goto :goto_13

    .line 259
    :cond_55
    aget-byte v3, v0, v7

    const/16 v8, 0x1f

    if-le v3, v8, :cond_56

    aget-byte v3, v0, v7

    const/16 v8, 0x7f

    if-ge v3, v8, :cond_56

    .line 260
    aget-byte v3, v0, v7

    int-to-char v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_56
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 261
    :cond_57
    :goto_13
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x12

    if-ge v4, v2, :cond_58

    .line 262
    sget-object v2, Lw0/d;->g:[Ljava/lang/String;

    aget-object v3, v2, v4

    invoke-static {v3, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 263
    aput-object v0, v2, v4

    const/16 v2, 0xe

    const/high16 v3, 0x10000

    add-int/2addr v4, v3

    .line 264
    invoke-static {v2, v4, v0}, Lw0/f;->I(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_58
    add-int/lit8 v4, v4, -0x12

    .line 265
    sget-object v2, Lw0/d;->f:[Ljava/lang/String;

    aget-object v3, v2, v4

    invoke-static {v3, v0}, Lo1/p0;->g(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 266
    aput-object v0, v2, v4

    const/16 v2, 0xe

    add-int/2addr v4, v5

    .line 267
    invoke-static {v2, v4, v0}, Lw0/f;->I(IILjava/lang/String;)V

    goto/16 :goto_16

    :cond_59
    if-lt v3, v13, :cond_79

    add-int/lit8 v3, v2, 0x1

    .line 268
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x2

    .line 269
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x3

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v2, v13

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v4, v5, v0}, Lo1/s0;->y(III)I

    move-result v0

    .line 270
    invoke-static {v3, v0}, Lu0/d;->p2(II)V

    goto/16 :goto_16

    :cond_5a
    add-int/lit8 v3, v2, 0x1

    .line 271
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v6, :cond_5d

    if-eq v3, v10, :cond_5b

    goto/16 :goto_16

    :cond_5b
    add-int/2addr v2, v10

    .line 272
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_5c

    .line 273
    invoke-static {v6}, Ls0/d;->j(I)V

    goto/16 :goto_16

    :cond_5c
    if-ne v0, v6, :cond_79

    .line 274
    invoke-static {v6}, Ls0/d;->m(I)V

    goto/16 :goto_16

    :cond_5d
    add-int/2addr v2, v10

    .line 275
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ls0/d;->h(I)V

    goto/16 :goto_16

    .line 276
    :cond_5e
    :sswitch_11
    sget-object v4, Lz/a;->D:Lo1/r;

    if-eqz v4, :cond_79

    add-int/2addr v2, v6

    sub-int/2addr v3, v6

    .line 277
    invoke-interface {v4, v0, v2, v3}, Lo1/r;->z1([BII)V

    goto/16 :goto_16

    :cond_5f
    add-int/lit8 v4, v2, 0x1

    .line 278
    aget-byte v4, v0, v4

    const/16 v12, -0x5f

    if-eq v4, v12, :cond_78

    const/16 v12, -0x2d

    if-eq v4, v12, :cond_75

    const/4 v12, 0x7

    if-eq v4, v12, :cond_74

    if-eq v4, v9, :cond_73

    const/16 v9, 0x12

    if-eq v4, v9, :cond_72

    const/16 v9, 0x38

    if-eq v4, v9, :cond_6a

    const/16 v8, 0x76

    if-eq v4, v8, :cond_67

    if-eqz v4, :cond_66

    if-eq v4, v6, :cond_65

    if-eq v4, v10, :cond_64

    if-eq v4, v11, :cond_63

    packed-switch v4, :pswitch_data_8

    goto/16 :goto_16

    :pswitch_2d
    add-int/lit8 v3, v2, 0x2

    .line 279
    aget-byte v3, v0, v3

    const/16 v4, -0x10

    if-eq v3, v4, :cond_61

    if-eq v3, v10, :cond_60

    goto/16 :goto_16

    .line 280
    :cond_60
    sget v3, Lu0/b;->z4:I

    if-nez v3, :cond_79

    add-int/2addr v2, v11

    .line 281
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v0}, Lu0/d;->F(I)V

    goto/16 :goto_16

    :cond_61
    add-int/2addr v2, v11

    .line 282
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lu0/d;->d2(I)V

    goto/16 :goto_16

    :pswitch_2e
    add-int/lit8 v3, v2, 0x2

    .line 283
    aget-byte v3, v0, v3

    packed-switch v3, :pswitch_data_9

    goto/16 :goto_16

    :pswitch_2f
    add-int/2addr v2, v11

    .line 284
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    sput v0, Lu0/b;->V0:I

    goto/16 :goto_16

    .line 285
    :pswitch_30
    sget v3, Lu0/b;->V0:I

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    invoke-static {v3, v0}, Lu0/d;->h3(II)V

    goto/16 :goto_16

    :pswitch_31
    add-int/2addr v2, v11

    .line 286
    aget-byte v0, v0, v2

    const/16 v2, -0x10

    if-eq v0, v2, :cond_62

    packed-switch v0, :pswitch_data_a

    goto/16 :goto_16

    :pswitch_32
    const/4 v0, 0x6

    .line 287
    invoke-static {v0}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    .line 288
    :pswitch_33
    invoke-static {v13}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    .line 289
    :pswitch_34
    invoke-static {v10}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    .line 290
    :pswitch_35
    invoke-static {v7}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    .line 291
    :pswitch_36
    invoke-static {v6}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    .line 292
    :pswitch_37
    invoke-static {v11}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    .line 293
    :pswitch_38
    invoke-static {v5}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    :cond_62
    const/16 v0, 0xf0

    .line 294
    invoke-static {v0}, Lu0/d;->o1(I)V

    goto/16 :goto_16

    :cond_63
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 295
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->l([BII)V

    goto/16 :goto_16

    :cond_64
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 296
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->o([BII)V

    goto/16 :goto_16

    :cond_65
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 297
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->h([BII)V

    goto/16 :goto_16

    :cond_66
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 298
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->j([BII)V

    goto/16 :goto_16

    :cond_67
    add-int/lit8 v3, v2, 0x2

    .line 299
    aget-byte v3, v0, v3

    if-eqz v3, :cond_68

    goto/16 :goto_16

    :cond_68
    add-int/2addr v2, v11

    .line 300
    aget-byte v0, v0, v2

    and-int/2addr v0, v6

    if-nez v0, :cond_69

    move v5, v6

    :cond_69
    invoke-static {v5}, Lu0/d;->H3(I)V

    goto/16 :goto_16

    :cond_6a
    add-int/lit8 v3, v2, 0x2

    .line 301
    aget-byte v3, v0, v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_71

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6e

    const/16 v4, 0x40

    if-eq v3, v4, :cond_6d

    if-eq v3, v8, :cond_6c

    const/16 v4, 0x60

    if-eq v3, v4, :cond_6b

    goto/16 :goto_16

    :cond_6b
    add-int/2addr v2, v11

    .line 302
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x40

    if-ne v0, v2, :cond_79

    .line 303
    sget v0, Lu0/b;->D:I

    invoke-static {v0}, La/i;->O(I)V

    goto/16 :goto_16

    :cond_6c
    add-int/2addr v2, v11

    .line 304
    aget-byte v3, v0, v2

    packed-switch v3, :pswitch_data_b

    packed-switch v3, :pswitch_data_c

    goto/16 :goto_16

    .line 305
    :pswitch_39
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 306
    :pswitch_3a
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x59

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 307
    :pswitch_3b
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 308
    :pswitch_3c
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x58

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 309
    :pswitch_3d
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x56

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 310
    :pswitch_3e
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x55

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 311
    :pswitch_3f
    sget v3, Lu0/b;->D:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v0}, La/i;->I(II)V

    goto/16 :goto_16

    :cond_6d
    add-int/2addr v2, v11

    .line 312
    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0x9

    if-gt v0, v2, :cond_79

    .line 313
    sget v2, Lu0/b;->D:I

    invoke-static {v2, v0}, La/i;->I(II)V

    goto/16 :goto_16

    :cond_6e
    add-int/2addr v2, v11

    .line 314
    aget-byte v0, v0, v2

    if-eqz v0, :cond_70

    if-eq v0, v6, :cond_6f

    goto/16 :goto_16

    .line 315
    :cond_6f
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x57

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 316
    :cond_70
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x58

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    .line 317
    :cond_71
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v2, 0x55

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_16

    :cond_72
    add-int/lit8 v4, v2, 0x2

    add-int v5, v2, v3

    sub-int/2addr v5, v6

    .line 318
    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lo1/s0;->e([B)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Lz/i;->i([I)V

    :pswitch_40
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 319
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->m([BII)V

    goto :goto_16

    :cond_73
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 320
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->n([BII)V

    goto :goto_16

    :cond_74
    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    .line 321
    invoke-virtual {v1, v0, v2, v3}, Lz/i;->g([BII)V

    goto :goto_16

    :cond_75
    add-int/lit8 v3, v2, 0x2

    .line 322
    aget-byte v3, v0, v3

    add-int/2addr v2, v11

    .line 323
    aget-byte v0, v0, v2

    and-int/lit16 v2, v3, 0x80

    const/4 v4, 0x6

    shr-int/2addr v2, v4

    and-int/lit16 v4, v0, 0x80

    const/4 v7, 0x7

    shr-int/2addr v4, v7

    or-int/2addr v2, v4

    shl-int/2addr v2, v6

    const/16 v4, 0x7f

    and-int/2addr v3, v4

    const/16 v6, 0x1f

    if-le v3, v6, :cond_76

    if-ge v3, v4, :cond_76

    .line 324
    iget-object v6, v1, Lz/i;->n:[C

    int-to-char v3, v3

    aput-char v3, v6, v2

    goto :goto_14

    .line 325
    :cond_76
    iget-object v3, v1, Lz/i;->n:[C

    const/16 v6, 0x20

    aput-char v6, v3, v2

    :goto_14
    and-int/2addr v0, v4

    const/16 v3, 0x1f

    if-le v0, v3, :cond_77

    if-ge v0, v4, :cond_77

    .line 326
    iget-object v3, v1, Lz/i;->n:[C

    add-int/lit8 v4, v2, 0x1

    int-to-char v0, v0

    aput-char v0, v3, v4

    goto :goto_15

    .line 327
    :cond_77
    iget-object v0, v1, Lz/i;->n:[C

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x20

    aput-char v4, v0, v3

    :goto_15
    const/4 v0, 0x6

    if-ne v2, v0, :cond_79

    .line 328
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, Lz/i;->n:[C

    invoke-direct {v0, v2, v5, v14}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v0}, Lw0/f;->n(Ljava/lang/String;)V

    goto :goto_16

    .line 329
    :cond_78
    sget-object v4, Lo0/e;->b:Lo0/h;

    add-int/2addr v2, v10

    sub-int/2addr v3, v10

    invoke-virtual {v4, v0, v2, v3}, Lo0/h;->c([BII)V

    :cond_79
    :goto_16
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70 -> :sswitch_10
        -0x57 -> :sswitch_f
        -0x55 -> :sswitch_e
        -0x40 -> :sswitch_d
        -0x25 -> :sswitch_c
        -0x20 -> :sswitch_b
        -0x1d -> :sswitch_a
        0x3 -> :sswitch_11
        0x10 -> :sswitch_9
        0x13 -> :sswitch_8
        0x15 -> :sswitch_8
        0x17 -> :sswitch_8
        0x19 -> :sswitch_8
        0x1b -> :sswitch_8
        0x1d -> :sswitch_8
        0x1f -> :sswitch_7
        0x21 -> :sswitch_6
        0x31 -> :sswitch_5
        0x34 -> :sswitch_4
        0x36 -> :sswitch_3
        0x67 -> :sswitch_2
        0x75 -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x3d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x18
        :pswitch_29
        :pswitch_28
        :pswitch_27
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x13
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_21
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x41
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x61
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x23
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xa
        :pswitch_40
        :pswitch_2e
        :pswitch_2d
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x60
        :pswitch_31
        :pswitch_30
        :pswitch_2f
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x10
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
    .end packed-switch

    :array_0
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public final g([BII)V
    .locals 8

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p3

    .line 2
    aget-byte v0, p1, p2

    const/16 v1, 0x10

    const/4 v2, 0x5

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v1, :cond_6

    const/16 p3, 0x20

    const/4 v1, 0x4

    const/4 v7, 0x3

    if-eq v0, p3, :cond_1

    const/16 p3, 0x30

    if-eq v0, p3, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/2addr p2, v6

    .line 3
    aget-byte p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 4
    :pswitch_0
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 p2, 0xe

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 p2, 0xd

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 p2, 0xb

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/16 p2, 0x9

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v3}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    sget-object p1, Lh0/c;->b:Lh0/f;

    const/4 p2, 0x7

    invoke-interface {p1, p2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 11
    :pswitch_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v4}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 12
    :pswitch_8
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v2}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 13
    :pswitch_9
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v1}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 14
    :pswitch_a
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v7}, Lh0/f;->h(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_b
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v5}, Lh0/f;->h(I)V

    goto/16 :goto_0

    :cond_1
    add-int/2addr p2, v6

    .line 16
    aget-byte p1, p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v6, :cond_4

    if-eq p1, v7, :cond_3

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    .line 17
    :cond_2
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->V()V

    goto/16 :goto_0

    .line 18
    :cond_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->i()V

    goto/16 :goto_0

    .line 19
    :cond_4
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->E()V

    goto :goto_0

    .line 20
    :cond_5
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1}, Lh0/f;->w()V

    goto :goto_0

    :cond_6
    add-int/2addr p2, v6

    .line 21
    aget-byte p1, p1, p2

    const-string p2, "   \u9762\u677f\u6309\u952e   DataBt.sPhoneState : "

    if-eqz p1, :cond_a

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    goto :goto_0

    .line 22
    :cond_7
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v5}, Lh0/f;->I(I)V

    goto :goto_0

    .line 23
    :cond_8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lh0/c;->E:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  CALL KEY"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lc/f;->c(I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    .line 25
    :cond_9
    invoke-virtual {p3, v2}, Lc/e;->c(I)Z

    goto :goto_0

    .line 26
    :cond_a
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->k:Lutil/log/LogType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lh0/c;->E:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  HANG KEY"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3, v4}, Lc/e;->c(I)Z

    :goto_0
    return-void

    nop

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

.method public final h([BII)V
    .locals 3

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq p3, v0, :cond_5

    const/16 v0, 0x21

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, v2

    .line 2
    aget-byte p1, p1, p2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget p1, Lo0/e;->a:I

    if-eq p1, v2, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    sget p1, Lo0/e;->k0:I

    if-nez p1, :cond_4

    :cond_2
    sget p1, Lo0/e;->a:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    sget p1, Lo0/e;->k0:I

    if-nez p1, :cond_4

    :cond_3
    sget p1, Lo0/e;->a:I

    if-ne p1, v1, :cond_8

    sget p1, Lo0/e;->k0:I

    if-eqz p1, :cond_8

    .line 4
    :cond_4
    invoke-static {v2}, Lo0/g;->n(I)V

    goto :goto_0

    :cond_5
    add-int/2addr p2, v2

    .line 5
    aget-byte p1, p1, p2

    if-eq p1, v1, :cond_7

    const/4 p2, 0x6

    if-eq p1, p2, :cond_6

    goto :goto_0

    .line 6
    :cond_6
    sget p1, Lu0/b;->D:I

    invoke-static {p1}, La/i;->F(I)V

    goto :goto_0

    .line 7
    :cond_7
    sget p1, Lu0/b;->D:I

    invoke-static {p1}, La/i;->E(I)V

    :cond_8
    :goto_0
    return-void
.end method

.method public i([I)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 2
    invoke-static {p1, v2}, Lo1/s0;->h([II)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lz/i;->C:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x64

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget p1, p1, v2

    .line 4
    iput-wide v0, p0, Lz/i;->C:J

    .line 5
    invoke-static {}, Lr0/a;->X2()Lr0/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lr0/a;->c3(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j([BII)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    .line 2
    aget-byte v2, p1, p2

    const/16 v3, -0x78

    const/4 v4, 0x0

    if-eq v2, v3, :cond_72

    const/16 v3, -0x77

    const-string v5, ""

    const/4 v6, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-eq v2, v3, :cond_64

    const/16 v3, 0x31

    const/4 v11, 0x7

    const/4 v13, 0x5

    if-eqz v2, :cond_51

    if-eq v2, v10, :cond_50

    const/16 v14, 0x16

    if-eq v2, v14, :cond_4f

    const/16 v14, 0x17

    const/16 v15, 0x40

    const/4 v7, 0x0

    const/16 v12, 0x10

    if-eq v2, v14, :cond_42

    const/16 v14, 0x30

    if-eq v2, v14, :cond_41

    if-eq v2, v3, :cond_40

    sparse-switch v2, :sswitch_data_0

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_f

    .line 3
    :pswitch_0
    sget v0, Lu0/b;->x4:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 4
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Lu0/d;->y0(I)V

    goto/16 :goto_f

    .line 5
    :pswitch_1
    sget v0, Lu0/b;->B4:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 6
    aget-byte v0, p1, v0

    if-eq v0, v9, :cond_1

    if-eq v0, v8, :cond_0

    goto/16 :goto_f

    .line 7
    :cond_0
    invoke-static {v10}, Lu0/d;->W(I)V

    goto/16 :goto_f

    .line 8
    :cond_1
    invoke-static {v4}, Lu0/d;->W(I)V

    goto/16 :goto_f

    :pswitch_2
    add-int/lit8 v0, p2, 0x1

    .line 9
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Lu0/d;->q(I)V

    goto/16 :goto_f

    :pswitch_3
    add-int/lit8 v2, p2, 0x1

    .line 10
    aget-byte v2, p1, v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_8

    const/16 v3, 0x21

    if-eq v2, v3, :cond_7

    if-eq v2, v15, :cond_6

    packed-switch v2, :pswitch_data_4

    const-string v3, "com.autonavi.amapauto"

    const/16 v5, 0x3c

    packed-switch v2, :pswitch_data_5

    packed-switch v2, :pswitch_data_6

    goto/16 :goto_f

    .line 11
    :pswitch_4
    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    const/16 v2, 0x280

    .line 12
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 13
    :pswitch_5
    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    const/16 v2, 0x27f

    .line 14
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 15
    :pswitch_6
    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    const/16 v2, 0x27d

    .line 16
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 17
    :pswitch_7
    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    const/16 v2, 0x27c

    .line 18
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_8
    const/16 v2, 0x415

    .line 19
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_9
    const/16 v2, 0x279

    .line 20
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_a
    const/16 v2, 0x210

    .line 21
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 22
    :pswitch_b
    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    const/16 v2, 0x273

    .line 23
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 24
    :pswitch_c
    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    const/16 v2, 0x272

    .line 25
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_d
    const/16 v2, 0x26f

    .line 26
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_e
    const/16 v2, 0x24b

    .line 27
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_f
    const/16 v2, 0x24c

    .line 28
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 29
    :pswitch_10
    invoke-static {}, Lo1/u;->P()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    invoke-static {v4}, La/i;->b(I)V

    goto/16 :goto_f

    :cond_2
    new-array v0, v10, [I

    aput v6, v0, v4

    .line 31
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    .line 32
    :pswitch_11
    invoke-static {}, Lo1/u;->P()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    invoke-static {v10}, La/i;->b(I)V

    goto/16 :goto_f

    :cond_3
    new-array v0, v10, [I

    aput v8, v0, v4

    .line 34
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    :pswitch_12
    new-array v0, v10, [I

    aput v9, v0, v4

    .line 35
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    :pswitch_13
    new-array v0, v10, [I

    aput v10, v0, v4

    .line 36
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    .line 37
    :pswitch_14
    invoke-static {}, Lo1/u;->P()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    invoke-static {v4}, La/i;->b(I)V

    goto/16 :goto_f

    :cond_4
    new-array v0, v10, [I

    const/4 v2, 0x6

    aput v2, v0, v4

    .line 39
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    .line 40
    :pswitch_15
    invoke-static {}, Lo1/u;->P()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 41
    invoke-static {v10}, La/i;->b(I)V

    goto/16 :goto_f

    :cond_5
    new-array v0, v10, [I

    aput v13, v0, v4

    .line 42
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    :pswitch_16
    new-array v0, v10, [I

    aput v4, v0, v4

    .line 43
    invoke-static {v5, v0}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    .line 44
    :pswitch_17
    invoke-static {}, Lu0/d;->N1()V

    goto/16 :goto_f

    .line 45
    :pswitch_18
    invoke-static {}, Lu0/d;->M1()V

    goto/16 :goto_f

    .line 46
    :pswitch_19
    invoke-static {}, Lu0/d;->O1()V

    goto/16 :goto_f

    .line 47
    :pswitch_1a
    invoke-static {}, Lu0/d;->x1()V

    goto/16 :goto_f

    .line 48
    :pswitch_1b
    invoke-static {}, Lu0/d;->L1()V

    goto/16 :goto_f

    .line 49
    :pswitch_1c
    invoke-static {}, Lu0/d;->I1()V

    goto/16 :goto_f

    .line 50
    :pswitch_1d
    invoke-static {}, Lu0/d;->B1()V

    goto/16 :goto_f

    .line 51
    :pswitch_1e
    invoke-static {}, Lu0/d;->K1()V

    goto/16 :goto_f

    .line 52
    :pswitch_1f
    invoke-static {}, Lu0/d;->J1()V

    goto/16 :goto_f

    :pswitch_20
    const/16 v2, 0x42

    .line 53
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 54
    :cond_6
    invoke-static {}, Lu0/d;->g3()V

    goto/16 :goto_f

    .line 55
    :cond_7
    invoke-static {}, Lu0/d;->F1()V

    goto/16 :goto_f

    .line 56
    :cond_8
    invoke-static {}, Lu0/d;->G1()V

    goto/16 :goto_f

    :pswitch_21
    const/4 v0, -0x3

    .line 57
    invoke-static {v0}, Lu0/d;->Q(I)V

    goto/16 :goto_f

    .line 58
    :pswitch_22
    invoke-static {v10}, Lu0/d;->d1(I)V

    goto/16 :goto_f

    .line 59
    :pswitch_23
    invoke-static {v4}, Lu0/d;->d1(I)V

    goto/16 :goto_f

    :pswitch_24
    add-int/lit8 v2, p2, 0x1

    .line 60
    aget-byte v3, p1, v2

    const/16 v5, 0x27

    if-lt v3, v5, :cond_9

    aget-byte v3, p1, v2

    const/16 v5, 0x2a

    if-gt v3, v5, :cond_9

    .line 61
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    sget-object v5, Lutil/log/LogType;->a:Lutil/log/LogType;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " MCU TO ------------------>>> "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v13, v10, [Ljava/lang/Object;

    aget-byte v14, p1, v2

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v13, v4

    const-string v4, " %2X"

    invoke-static {v4, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 62
    :cond_9
    aget-byte v2, p1, v2

    const/16 v3, -0x23

    if-eq v2, v3, :cond_11

    const/4 v3, 0x6

    if-eq v2, v3, :cond_10

    if-eq v2, v12, :cond_f

    if-eq v2, v10, :cond_e

    if-eq v2, v9, :cond_d

    if-eq v2, v8, :cond_c

    if-eq v2, v6, :cond_b

    packed-switch v2, :pswitch_data_7

    packed-switch v2, :pswitch_data_8

    goto/16 :goto_f

    :pswitch_25
    const/16 v2, 0x24e

    .line 63
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_26
    const/16 v2, 0x26d

    .line 64
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 65
    :pswitch_27
    invoke-static {}, Lo1/u;->i0()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 66
    invoke-static {}, Lo1/u;->y0()V

    goto/16 :goto_f

    .line 67
    :cond_a
    invoke-static {}, Lo1/u;->M()V

    goto/16 :goto_f

    :pswitch_28
    const/16 v2, 0x238

    .line 68
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_29
    const/16 v2, 0x254

    .line 69
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_2a
    const/16 v2, 0x253

    .line 70
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_2b
    const/16 v2, 0x250

    .line 71
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_2c
    const/16 v2, 0x24f

    .line 72
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_2d
    const/16 v2, 0x259

    .line 73
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 74
    :pswitch_2e
    invoke-static {}, Lo1/u;->v()I

    goto/16 :goto_f

    .line 75
    :pswitch_2f
    invoke-static {}, Lo1/u;->O()V

    goto/16 :goto_f

    .line 76
    :pswitch_30
    invoke-static {}, Lu0/d;->q1()V

    goto/16 :goto_f

    .line 77
    :pswitch_31
    invoke-static {}, Lo1/u;->z0()V

    goto/16 :goto_f

    :pswitch_32
    const/16 v2, 0x210

    .line 78
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_33
    const/16 v2, 0x24a

    .line 79
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_34
    const/16 v2, 0x249

    .line 80
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_35
    const/16 v2, 0x248

    .line 81
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_36
    const/16 v2, 0x247

    .line 82
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_37
    const/16 v2, 0x246

    .line 83
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_38
    const/16 v2, 0x245

    .line 84
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_39
    const/16 v2, 0x244

    .line 85
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_3a
    const/16 v2, 0x243

    .line 86
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_3b
    const/16 v2, 0x242

    .line 87
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_3c
    const/16 v2, 0x59

    .line 88
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_3d
    const/16 v2, 0x5a

    .line 89
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_3e
    const/16 v2, 0x57

    .line 90
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_3f
    const/16 v2, 0x58

    .line 91
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_40
    const/16 v2, 0x55

    .line 92
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 93
    :cond_b
    invoke-static {}, Lo1/u;->u()I

    goto/16 :goto_f

    .line 94
    :cond_c
    invoke-static {}, Lo1/u;->W0()V

    goto/16 :goto_f

    .line 95
    :cond_d
    invoke-static {}, Lo1/u;->y()V

    goto/16 :goto_f

    .line 96
    :cond_e
    invoke-virtual {v0, v8}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :cond_f
    const/16 v0, 0x3f0

    .line 97
    invoke-static {v0, v7, v7, v7}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    goto/16 :goto_f

    .line 98
    :cond_10
    invoke-static {}, Lu0/d;->u1()V

    goto/16 :goto_f

    .line 99
    :cond_11
    invoke-static {v10}, Lu0/d;->r1(I)V

    goto/16 :goto_f

    .line 100
    :pswitch_41
    sget v2, Lh0/c;->G:I

    if-eqz v2, :cond_12

    goto/16 :goto_f

    :cond_12
    add-int/lit8 v2, p2, 0x1

    .line 101
    aget-byte v2, p1, v2

    const/16 v5, -0x70

    if-eq v2, v5, :cond_21

    if-eq v2, v11, :cond_20

    const/16 v5, 0x9

    if-eq v2, v5, :cond_1f

    if-eq v2, v12, :cond_1e

    const/16 v5, 0x20

    if-eq v2, v5, :cond_1d

    const/16 v5, 0x1f4

    if-eq v2, v3, :cond_1c

    if-eq v2, v15, :cond_1b

    const/16 v3, 0x42

    if-eq v2, v3, :cond_1a

    if-eqz v2, :cond_19

    if-eq v2, v10, :cond_18

    if-eq v2, v9, :cond_17

    if-eq v2, v6, :cond_16

    if-eq v2, v13, :cond_15

    const/16 v3, 0xb

    if-eq v2, v3, :cond_14

    const/16 v3, 0xc

    if-eq v2, v3, :cond_13

    packed-switch v2, :pswitch_data_9

    packed-switch v2, :pswitch_data_a

    packed-switch v2, :pswitch_data_b

    goto/16 :goto_f

    :pswitch_42
    const/16 v2, 0x21c

    .line 102
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_43
    const/16 v2, 0x21b

    .line 103
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_44
    const/16 v2, 0x21a

    .line 104
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 105
    :pswitch_45
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_f

    .line 106
    :pswitch_46
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_f

    .line 107
    :pswitch_47
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_f

    .line 108
    :pswitch_48
    invoke-static {}, Lo1/u;->i()I

    goto/16 :goto_f

    .line 109
    :pswitch_49
    iget-object v0, v1, Lz/i;->t:Lo1/k0;

    invoke-virtual {v0, v5}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 110
    invoke-static {}, Lo1/u;->E()I

    goto/16 :goto_f

    :pswitch_4a
    const/16 v2, 0x238

    .line 111
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 112
    :pswitch_4b
    invoke-static {}, Lo1/u;->V0()I

    goto/16 :goto_f

    .line 113
    :pswitch_4c
    invoke-static {}, Lo1/u;->c1()I

    goto/16 :goto_f

    .line 114
    :cond_13
    sget-object v0, Lu0/b;->N2:Lo1/w;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lo1/w;->b(I)I

    move-result v3

    if-ne v3, v12, :cond_73

    .line 115
    invoke-virtual {v0, v2}, Lo1/w;->c(I)I

    const/16 v2, 0x1b

    .line 116
    invoke-virtual {v0, v2}, Lo1/w;->b(I)I

    move-result v0

    .line 117
    invoke-static {v0}, Lu0/d;->Z1(I)V

    new-array v2, v8, [I

    aput v10, v2, v4

    aput v4, v2, v10

    aput v0, v2, v9

    .line 118
    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_f

    :cond_14
    const/16 v2, 0x24d

    .line 119
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 120
    :cond_15
    invoke-static {}, Lo1/u;->T0()I

    goto/16 :goto_f

    .line 121
    :cond_16
    iget-object v0, v1, Lz/i;->w:Lo1/l0;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lo1/u;->U0()V

    goto/16 :goto_f

    .line 122
    :cond_17
    invoke-static {}, Lo1/u;->Z0()I

    goto/16 :goto_f

    :cond_18
    const/16 v2, 0x201

    .line 123
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 124
    :cond_19
    invoke-static {v5}, Lo1/u;->F(I)V

    goto/16 :goto_f

    .line 125
    :cond_1a
    invoke-static {}, Lo1/u;->A()V

    goto/16 :goto_f

    .line 126
    :cond_1b
    iget-object v0, v1, Lz/i;->t:Lo1/k0;

    invoke-virtual {v0, v5}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 127
    invoke-static {}, Lo1/u;->x()I

    goto/16 :goto_f

    .line 128
    :cond_1c
    iget-object v0, v1, Lz/i;->t:Lo1/k0;

    invoke-virtual {v0, v5}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 129
    invoke-static {}, Lo1/u;->H()I

    goto/16 :goto_f

    .line 130
    :cond_1d
    invoke-static {}, Lu0/d;->D1()V

    goto/16 :goto_f

    :cond_1e
    const/16 v2, 0x213

    .line 131
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    .line 132
    :cond_1f
    invoke-static {}, Lo1/u;->q()V

    goto/16 :goto_f

    .line 133
    :cond_20
    invoke-static {}, Lo1/u;->r()V

    goto/16 :goto_f

    :cond_21
    const/16 v2, 0x240

    .line 134
    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    goto/16 :goto_f

    :pswitch_4d
    add-int/lit8 v0, p2, 0x1

    .line 135
    aget-byte v0, p1, v0

    if-eq v0, v10, :cond_23

    if-eq v0, v9, :cond_22

    goto/16 :goto_f

    .line 136
    :cond_22
    invoke-static {}, Lu0/d;->z1()V

    goto/16 :goto_f

    .line 137
    :cond_23
    invoke-static {}, Lu0/d;->t1()V

    goto/16 :goto_f

    .line 138
    :pswitch_4e
    invoke-static {}, Lu0/d;->w1()V

    goto/16 :goto_f

    .line 139
    :pswitch_4f
    iget-object v0, v1, Lz/i;->w:Lo1/l0;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lo1/l0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 140
    invoke-static {}, Lu0/d;->E1()V

    goto/16 :goto_f

    :pswitch_50
    add-int/lit8 v0, p2, 0x1

    .line 141
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    packed-switch v0, :pswitch_data_c

    goto/16 :goto_f

    .line 142
    :pswitch_51
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v10}, Lu0/i;->k4(I)V

    goto/16 :goto_f

    .line 143
    :pswitch_52
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu0/i;->k4(I)V

    goto/16 :goto_f

    .line 144
    :pswitch_53
    invoke-static {v10}, Lu0/d;->e3(I)V

    goto/16 :goto_f

    .line 145
    :pswitch_54
    invoke-static {v4}, Lu0/d;->e3(I)V

    goto/16 :goto_f

    .line 146
    :pswitch_55
    invoke-static {v4}, Lu0/d;->d3(I)V

    goto/16 :goto_f

    .line 147
    :pswitch_56
    invoke-static {v10}, Lu0/d;->d3(I)V

    goto/16 :goto_f

    .line 148
    :pswitch_57
    invoke-static {v10}, Lu0/d;->x0(I)V

    goto/16 :goto_f

    .line 149
    :pswitch_58
    invoke-static {v4}, Lu0/d;->x0(I)V

    goto/16 :goto_f

    :pswitch_59
    add-int/lit8 v0, p2, 0x1

    .line 150
    aget-byte v0, p1, v0

    .line 151
    sget v2, Lo0/e;->a:I

    if-eq v2, v10, :cond_26

    if-eq v2, v8, :cond_26

    if-ne v2, v9, :cond_24

    sget v2, Lo0/e;->k0:I

    if-nez v2, :cond_26

    :cond_24
    sget v2, Lo0/e;->a:I

    if-ne v2, v6, :cond_25

    sget v2, Lo0/e;->k0:I

    if-nez v2, :cond_26

    :cond_25
    sget v2, Lo0/e;->a:I

    if-ne v2, v13, :cond_27

    sget v2, Lo0/e;->k0:I

    if-eqz v2, :cond_27

    :cond_26
    shr-int/lit8 v2, v0, 0x7

    and-int/2addr v2, v10

    .line 152
    invoke-static {v2}, Lo0/g;->n(I)V

    :cond_27
    shr-int/2addr v0, v9

    and-int/2addr v0, v10

    if-ne v0, v10, :cond_28

    move v4, v10

    .line 153
    :cond_28
    sput-boolean v4, Lo0/e;->e:Z

    goto/16 :goto_f

    :pswitch_5a
    add-int/lit8 v0, p2, 0x1

    .line 154
    aget-byte v0, p1, v0

    if-eqz v0, :cond_2f

    if-eq v0, v10, :cond_2e

    if-eq v0, v9, :cond_2d

    if-eq v0, v13, :cond_2c

    const/16 v2, 0xe

    if-eq v0, v2, :cond_2b

    const/16 v2, 0x15

    if-eq v0, v2, :cond_2a

    const/16 v2, 0x30

    if-eq v0, v2, :cond_29

    packed-switch v0, :pswitch_data_d

    packed-switch v0, :pswitch_data_e

    packed-switch v0, :pswitch_data_f

    const/4 v0, -0x1

    :goto_0
    const/4 v2, -0x1

    goto :goto_1

    :pswitch_5b
    const/16 v0, 0x2c

    goto :goto_0

    :pswitch_5c
    const/16 v0, 0x2b

    goto :goto_0

    :pswitch_5d
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_5e
    const/16 v0, 0x29

    goto :goto_0

    :pswitch_5f
    const/16 v0, 0x28

    goto :goto_0

    :pswitch_60
    const/16 v0, 0x25

    goto :goto_0

    :pswitch_61
    const/16 v0, 0x24

    goto :goto_0

    :pswitch_62
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_63
    const/16 v0, 0x19

    goto :goto_0

    :pswitch_64
    const/16 v0, 0x18

    goto :goto_0

    :pswitch_65
    const/16 v0, 0x17

    goto :goto_0

    :cond_29
    const/16 v0, 0x27

    goto :goto_0

    :cond_2a
    const/16 v0, 0x1a

    goto :goto_0

    :cond_2b
    :pswitch_66
    const/16 v0, 0x1b

    goto :goto_0

    :cond_2c
    const/16 v0, 0x15

    goto :goto_0

    :cond_2d
    const/16 v0, 0x11

    goto :goto_0

    :cond_2e
    const/16 v0, 0x12

    goto :goto_0

    :cond_2f
    move v0, v12

    goto :goto_0

    :goto_1
    if-eq v0, v2, :cond_73

    .line 155
    sget v2, Lu0/b;->v4:I

    if-nez v2, :cond_73

    new-array v2, v9, [Ljava/lang/Object;

    .line 156
    sget v3, Lu0/b;->O:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, " HandleMain lase Mcu STATE: %2X  NEW App ID =  %2X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Qin"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-static {v0}, Lu0/d;->Z1(I)V

    goto/16 :goto_f

    :pswitch_67
    add-int/lit8 v0, p2, 0x1

    .line 158
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    .line 159
    sget v2, Lu0/b;->q1:I

    if-eq v2, v0, :cond_73

    const/16 v2, 0x77

    new-array v3, v10, [I

    aput v0, v3, v4

    .line 160
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    .line 161
    sput v0, Lu0/b;->q1:I

    goto/16 :goto_f

    :pswitch_68
    const/16 v0, 0x3f9

    .line 162
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_30

    sget-object v0, Lbase/Configure$Property;->p:Lbase/Configure$Property;

    invoke-virtual {v0, v10}, Lbase/Configure$Property;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_30

    goto/16 :goto_f

    :cond_30
    add-int/lit8 v0, p2, 0x1

    .line 163
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    const-string/jumbo v2, "ro.sf.swrotation"

    .line 164
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    div-int/lit8 v2, v2, 0x5a

    rem-int/2addr v2, v6

    sub-int v2, v0, v2

    add-int/2addr v2, v6

    .line 165
    rem-int/2addr v2, v6

    const/16 v3, 0xa

    .line 166
    invoke-static {v3, v0}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 167
    :try_start_0
    invoke-static {}, La/f;->j()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    :pswitch_69
    add-int/lit8 v0, p2, 0x1

    .line 169
    aget-byte v2, p1, v0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    .line 170
    sget v5, Lu0/b;->o1:I

    if-eq v5, v2, :cond_73

    const/16 v5, 0x73

    new-array v6, v10, [I

    .line 171
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    aput v0, v6, v4

    invoke-static {v5, v6}, Lu0/d;->I3(I[I)V

    .line 172
    sput v2, Lu0/b;->o1:I

    goto/16 :goto_f

    :pswitch_6a
    const/16 v3, 0xff

    add-int/lit8 v0, p2, 0x1

    .line 173
    aget-byte v0, p1, v0

    and-int/2addr v0, v3

    .line 174
    sget v2, Lu0/b;->n1:I

    if-eq v2, v0, :cond_73

    const/16 v2, 0x72

    new-array v3, v10, [I

    aput v0, v3, v4

    .line 175
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    .line 176
    sput v0, Lu0/b;->n1:I

    goto/16 :goto_f

    :sswitch_0
    add-int/lit8 v0, p2, 0x1

    .line 177
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_31

    .line 178
    invoke-static {v4}, Lk0/qt;->v0(I)V

    goto/16 :goto_f

    .line 179
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STEP2 MCU 0x7A \u56de\u4f20\u7684\u534f\u8baeID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lz/i;->m:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u9ad8\u4f4e\u914d = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAN"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    shl-int/2addr v0, v12

    .line 180
    iget v2, v1, Lz/i;->m:I

    or-int/2addr v0, v2

    invoke-static {v0}, Lk0/qt;->J(I)V

    goto/16 :goto_f

    .line 181
    :sswitch_1
    sget v0, Lp0/b;->j:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 182
    aget-byte v0, p1, v0

    if-eqz v0, :cond_35

    if-eq v0, v10, :cond_34

    if-eq v0, v9, :cond_33

    if-eq v0, v8, :cond_32

    goto/16 :goto_f

    .line 183
    :cond_32
    invoke-static {v8}, Lp0/c;->a(I)V

    goto/16 :goto_f

    .line 184
    :cond_33
    invoke-static {v9}, Lp0/c;->a(I)V

    goto/16 :goto_f

    .line 185
    :cond_34
    invoke-static {v10}, Lp0/c;->a(I)V

    goto/16 :goto_f

    .line 186
    :cond_35
    invoke-static {v4}, Lp0/c;->a(I)V

    goto/16 :goto_f

    :sswitch_2
    const/16 v0, 0xc6

    .line 187
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 188
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Lw0/f;->a(I)V

    goto/16 :goto_f

    :sswitch_3
    add-int/lit8 v0, p2, 0x1

    .line 189
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Lw0/f;->r(I)V

    goto/16 :goto_f

    .line 190
    :sswitch_4
    sget v0, Ly0/f;->h1:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 191
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v10

    invoke-static {v0}, Ly0/h;->j(I)V

    goto/16 :goto_f

    .line 192
    :sswitch_5
    sget v0, Lu0/b;->y4:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 193
    aget-byte v0, p1, v0

    shr-int/2addr v0, v4

    and-int/2addr v0, v10

    invoke-static {v0}, Lu0/d;->m2(I)V

    goto/16 :goto_f

    .line 194
    :sswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    shr-int/2addr v2, v4

    and-int/2addr v2, v10

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.fyt.mcu_reverse"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 195
    :sswitch_7
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/2addr v2, v10

    if-nez v2, :cond_36

    move v4, v10

    :cond_36
    invoke-virtual {v0, v4}, Lu0/i;->q4(Z)V

    goto/16 :goto_f

    :sswitch_8
    add-int/lit8 v0, p2, 0x1

    .line 196
    aget-byte v0, p1, v0

    if-eq v0, v10, :cond_38

    if-eq v0, v9, :cond_37

    goto/16 :goto_f

    .line 197
    :cond_37
    sget-object v0, Lw0/d;->b:Lw0/g;

    const/4 v2, -0x2

    invoke-interface {v0, v2}, Lw0/g;->x(I)V

    goto/16 :goto_f

    .line 198
    :cond_38
    sget-object v0, Lw0/d;->b:Lw0/g;

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Lw0/g;->x(I)V

    goto/16 :goto_f

    .line 199
    :sswitch_9
    invoke-static {v10}, Lu0/d;->Q1(I)V

    goto/16 :goto_f

    .line 200
    :sswitch_a
    sget-boolean v0, Ly0/f;->v:Z

    if-eqz v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 201
    aget-byte v0, p1, v0

    sget v2, Ly0/f;->t:I

    if-eq v0, v2, :cond_39

    move v4, v10

    :cond_39
    sput-boolean v4, Ly0/f;->v:Z

    goto/16 :goto_f

    :sswitch_b
    add-int/lit8 v0, p2, 0x1

    .line 202
    aget-byte v0, p1, v0

    if-eq v0, v9, :cond_3b

    if-eq v0, v8, :cond_3a

    goto/16 :goto_f

    :cond_3a
    const/16 v0, 0x3f7

    new-array v2, v10, [I

    aput v10, v2, v4

    .line 203
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :cond_3b
    const/16 v0, 0x3f7

    new-array v2, v10, [I

    aput v4, v2, v4

    .line 204
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_f

    :sswitch_c
    add-int/lit8 v0, p2, 0x1

    .line 205
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    .line 206
    sget v2, Lu0/b;->r1:I

    if-eq v2, v0, :cond_73

    const/16 v2, 0x78

    new-array v3, v10, [I

    aput v0, v3, v4

    .line 207
    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    .line 208
    sput v0, Lu0/b;->r1:I

    goto/16 :goto_f

    :sswitch_d
    add-int/lit8 v0, p2, 0x1

    .line 209
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    invoke-static {v0}, Lu0/d;->P1(I)V

    goto/16 :goto_f

    :sswitch_e
    add-int/lit8 v0, p2, 0x1

    .line 210
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Lw0/f;->m(I)V

    goto/16 :goto_f

    .line 211
    :sswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    const/16 v3, 0xff

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sys.fyt.mcu_cus_id"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    :sswitch_10
    add-int/lit8 v0, p2, 0x1

    .line 212
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Lw0/f;->d(I)V

    goto/16 :goto_f

    :sswitch_11
    add-int/lit8 v0, p2, 0x1

    .line 213
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    invoke-static {v0}, Lw0/f;->C(I)V

    goto/16 :goto_f

    :sswitch_12
    const/16 v2, 0xff

    add-int/lit8 v0, p2, 0x1

    .line 214
    aget-byte v0, p1, v0

    and-int/2addr v0, v2

    invoke-static {v0}, Lw0/f;->D(I)V

    goto/16 :goto_f

    :sswitch_13
    add-int/lit8 v0, p2, 0x1

    .line 215
    aget-byte v0, p1, v0

    and-int/2addr v0, v11

    if-eqz v0, :cond_3e

    if-eq v0, v10, :cond_3e

    if-eq v0, v9, :cond_3d

    if-eq v0, v8, :cond_3c

    goto/16 :goto_f

    .line 216
    :cond_3c
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v10}, Lu0/i;->n4(I)V

    goto/16 :goto_f

    .line 217
    :cond_3d
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu0/i;->n4(I)V

    goto/16 :goto_f

    .line 218
    :cond_3e
    invoke-static {v0}, Lu0/d;->e1(I)V

    goto/16 :goto_f

    .line 219
    :sswitch_14
    sget v0, Ly0/f;->d1:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 220
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    if-nez v0, :cond_3f

    move v4, v10

    :cond_3f
    invoke-static {v4}, Ly0/h;->l(I)V

    goto/16 :goto_f

    .line 221
    :sswitch_15
    sget v0, Ly0/f;->e1:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 222
    aget-byte v0, p1, v0

    and-int/2addr v0, v10

    invoke-static {v0}, Ly0/h;->a0(I)V

    goto/16 :goto_f

    :cond_40
    add-int/lit8 v0, p2, 0x1

    .line 223
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-nez v0, :cond_73

    .line 224
    sget-object v0, Ly0/f;->b:Ly0/e;

    if-eqz v0, :cond_73

    instance-of v2, v0, Lmodule/sound/AudioDevice;

    if-eqz v2, :cond_73

    .line 225
    check-cast v0, Lmodule/sound/AudioDevice;

    invoke-virtual {v0, v10}, Lmodule/sound/AudioDevice;->z(Z)V

    goto/16 :goto_f

    .line 226
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=================>>MCU to value :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    aget-byte v3, p1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  data[start+1] >> 0 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    shr-int/2addr v3, v4

    and-int/2addr v3, v10

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Beep"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    aget-byte v0, p1, v2

    shr-int/2addr v0, v4

    and-int/2addr v0, v10

    invoke-static {v0}, Ly0/h;->q(I)V

    goto/16 :goto_f

    :cond_42
    const/16 v0, 0x9

    .line 228
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 229
    invoke-static {}, Lg/f;->m()Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_43
    add-int/lit8 v0, p2, 0x1

    .line 230
    aget-byte v0, p1, v0

    const/16 v2, 0xff

    and-int/2addr v0, v2

    if-ne v0, v10, :cond_44

    move v2, v10

    goto :goto_2

    :cond_44
    move v2, v4

    :goto_2
    if-ne v0, v8, :cond_45

    move v3, v10

    goto :goto_3

    :cond_45
    move v3, v4

    :goto_3
    if-ne v0, v13, :cond_46

    move v0, v10

    goto :goto_4

    :cond_46
    move v0, v4

    :goto_4
    if-nez v2, :cond_48

    if-nez v3, :cond_48

    if-eqz v0, :cond_47

    goto :goto_5

    .line 231
    :cond_47
    sput-boolean v4, Ll0/c0;->q:Z

    goto :goto_6

    .line 232
    :cond_48
    :goto_5
    sput-boolean v10, Ll0/c0;->p:Z

    .line 233
    sput-boolean v10, Ll0/c0;->q:Z

    .line 234
    sput v4, Ll0/c0;->t:I

    .line 235
    sput v4, Ll0/c0;->r:I

    .line 236
    sput v4, Ll0/c0;->v:I

    .line 237
    :goto_6
    sget v5, Ll0/c0;->r:I

    if-lez v5, :cond_49

    move v5, v10

    goto :goto_7

    :cond_49
    move v5, v4

    :goto_7
    or-int/2addr v5, v3

    .line 238
    sget v11, Ll0/c0;->t:I

    if-lez v11, :cond_4a

    move v11, v10

    goto :goto_8

    :cond_4a
    move v11, v4

    :goto_8
    or-int/2addr v11, v2

    shl-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x8

    shl-int/lit8 v6, v11, 0x4

    and-int/2addr v6, v12

    or-int/2addr v5, v6

    .line 239
    sget v6, Lu0/b;->w:I

    shl-int/lit8 v6, v6, 0x6

    and-int/2addr v6, v15

    or-int/2addr v5, v6

    .line 240
    sget v6, Lk0/nt;->a:I

    const v8, 0xffff

    and-int/2addr v8, v6

    const/16 v11, 0x14

    if-eq v8, v11, :cond_4b

    const/16 v11, 0x70

    if-eq v8, v11, :cond_4b

    const/16 v11, 0x12a

    if-eq v8, v11, :cond_4b

    const/16 v11, 0x1be

    if-eq v8, v11, :cond_4b

    const/16 v11, 0x1c0

    if-eq v8, v11, :cond_4b

    const/16 v11, 0x1bb

    if-eq v8, v11, :cond_4b

    const/16 v11, 0x1bc

    if-eq v8, v11, :cond_4b

    sparse-switch v6, :sswitch_data_1

    const/16 v6, 0x419

    new-array v8, v9, [I

    const/16 v9, 0xb

    aput v9, v8, v4

    aput v5, v8, v10

    .line 241
    invoke-static {v6, v8, v7, v7}, Lk0/qt;->A0(I[I[F[Ljava/lang/String;)V

    .line 242
    :cond_4b
    :sswitch_16
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v5

    const/16 v6, 0x1000

    sget v7, Ll0/c0;->t:I

    if-lez v7, :cond_4c

    move v7, v10

    goto :goto_9

    :cond_4c
    move v7, v4

    :goto_9
    or-int/2addr v2, v7

    invoke-virtual {v5, v6, v2}, Lu0/i;->g4(IZ)V

    .line 243
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v2

    const/16 v5, 0x2000

    sget v6, Ll0/c0;->r:I

    if-lez v6, :cond_4d

    move v6, v10

    goto :goto_a

    :cond_4d
    move v6, v4

    :goto_a
    or-int/2addr v3, v6

    invoke-virtual {v2, v5, v3}, Lu0/i;->g4(IZ)V

    const/16 v2, 0x8b

    new-array v3, v10, [I

    .line 244
    sget v5, Ll0/c0;->v:I

    if-lez v5, :cond_4e

    goto :goto_b

    :cond_4e
    move v10, v4

    :goto_b
    or-int/2addr v0, v10

    aput v0, v3, v4

    invoke-static {v2, v3}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    :cond_4f
    add-int/lit8 v0, p2, 0x1

    .line 245
    aget-byte v2, p1, v0

    and-int/2addr v2, v10

    aget-byte v0, p1, v0

    shr-int/2addr v0, v10

    and-int/2addr v0, v10

    invoke-static {v2, v0}, Lu0/d;->Z(II)V

    goto/16 :goto_f

    .line 246
    :cond_50
    sget v0, Ly0/f;->Z0:I

    if-nez v0, :cond_73

    add-int/lit8 v0, p2, 0x1

    .line 247
    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x7f

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "====== >>>  Mcu to Arm vol : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "soundMute"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {v0}, Ly0/h;->t0(I)V

    goto/16 :goto_f

    :cond_51
    add-int/lit8 v0, p2, 0x1

    .line 250
    aget-byte v0, p1, v0

    if-eqz v0, :cond_63

    if-eq v0, v10, :cond_61

    if-eq v0, v9, :cond_60

    if-eq v0, v8, :cond_5f

    if-eq v0, v6, :cond_5e

    if-eq v0, v13, :cond_5d

    if-eq v0, v11, :cond_5c

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5b

    if-eq v0, v3, :cond_59

    const/16 v2, 0x32

    if-eq v0, v2, :cond_57

    const/16 v2, 0x70

    if-eq v0, v2, :cond_56

    packed-switch v0, :pswitch_data_10

    packed-switch v0, :pswitch_data_11

    goto/16 :goto_f

    .line 251
    :pswitch_6b
    invoke-virtual/range {p0 .. p0}, Lz/i;->e()I

    move-result v0

    if-eqz v0, :cond_73

    .line 252
    invoke-static {v4}, Lu0/d;->i(I)V

    .line 253
    sput v8, Lu0/b;->w3:I

    goto/16 :goto_f

    .line 254
    :pswitch_6c
    iget-object v0, v1, Lz/i;->u:Lo1/k0;

    const/16 v2, 0x7d0

    invoke-virtual {v0, v2}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 255
    invoke-static {}, Lu0/d;->c3()V

    .line 256
    :cond_52
    invoke-static {}, Lg/e;->m()Z

    move-result v0

    if-nez v0, :cond_73

    sget v0, Ly0/f;->z:I

    if-nez v0, :cond_53

    sget v0, Ly0/f;->C0:I

    sget v2, Ly0/f;->B:I

    if-le v0, v2, :cond_73

    .line 257
    :cond_53
    sget v0, Ly0/f;->B:I

    invoke-static {v0}, Ly0/h;->t0(I)V

    goto/16 :goto_f

    .line 258
    :pswitch_6d
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_73

    .line 259
    invoke-static {}, Ly0/h;->P()V

    .line 260
    sget-object v0, Lu0/c;->l:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    goto/16 :goto_f

    .line 261
    :pswitch_6e
    invoke-static {v10}, Lu0/d;->d1(I)V

    goto/16 :goto_f

    .line 262
    :pswitch_6f
    invoke-static {v4}, Lu0/d;->d1(I)V

    goto/16 :goto_f

    .line 263
    :pswitch_70
    sget v0, Lu0/b;->P3:I

    if-nez v0, :cond_73

    .line 264
    invoke-static {v4}, Lu0/d;->t3(I)V

    .line 265
    sget v0, Lu0/b;->F:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_55

    if-ne v0, v6, :cond_54

    .line 266
    sget v0, Lo0/e;->a:I

    if-lez v0, :cond_54

    .line 267
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v4}, Lu0/h;->c(I)V

    .line 268
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object v0

    new-instance v2, Lz/i$g;

    invoke-direct {v2, v1}, Lz/i$g;-><init>(Lz/i;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    .line 269
    :cond_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------->>> DataMain.sAppIdUIRequest:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->F:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Qin"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    sget-object v0, Lu0/b;->c:Lu0/h;

    sget v2, Lu0/b;->F:I

    invoke-interface {v0, v2}, Lu0/h;->c(I)V

    goto/16 :goto_f

    .line 271
    :cond_55
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v4}, Lu0/h;->c(I)V

    goto/16 :goto_f

    .line 272
    :pswitch_71
    sget v0, Lu0/b;->P3:I

    if-nez v0, :cond_73

    .line 273
    invoke-static {v10}, Lu0/d;->t3(I)V

    goto/16 :goto_f

    .line 274
    :cond_56
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v2, "STEP1 MCU\u901a\u77e5\u670d\u52a1\u4e0d\u518d\u5904\u7406canbus\u534f\u8bae"

    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    .line 275
    sput v10, Lk0/nt;->i:I

    .line 276
    sput-boolean v10, Lm1/a;->e:Z

    const-string v0, "Qin"

    const-string v2, "================ >>>  Mcu to Arm 0x70    DataStore.localStore = true"

    .line 277
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Ly0/h;->w()V

    goto/16 :goto_f

    .line 279
    :cond_57
    invoke-virtual/range {p0 .. p0}, Lz/i;->e()I

    move-result v0

    if-eqz v0, :cond_58

    return-void

    .line 280
    :cond_58
    invoke-static {v4}, Lu0/d;->i(I)V

    goto/16 :goto_f

    .line 281
    :cond_59
    invoke-virtual/range {p0 .. p0}, Lz/i;->e()I

    move-result v0

    if-eqz v0, :cond_5a

    return-void

    .line 282
    :cond_5a
    invoke-static {v10}, Lu0/d;->i(I)V

    goto/16 :goto_f

    .line 283
    :cond_5b
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu0/i;->z3(Z)V

    goto/16 :goto_f

    .line 284
    :cond_5c
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0, v10}, Lu0/i;->z3(Z)V

    goto/16 :goto_f

    .line 285
    :cond_5d
    sget-object v0, Ly0/f;->A0:Lo1/k0;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 286
    invoke-static {v4}, Ly0/h;->Z(I)V

    goto/16 :goto_f

    .line 287
    :cond_5e
    sget-object v0, Ly0/f;->A0:Lo1/k0;

    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Lo1/k0;->c(I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 288
    invoke-static {v10}, Ly0/h;->Z(I)V

    goto/16 :goto_f

    .line 289
    :cond_5f
    invoke-static {v4}, Lu0/d;->M(I)V

    goto/16 :goto_f

    .line 290
    :cond_60
    invoke-static {v10}, Lu0/d;->M(I)V

    goto/16 :goto_f

    .line 291
    :cond_61
    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_62

    .line 292
    iget-object v0, v1, Lz/i;->w:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 293
    :cond_62
    invoke-static {v10}, Lu0/d;->T1(I)V

    goto/16 :goto_f

    .line 294
    :cond_63
    invoke-static {v4}, Lu0/d;->T1(I)V

    goto/16 :goto_f

    :cond_64
    add-int/lit8 v0, p2, 0x1

    .line 295
    aget-byte v0, p1, v0

    const-string/jumbo v2, "sys.sleeptimes"

    const-string/jumbo v3, "sys.fyt.sleeping"

    const-string/jumbo v7, "sleep"

    packed-switch v0, :pswitch_data_12

    goto/16 :goto_f

    .line 296
    :pswitch_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0x89 0x55 canSleep = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lo1/q0;->l()Z

    move-result v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lo1/q0;->l()Z

    move-result v0

    if-eqz v0, :cond_73

    .line 298
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v6, :cond_66

    .line 299
    iget-object v0, v1, Lz/i;->v:Lo1/l0;

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6}, Lo1/l0;->c(I)Z

    move-result v0

    if-nez v0, :cond_65

    goto/16 :goto_f

    :cond_65
    const-wide/16 v11, 0x7d0

    .line 300
    invoke-static {v11, v12}, La/i;->a0(J)V

    new-array v0, v8, [I

    .line 301
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    const-wide/16 v8, 0x1f4

    .line 302
    invoke-static {v8, v9}, La/i;->a0(J)V

    .line 303
    iget-object v0, v1, Lz/i;->v:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    goto :goto_c

    :cond_66
    new-array v0, v8, [I

    .line 304
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    const-wide/16 v8, 0x1f4

    .line 305
    invoke-static {v8, v9}, La/i;->a0(J)V

    .line 306
    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    add-int/2addr v5, v10

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Ly0/f;->b:Ly0/e;

    instance-of v0, v0, Lmodule/sound/AudioDevice;

    if-nez v0, :cond_67

    .line 308
    invoke-static {v4}, Lo1/q0;->y(I)V

    .line 309
    :cond_67
    invoke-static {}, La/i;->D()V

    const-string v0, "0x89 0x55 gotoSleep 01"

    .line 310
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, La/i;->m()V

    .line 312
    sput-boolean v4, Lu0/b;->e4:Z

    const-string v0, "0x89 0x55 gotoSleep 02"

    .line 313
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 314
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    new-array v2, v10, [I

    aput v4, v2, v4

    .line 315
    invoke-static {v0, v2}, Lu0/d;->I3(I[I)V

    goto/16 :goto_f

    .line 316
    :pswitch_73
    sput v4, Lz/i;->D:I

    new-array v0, v8, [I

    .line 317
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x89 0x54 STEP3 + time: = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 319
    :pswitch_74
    sput v4, Lu0/b;->m1:I

    const-string v0, "1"

    .line 320
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    new-array v5, v10, [I

    aput v10, v5, v4

    .line 321
    invoke-static {v0, v5}, Lu0/d;->I3(I[I)V

    .line 322
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget v5, Lu0/b;->Z1:I

    if-le v0, v5, :cond_68

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0x89 0x53 reboot reason "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v4}, Lo1/s0;->m(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->Z1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    .line 324
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-static {}, La/i;->U()V

    return-void

    .line 326
    :cond_68
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v6, :cond_69

    invoke-static {}, Lo1/q0;->l()Z

    move-result v0

    if-nez v0, :cond_69

    const-string v0, "0"

    .line 327
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 328
    :cond_69
    sget v0, Lz/i;->D:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lz/i;->D:I

    if-ne v0, v9, :cond_6c

    const/16 v0, 0xce

    .line 329
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    if-eqz v0, :cond_6b

    const/16 v0, 0xaa

    .line 330
    invoke-static {v9, v0}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 331
    array-length v2, v0

    if-lt v2, v9, :cond_6a

    aget-byte v2, v0, v4

    const/16 v3, 0xff

    and-int/2addr v2, v3

    const/16 v5, 0x55

    if-ne v2, v5, :cond_6a

    aget-byte v0, v0, v10

    and-int/2addr v0, v3

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_6a

    move v0, v10

    goto :goto_d

    :cond_6a
    move v0, v4

    :goto_d
    if-nez v0, :cond_6b

    const/16 v0, 0xa9

    .line 332
    invoke-static {v10, v0}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v0

    .line 333
    invoke-static {v0, v4}, Lo1/s0;->f([BI)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 334
    aget-byte v0, v0, v4

    const/16 v2, 0xff

    and-int/2addr v0, v2

    and-int/2addr v0, v10

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sleep Fix MCU_OPTIONS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MCU"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    sget v2, Lu0/b;->X:I

    if-eq v2, v0, :cond_6b

    .line 337
    invoke-static {v0}, Lu0/d;->W1(I)V

    .line 338
    :cond_6b
    invoke-static {v4}, Lo1/q0;->m(I)V

    .line 339
    invoke-static {v4}, Lu0/d;->v(I)V

    .line 340
    invoke-static {}, Lg/e;->a()I

    move-result v0

    if-ne v0, v6, :cond_6c

    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_6c

    .line 341
    invoke-static {v10}, Lg/d;->I(I)V

    .line 342
    :cond_6c
    sget v0, Lu0/b;->z3:I

    const-string v2, "persist.sys.wifi.states"

    const-string v3, "open"

    if-eqz v0, :cond_6e

    sget v0, Lu0/b;->X:I

    if-nez v0, :cond_6e

    .line 343
    invoke-static {}, La/i;->z()Z

    move-result v0

    if-nez v0, :cond_6d

    .line 344
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    .line 345
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_6d
    sget v0, Lz/i;->D:I

    if-le v0, v6, :cond_73

    new-array v0, v8, [I

    .line 347
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x89 0x53 REVEIVER MCU "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 349
    :cond_6e
    invoke-static {}, La/i;->z()Z

    move-result v0

    if-nez v0, :cond_70

    .line 350
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 351
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_6f
    invoke-static {}, La/i;->f()V

    goto :goto_e

    .line 353
    :cond_70
    sget v0, Lz/i;->D:I

    if-le v0, v6, :cond_71

    new-array v0, v8, [I

    .line 354
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x89 0x53 REVEIVER MCU "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_71
    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x89 0x53 STEP2 + time: = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 357
    :cond_72
    sput v4, Lz/i;->D:I

    .line 358
    invoke-static {v4}, Lu0/d;->T1(I)V

    :cond_73
    :goto_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x70 -> :sswitch_15
        -0x6e -> :sswitch_14
        -0x6a -> :sswitch_13
        -0x66 -> :sswitch_12
        -0x64 -> :sswitch_11
        -0x62 -> :sswitch_10
        -0x60 -> :sswitch_f
        -0x45 -> :sswitch_e
        -0x41 -> :sswitch_d
        -0x2a -> :sswitch_c
        -0x10 -> :sswitch_b
        -0xb -> :sswitch_a
        -0x4 -> :sswitch_9
        0xd -> :sswitch_8
        0x29 -> :sswitch_7
        0x42 -> :sswitch_6
        0x50 -> :sswitch_5
        0x56 -> :sswitch_4
        0x60 -> :sswitch_3
        0x62 -> :sswitch_2
        0x78 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch -0x2f
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_5a
        :pswitch_59
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10
        :pswitch_41
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x21
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x30
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

    :pswitch_data_6
    .packed-switch 0x50
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x12
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x24
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_9
    .packed-switch -0x7f
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0x50
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x70
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
    .end packed-switch

    :pswitch_data_d
    .packed-switch 0x7
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_66
    .end packed-switch

    :pswitch_data_e
    .packed-switch 0x20
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_60
    .end packed-switch

    :pswitch_data_f
    .packed-switch 0x41
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0xc01c0 -> :sswitch_16
        0x1101c0 -> :sswitch_16
        0x1701c0 -> :sswitch_16
        0x1801c0 -> :sswitch_16
        0x1901c0 -> :sswitch_16
        0x2d01c7 -> :sswitch_16
        0x5701c7 -> :sswitch_16
        0xbe01c8 -> :sswitch_16
        0xc101c8 -> :sswitch_16
    .end sparse-switch

    :pswitch_data_10
    .packed-switch 0x10
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
    .end packed-switch

    :pswitch_data_11
    .packed-switch 0x20
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
    .end packed-switch

    :pswitch_data_12
    .packed-switch 0x53
        :pswitch_74
        :pswitch_73
        :pswitch_72
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0xaa
        0x62
    .end array-data

    :array_1
    .array-data 4
        0x1
        0xaa
        0x62
    .end array-data

    :array_2
    .array-data 4
        0x1
        0xaa
        0x61
    .end array-data

    :array_3
    .array-data 4
        0x1
        0xaa
        0x5f
    .end array-data

    :array_4
    .array-data 4
        0x1
        0xaa
        0x5f
    .end array-data
.end method

.method public final k([BII)V
    .locals 1

    .line 1
    aget-byte p3, p1, p2

    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    add-int/2addr p2, v0

    .line 2
    aget-byte p1, p1, p2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {v0}, Lu0/d;->C2(I)V

    goto/16 :goto_0

    :pswitch_1
    add-int/2addr p2, v0

    .line 3
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->H2(I)V

    goto/16 :goto_0

    :pswitch_2
    add-int/2addr p2, v0

    .line 4
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->J2(I)V

    goto/16 :goto_0

    :pswitch_3
    add-int/2addr p2, v0

    .line 5
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->K2(I)V

    goto/16 :goto_0

    :pswitch_4
    add-int/2addr p2, v0

    .line 6
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->I2(I)V

    goto/16 :goto_0

    :pswitch_5
    add-int/2addr p2, v0

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->N2(I)V

    goto :goto_0

    :pswitch_6
    add-int/2addr p2, v0

    .line 8
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->P2(I)V

    goto :goto_0

    :pswitch_7
    add-int/2addr p2, v0

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->Q2(I)V

    goto :goto_0

    :pswitch_8
    add-int/2addr p2, v0

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->O2(I)V

    goto :goto_0

    :pswitch_9
    add-int/2addr p2, v0

    .line 11
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->U2(I)V

    goto :goto_0

    :pswitch_a
    add-int/2addr p2, v0

    .line 12
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->T2(I)V

    goto :goto_0

    :pswitch_b
    add-int/2addr p2, v0

    .line 13
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->S2(I)V

    goto :goto_0

    :pswitch_c
    add-int/2addr p2, v0

    .line 14
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->R2(I)V

    goto :goto_0

    :pswitch_d
    add-int/2addr p2, v0

    .line 15
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->G2(I)V

    goto :goto_0

    :pswitch_e
    add-int/2addr p2, v0

    .line 16
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->F2(I)V

    goto :goto_0

    :pswitch_f
    add-int/2addr p2, v0

    .line 17
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->E2(I)V

    goto :goto_0

    :pswitch_10
    add-int/2addr p2, v0

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lu0/d;->D2(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final l([BII)V
    .locals 11

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p3, v0, :cond_2e

    const/16 v0, -0x7e

    const/16 v3, -0xa

    const/16 v4, 0x23

    const/4 v5, 0x2

    if-eq p3, v0, :cond_24

    const/16 v0, 0x10

    if-eq p3, v0, :cond_23

    const/16 v6, 0x18

    if-eq p3, v6, :cond_1f

    const/16 v6, 0x30

    if-eq p3, v6, :cond_1e

    const/16 v6, 0x34

    if-eq p3, v6, :cond_1c

    const/high16 v6, 0x10000

    if-eqz p3, :cond_19

    if-eq p3, v2, :cond_18

    if-eq p3, v5, :cond_17

    const/16 v7, 0xc

    const/16 v8, 0x12

    const/4 v9, 0x3

    if-eq p3, v9, :cond_12

    const/4 v10, 0x5

    if-eq p3, v10, :cond_b

    const/4 v0, 0x6

    if-eq p3, v0, :cond_3

    const/4 v3, 0x7

    if-eq p3, v3, :cond_2

    const/16 v3, 0x8

    if-eq p3, v3, :cond_1f

    const/16 v1, 0x21

    if-eq p3, v1, :cond_1

    const/16 v1, 0x22

    if-eq p3, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    add-int/2addr p2, v2

    .line 2
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    and-int/lit8 p2, p1, 0x1

    .line 3
    invoke-static {p2}, Lw0/f;->q(I)V

    shr-int/lit8 p2, p1, 0x1

    and-int/2addr p2, v2

    .line 4
    invoke-static {p2}, Lw0/f;->u(I)V

    shr-int/lit8 p2, p1, 0x2

    and-int/2addr p2, v2

    .line 5
    invoke-static {p2}, Lw0/f;->y(I)V

    shr-int/lit8 p2, p1, 0x3

    and-int/2addr p2, v2

    .line 6
    invoke-static {p2}, Lw0/f;->v(I)V

    shr-int/lit8 p2, p1, 0x4

    and-int/2addr p2, v2

    .line 7
    invoke-static {p2}, Lw0/f;->s(I)V

    shr-int/lit8 p2, p1, 0x5

    and-int/2addr p2, v2

    .line 8
    invoke-static {p2}, Lw0/f;->w(I)V

    shr-int/2addr p1, v0

    and-int/2addr p1, v2

    .line 9
    invoke-static {p1}, Lw0/f;->t(I)V

    goto/16 :goto_5

    :cond_1
    add-int/2addr p2, v2

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lw0/f;->o(I)V

    goto/16 :goto_5

    :cond_2
    add-int/2addr p2, v2

    .line 11
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    invoke-static {p1}, Lw0/f;->k(I)V

    goto/16 :goto_5

    :cond_3
    add-int/2addr p2, v2

    .line 12
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    const/16 p2, 0xa

    if-lt p1, p2, :cond_4

    add-int/2addr p1, v3

    add-int/2addr p1, v1

    goto :goto_0

    :cond_4
    add-int/2addr p1, v6

    .line 13
    :goto_0
    invoke-static {p1}, Lw0/f;->e(I)V

    .line 14
    iget p2, p0, Lz/i;->A:I

    if-eq p2, p1, :cond_31

    .line 15
    iput p1, p0, Lz/i;->A:I

    move p1, v1

    :goto_1
    if-ge p1, v7, :cond_7

    .line 16
    sget-object p2, Lw0/d;->d:[I

    aget p3, p2, p1

    const/16 v0, 0x1f4

    if-lt p3, v0, :cond_5

    aget p2, p2, p1

    const/16 p3, 0x708

    if-le p2, p3, :cond_6

    :cond_5
    new-array p2, v9, [I

    aput v2, p2, v1

    aput v4, p2, v2

    add-int/lit8 p3, p1, 0x65

    aput p3, p2, v5

    .line 17
    invoke-static {p2}, Lz/k;->s([I)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_7
    move p1, v1

    :goto_2
    if-ge p1, v8, :cond_a

    .line 18
    sget-object p2, Lw0/d;->e:[I

    aget p3, p2, p1

    const/16 v0, 0x1964

    if-lt p3, v0, :cond_8

    aget p2, p2, p1

    const/16 p3, 0x2a30

    if-le p2, p3, :cond_9

    :cond_8
    new-array p2, v9, [I

    aput v2, p2, v1

    aput v4, p2, v2

    add-int/lit8 p3, p1, 0x1

    aput p3, p2, v5

    .line 19
    invoke-static {p2}, Lz/k;->s([I)V

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_a
    new-array p1, v9, [I

    .line 20
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_5

    :cond_b
    add-int/2addr p2, v2

    .line 21
    aget-byte p1, p1, p2

    if-eqz p1, :cond_11

    if-eq p1, v2, :cond_10

    if-eq p1, v5, :cond_f

    if-eq p1, v9, :cond_e

    if-eq p1, v0, :cond_d

    const/16 p2, 0x11

    if-eq p1, p2, :cond_c

    goto/16 :goto_5

    .line 22
    :cond_c
    invoke-static {v2}, Lw0/f;->z(I)V

    .line 23
    invoke-static {v2}, Lw0/f;->F(I)V

    goto/16 :goto_5

    .line 24
    :cond_d
    invoke-static {v2}, Lw0/f;->z(I)V

    .line 25
    invoke-static {v1}, Lw0/f;->F(I)V

    goto/16 :goto_5

    .line 26
    :cond_e
    invoke-static {v9}, Lw0/f;->A(I)V

    goto/16 :goto_5

    .line 27
    :cond_f
    invoke-static {v5}, Lw0/f;->A(I)V

    goto/16 :goto_5

    .line 28
    :cond_10
    invoke-static {v2}, Lw0/f;->A(I)V

    goto/16 :goto_5

    .line 29
    :cond_11
    invoke-static {v1}, Lw0/f;->A(I)V

    goto/16 :goto_5

    .line 30
    :cond_12
    iget p3, p0, Lz/i;->y:I

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p3, p1

    iput p3, p0, Lz/i;->y:I

    const p1, 0x186a0

    if-le p3, p1, :cond_15

    sub-int/2addr p3, p1

    .line 31
    iput p3, p0, Lz/i;->y:I

    .line 32
    iget p1, p0, Lz/i;->z:I

    const/4 p2, 0x4

    if-lt p1, v2, :cond_13

    if-gt p1, v8, :cond_13

    sub-int/2addr p1, v2

    .line 33
    iput p1, p0, Lz/i;->z:I

    if-ge p1, v8, :cond_14

    .line 34
    sget-object v0, Lw0/d;->e:[I

    aget v3, v0, p1

    if-eq v3, p3, :cond_14

    .line 35
    aput p3, v0, p1

    new-array v0, v5, [I

    add-int/2addr p1, v6

    aput p1, v0, v1

    aput p3, v0, v2

    .line 36
    invoke-static {p2, v0}, Lw0/f;->J(I[I)V

    goto :goto_3

    :cond_13
    const/16 v0, 0x65

    if-lt p1, v0, :cond_14

    const/16 v3, 0x70

    if-gt p1, v3, :cond_14

    sub-int/2addr p1, v0

    .line 37
    iput p1, p0, Lz/i;->z:I

    if-ge p1, v7, :cond_14

    .line 38
    sget-object v0, Lw0/d;->d:[I

    aget v3, v0, p1

    if-eq v3, p3, :cond_14

    .line 39
    aput p3, v0, p1

    new-array v0, v5, [I

    add-int/2addr p1, v1

    aput p1, v0, v1

    aput p3, v0, v2

    .line 40
    invoke-static {p2, v0}, Lw0/f;->J(I[I)V

    .line 41
    :cond_14
    :goto_3
    sget-object p1, Lw0/e;->d:Lo1/y;

    invoke-virtual {p1}, Lo1/y;->c()V

    goto :goto_4

    .line 42
    :cond_15
    iget-boolean p1, p0, Lz/i;->B:Z

    if-eqz p1, :cond_16

    .line 43
    invoke-static {p3}, Lw0/f;->h(I)V

    .line 44
    :cond_16
    :goto_4
    iput-boolean v1, p0, Lz/i;->B:Z

    goto/16 :goto_5

    .line 45
    :cond_17
    iget p3, p0, Lz/i;->y:I

    add-int/2addr p2, v2

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p3, p1

    iput p3, p0, Lz/i;->y:I

    goto/16 :goto_5

    :cond_18
    add-int/2addr p2, v2

    .line 46
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 p1, p1, 0x2710

    iput p1, p0, Lz/i;->y:I

    .line 47
    iput-boolean v2, p0, Lz/i;->B:Z

    goto/16 :goto_5

    :cond_19
    add-int/2addr p2, v2

    .line 48
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p1, v2

    if-gez p1, :cond_1a

    goto/16 :goto_5

    .line 49
    :cond_1a
    sget p2, Lw0/d;->h:I

    if-ltz p2, :cond_1b

    if-ge p2, v6, :cond_1b

    add-int/2addr p1, v1

    .line 50
    invoke-static {p1}, Lw0/f;->f(I)V

    goto/16 :goto_5

    :cond_1b
    if-lt p2, v6, :cond_31

    const/high16 p3, 0x20000

    if-ge p2, p3, :cond_31

    add-int/2addr p1, v6

    .line 51
    invoke-static {p1}, Lw0/f;->f(I)V

    goto/16 :goto_5

    :cond_1c
    add-int/2addr p2, v2

    .line 52
    aget-byte p1, p1, p2

    and-int/2addr p1, v2

    if-nez p1, :cond_1d

    move v1, v2

    .line 53
    :cond_1d
    invoke-static {v1}, Lw0/f;->j(I)V

    goto/16 :goto_5

    :cond_1e
    add-int/2addr p2, v2

    .line 54
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    sub-int/2addr p1, v2

    .line 55
    invoke-static {p1}, Lw0/f;->c(I)V

    goto/16 :goto_5

    :cond_1f
    add-int/2addr p2, v2

    .line 56
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    if-le p1, v2, :cond_20

    goto/16 :goto_5

    .line 57
    :cond_20
    sget p2, Lw0/d;->x:I

    if-eqz p2, :cond_21

    .line 58
    invoke-static {v1}, Lw0/f;->z(I)V

    .line 59
    invoke-static {v1}, Lw0/f;->F(I)V

    goto/16 :goto_5

    .line 60
    :cond_21
    invoke-static {v1}, Lw0/f;->z(I)V

    if-nez p1, :cond_22

    move v1, v2

    .line 61
    :cond_22
    invoke-static {v1}, Lw0/f;->F(I)V

    goto/16 :goto_5

    :cond_23
    add-int/2addr p2, v2

    .line 62
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    iput p1, p0, Lz/i;->z:I

    goto/16 :goto_5

    :cond_24
    add-int/2addr p2, v2

    .line 63
    aget-byte p1, p1, p2

    const/16 p2, -0x5f

    if-eq p1, p2, :cond_2d

    const/16 p2, -0x4f

    if-eq p1, p2, :cond_2c

    const/16 p2, -0x4d

    if-eq p1, p2, :cond_2b

    if-eq p1, v3, :cond_2a

    if-eq p1, v4, :cond_29

    const/16 p2, 0x7a

    if-eq p1, p2, :cond_2b

    const/16 p2, 0x36

    if-eq p1, p2, :cond_28

    const/16 p2, 0x37

    if-eq p1, p2, :cond_27

    const/16 p2, 0x41

    if-eq p1, p2, :cond_26

    const/16 p2, 0x42

    if-eq p1, p2, :cond_25

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_5

    .line 64
    :pswitch_0
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->n(I)V

    goto/16 :goto_5

    .line 65
    :pswitch_1
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->w(I)V

    goto/16 :goto_5

    .line 66
    :pswitch_2
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->o(I)V

    goto/16 :goto_5

    .line 67
    :pswitch_3
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->p(I)V

    goto/16 :goto_5

    .line 68
    :pswitch_4
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->c()V

    goto/16 :goto_5

    .line 69
    :pswitch_5
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->g()V

    goto/16 :goto_5

    .line 70
    :pswitch_6
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->i()V

    goto/16 :goto_5

    .line 71
    :pswitch_7
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->d()V

    goto/16 :goto_5

    .line 72
    :pswitch_8
    invoke-static {}, Lu0/d;->V0()V

    goto/16 :goto_5

    .line 73
    :pswitch_9
    invoke-static {}, Lu0/d;->U0()V

    goto :goto_5

    .line 74
    :pswitch_a
    invoke-static {}, Lu0/d;->T0()V

    goto :goto_5

    .line 75
    :pswitch_b
    invoke-static {}, Lu0/d;->S0()V

    goto :goto_5

    .line 76
    :pswitch_c
    invoke-static {}, Lu0/d;->R0()V

    goto :goto_5

    .line 77
    :pswitch_d
    invoke-static {}, Lu0/d;->Q0()V

    goto :goto_5

    .line 78
    :cond_25
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->h()V

    goto :goto_5

    .line 79
    :cond_26
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->B()V

    goto :goto_5

    .line 80
    :cond_27
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->A(I)V

    goto :goto_5

    .line 81
    :cond_28
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->save()V

    goto :goto_5

    .line 82
    :cond_29
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1, v5}, Lw0/g;->v(I)V

    goto :goto_5

    .line 83
    :cond_2a
    sget-object p1, Lw0/d;->b:Lw0/g;

    invoke-interface {p1}, Lw0/g;->k()V

    goto :goto_5

    .line 84
    :cond_2b
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lw0/g;->x(I)V

    goto :goto_5

    .line 85
    :cond_2c
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 p2, -0x3

    invoke-interface {p1, p2}, Lw0/g;->x(I)V

    goto :goto_5

    .line 86
    :cond_2d
    sget-object p1, Lw0/d;->b:Lw0/g;

    const/4 p2, -0x2

    invoke-interface {p1, p2}, Lw0/g;->x(I)V

    goto :goto_5

    :cond_2e
    add-int/2addr p2, v2

    .line 87
    aget-byte p1, p1, p2

    if-eqz p1, :cond_30

    if-eq p1, v2, :cond_2f

    goto :goto_5

    .line 88
    :cond_2f
    invoke-static {v1}, Lw0/f;->E(I)V

    goto :goto_5

    .line 89
    :cond_30
    invoke-static {v2}, Lw0/f;->E(I)V

    :cond_31
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x70
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x1
        0x3
        0x13
    .end array-data
.end method

.method public final m([BII)V
    .locals 5

    .line 1
    invoke-static {p1, p2, p3}, Lo1/b0;->h([BII)V

    .line 2
    aget-byte p3, p1, p2

    const/16 v0, 0x20

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p3, v0, :cond_4

    const/16 v0, 0x40

    if-eq p3, v0, :cond_2

    const/16 v0, 0x30

    if-eq p3, v0, :cond_1

    const/16 v0, 0x31

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    sget-object p3, Ly0/f;->b0:[I

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v4

    aput p1, p3, v2

    .line 4
    sget p1, Lk0/nt;->v:I

    if-eqz p1, :cond_5

    .line 5
    aget p1, p3, v2

    invoke-static {v2, p1}, Ly0/h;->E(II)V

    goto/16 :goto_0

    .line 6
    :pswitch_1
    sget-object p3, Ly0/f;->b0:[I

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v4

    aput p1, p3, v4

    .line 7
    sget p1, Lk0/nt;->v:I

    if-eqz p1, :cond_5

    .line 8
    aget p1, p3, v4

    invoke-static {v4, p1}, Ly0/h;->E(II)V

    goto/16 :goto_0

    .line 9
    :pswitch_2
    sget-object p3, Ly0/f;->b0:[I

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v4

    aput p1, p3, v3

    .line 10
    sget p1, Lk0/nt;->v:I

    if-eqz p1, :cond_5

    .line 11
    aget p1, p3, v3

    invoke-static {v3, p1}, Ly0/h;->E(II)V

    goto :goto_0

    .line 12
    :cond_0
    sget p3, Ly0/f;->j:I

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, Ly0/h;->o(II)V

    goto :goto_0

    :cond_1
    add-int/2addr p2, v4

    .line 13
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    sget p2, Ly0/f;->l:I

    invoke-static {p1, p2}, Ly0/h;->o(II)V

    goto :goto_0

    .line 14
    :cond_2
    sget p3, Ly0/f;->g1:I

    if-nez p3, :cond_3

    add-int/lit8 p3, p2, 0x1

    .line 15
    aget-byte p3, p1, p3

    and-int/2addr p3, v4

    invoke-static {p3}, Ly0/h;->S(I)V

    :cond_3
    add-int/2addr p2, v4

    .line 16
    aget-byte p3, p1, p2

    shr-int/2addr p3, v1

    and-int/2addr p3, v4

    if-ne p3, v4, :cond_5

    .line 17
    aget-byte p1, p1, p2

    and-int/2addr p1, v4

    invoke-static {p1}, Ly0/h;->q0(I)V

    goto :goto_0

    :cond_4
    add-int/2addr p2, v4

    .line 18
    aget-byte p1, p1, p2

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x8

    .line 19
    invoke-static {p1}, Ly0/h;->F(I)V

    goto :goto_0

    .line 20
    :pswitch_4
    invoke-static {v1}, Ly0/h;->F(I)V

    goto :goto_0

    :pswitch_5
    const/4 p1, 0x6

    .line 21
    invoke-static {p1}, Ly0/h;->F(I)V

    goto :goto_0

    :pswitch_6
    const/4 p1, 0x5

    .line 22
    invoke-static {p1}, Ly0/h;->F(I)V

    goto :goto_0

    :pswitch_7
    const/4 p1, 0x4

    .line 23
    invoke-static {p1}, Ly0/h;->F(I)V

    goto :goto_0

    :pswitch_8
    const/4 p1, 0x3

    .line 24
    invoke-static {p1}, Ly0/h;->F(I)V

    goto :goto_0

    .line 25
    :pswitch_9
    invoke-static {v3}, Ly0/h;->F(I)V

    goto :goto_0

    .line 26
    :pswitch_a
    invoke-static {v4}, Ly0/h;->F(I)V

    goto :goto_0

    .line 27
    :pswitch_b
    invoke-static {v2}, Ly0/h;->F(I)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method

.method public final n([BII)V
    .locals 2

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x80

    const/4 v1, 0x1

    if-eq p3, v0, :cond_1

    const/16 v0, 0x70

    if-eq p3, v0, :cond_0

    packed-switch p3, :pswitch_data_0

    packed-switch p3, :pswitch_data_1

    packed-switch p3, :pswitch_data_2

    goto/16 :goto_0

    .line 2
    :pswitch_0
    aget-byte p3, p1, p2

    add-int/lit8 p3, p3, -0x61

    add-int/lit8 p3, p3, 0x10

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    aget-byte p3, p1, p2

    add-int/lit8 p3, p3, -0x51

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->c(II)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    sget p3, Lu0/b;->B4:I

    if-ne p3, v1, :cond_2

    add-int/2addr p2, v1

    .line 5
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, La1/c;->a(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p3, 0xc

    add-int/2addr p2, v1

    .line 6
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto/16 :goto_0

    :pswitch_4
    const/16 p3, 0xb

    add-int/2addr p2, v1

    .line 7
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto/16 :goto_0

    :pswitch_5
    const/16 p3, 0xa

    add-int/2addr p2, v1

    .line 8
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto/16 :goto_0

    :pswitch_6
    const/16 p3, 0x9

    add-int/2addr p2, v1

    .line 9
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto/16 :goto_0

    :pswitch_7
    const/16 p3, 0x8

    add-int/2addr p2, v1

    .line 10
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto/16 :goto_0

    :pswitch_8
    const/4 p3, 0x7

    add-int/2addr p2, v1

    .line 11
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_9
    const/4 p3, 0x5

    add-int/2addr p2, v1

    .line 12
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_a
    const/4 p3, 0x6

    add-int/2addr p2, v1

    .line 13
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_b
    const/4 p3, 0x4

    add-int/2addr p2, v1

    .line 14
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_c
    const/4 p3, 0x3

    add-int/2addr p2, v1

    .line 15
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_d
    const/4 p3, 0x2

    add-int/2addr p2, v1

    .line 16
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_e
    add-int/2addr p2, v1

    .line 17
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {v1, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_f
    const/4 p3, 0x0

    add-int/2addr p2, v1

    .line 18
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p3, p1}, La1/c;->f(II)V

    goto :goto_0

    :pswitch_10
    add-int/2addr p2, v1

    .line 19
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, La1/c;->b(I)V

    goto :goto_0

    .line 20
    :cond_0
    sget-object p3, La1/b;->b:La1/d;

    instance-of v0, p3, La1/a;

    if-eqz v0, :cond_2

    .line 21
    check-cast p3, La1/a;

    add-int/2addr p2, v1

    aget-byte p1, p1, p2

    add-int/lit8 p1, p1, 0x10

    sub-int/2addr p1, v1

    invoke-virtual {p3, p1}, La1/a;->z(I)V

    goto :goto_0

    :cond_1
    add-int/2addr p2, v1

    .line 22
    aget-byte p1, p1, p2

    invoke-static {p1}, La1/c;->e(I)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x61
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final o([BII)V
    .locals 6

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, -0x60

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p3, v0, :cond_a

    if-eqz p3, :cond_9

    if-eq p3, v4, :cond_8

    if-eq p3, v3, :cond_7

    if-eq p3, v2, :cond_6

    const/4 v0, 0x5

    if-eq p3, v0, :cond_1

    const/4 v5, 0x6

    if-eq p3, v5, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/2addr p2, v4

    .line 2
    aget-byte p1, p1, p2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/4 p1, 0x7

    .line 3
    invoke-static {p1}, Ld1/f;->d(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_1
    invoke-static {v5}, Ld1/f;->d(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_2
    invoke-static {v0}, Ld1/f;->d(I)V

    goto/16 :goto_0

    :pswitch_3
    const/4 p1, 0x4

    .line 6
    invoke-static {p1}, Ld1/f;->d(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_4
    invoke-static {v2}, Ld1/f;->d(I)V

    goto/16 :goto_0

    .line 8
    :pswitch_5
    invoke-static {v3}, Ld1/f;->d(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_6
    invoke-static {v4}, Ld1/f;->d(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_7
    invoke-static {v1}, Ld1/f;->d(I)V

    goto/16 :goto_0

    :cond_1
    add-int/2addr p2, v4

    .line 11
    aget-byte p1, p1, p2

    if-eqz p1, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {v2}, Ld1/f;->g(I)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {v3}, Ld1/f;->g(I)V

    goto :goto_0

    .line 14
    :cond_4
    invoke-static {v4}, Ld1/f;->g(I)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {v1}, Ld1/f;->g(I)V

    goto :goto_0

    .line 16
    :cond_6
    iget p3, p0, Lz/i;->x:I

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/2addr p3, p1

    iput p3, p0, Lz/i;->x:I

    .line 17
    invoke-static {p3}, Ld1/f;->e(I)V

    goto :goto_0

    .line 18
    :cond_7
    iget p3, p0, Lz/i;->x:I

    add-int/2addr p2, v4

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p3, p1

    iput p3, p0, Lz/i;->x:I

    goto :goto_0

    :cond_8
    add-int/2addr p2, v4

    .line 19
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    mul-int/lit16 p1, p1, 0x2710

    iput p1, p0, Lz/i;->x:I

    goto :goto_0

    :cond_9
    add-int/2addr p2, v4

    .line 20
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 21
    invoke-static {p1}, Ld1/f;->b(I)V

    goto :goto_0

    :cond_a
    add-int/2addr p2, v4

    .line 22
    aget-byte p1, p1, p2

    if-eqz p1, :cond_e

    if-eq p1, v4, :cond_d

    if-eq p1, v3, :cond_c

    if-eq p1, v2, :cond_b

    goto :goto_0

    .line 23
    :cond_b
    invoke-static {v2}, Ld1/f;->h(I)V

    goto :goto_0

    .line 24
    :cond_c
    invoke-static {v3}, Ld1/f;->h(I)V

    goto :goto_0

    .line 25
    :cond_d
    invoke-static {v4}, Ld1/f;->h(I)V

    goto :goto_0

    .line 26
    :cond_e
    invoke-static {v1}, Ld1/f;->h(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public q(Lo1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz/i;->h:Lo1/q;

    return-void
.end method

.class public Lu0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[B = null

.field public static b:[I = null

.field public static c:I = 0x0

.field public static d:I = 0x0

.field public static e:I = 0x0

.field public static f:Lo1/f0; = null

.field public static g:Z = false

.field public static final h:Lo1/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu0/e$b;

    invoke-direct {v0}, Lu0/e$b;-><init>()V

    sput-object v0, Lu0/e;->h:Lo1/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    .line 1
    sget v0, Lu0/e;->d:I

    return v0
.end method

.method public static synthetic b()I
    .locals 1

    .line 1
    sget v0, Lu0/e;->d:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lu0/e;->d:I

    return v0
.end method

.method public static synthetic c([B)[B
    .locals 0

    .line 1
    sput-object p0, Lu0/e;->a:[B

    return-object p0
.end method

.method public static synthetic d([I)[I
    .locals 0

    .line 1
    sput-object p0, Lu0/e;->b:[I

    return-object p0
.end method

.method public static synthetic e()Z
    .locals 1

    .line 1
    sget-boolean v0, Lu0/e;->g:Z

    return v0
.end method

.method public static synthetic f([I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lu0/e;->h([I)V

    return-void
.end method

.method public static synthetic g([BII)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lu0/e;->j([BII)V

    return-void
.end method

.method public static varargs h([I)V
    .locals 4

    .line 1
    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    .line 3
    sget-boolean v0, Lu0/e;->g:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TO MCU"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized i(Ljava/lang/String;I)V
    .locals 7

    const-class v0, Lu0/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lu0/e;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit v0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0}, Lo1/p0;->f(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v1, 0x30

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p0, :cond_2

    .line 4
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_1

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string p1, "\u8bfb\u53d6\u6587\u4ef6\u9519\u8bef"

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_1
    new-array p0, v2, [I

    aput v3, p0, v3

    .line 6
    invoke-static {v1, p0}, Lu0/d;->I3(I[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    :cond_2
    move v4, v3

    move v5, v4

    .line 8
    :goto_0
    :try_start_2
    array-length v6, p0

    if-ge v4, v6, :cond_3

    .line 9
    aget-byte v6, p0, v4

    add-int/2addr v5, v6

    int-to-byte v5, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, -0x1

    const/4 v6, 0x2

    if-eq v5, v4, :cond_5

    .line 10
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_4

    .line 11
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string p1, "\u5ba2\u6237\u4fe1\u606f\u9519\u8bef"

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_4
    new-array p0, v2, [I

    aput v6, p0, v3

    .line 12
    invoke-static {v1, p0}, Lu0/d;->I3(I[I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    monitor-exit v0

    return-void

    .line 14
    :cond_5
    :try_start_3
    sput-object p0, Lu0/e;->a:[B

    .line 15
    array-length p0, p0

    sub-int/2addr p0, v2

    add-int/lit16 p0, p0, 0xff

    shr-int/lit8 p0, p0, 0x8

    new-array p0, p0, [I

    sput-object p0, Lu0/e;->b:[I

    .line 16
    sput v3, Lu0/e;->c:I

    const/16 p0, 0xb

    .line 17
    sput p0, Lu0/e;->d:I

    .line 18
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_6

    .line 19
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bf7\u6c42\u8fdb\u5165\u5347\u7ea7\u6a21\u5f0f sTryReqTick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lu0/e;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_6
    new-array p0, v2, [I

    const/4 v4, 0x4

    aput v4, p0, v3

    .line 20
    invoke-static {v1, p0}, Lu0/d;->I3(I[I)V

    const/16 p0, 0xeb

    const/4 v5, 0x3

    if-nez p1, :cond_7

    new-array v5, v5, [I

    aput p0, v5, v3

    aput v3, v5, v2

    const/16 p0, 0x20

    aput p0, v5, v6

    .line 21
    invoke-static {v5}, Lu0/e;->h([I)V

    goto :goto_1

    :cond_7
    if-ne p1, v2, :cond_8

    new-array v5, v5, [I

    aput p0, v5, v3

    aput v3, v5, v2

    const/16 p0, 0x21

    aput p0, v5, v6

    .line 22
    invoke-static {v5}, Lu0/e;->h([I)V

    .line 23
    :cond_8
    :goto_1
    sget-object p0, Lz/a;->l:Lo1/f0;

    invoke-virtual {p0, v2}, Lo1/f0;->a(Z)V

    .line 24
    sput v2, Lm0/b;->e:I

    const-wide/16 v5, 0x64

    .line 25
    invoke-static {v5, v6}, La/i;->a0(J)V

    new-array p0, v2, [I

    aput v4, p0, v3

    .line 26
    invoke-static {v1, p0}, Lu0/d;->I3(I[I)V

    .line 27
    new-instance p0, Lo1/f0;

    invoke-direct {p0}, Lo1/f0;-><init>()V

    sput-object p0, Lu0/e;->f:Lo1/f0;

    .line 28
    sget-object v1, Lz/a;->b:Lo1/e0;

    sget-object v2, Lu0/e;->h:Lo1/q;

    invoke-virtual {p0, v1, v2}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    .line 29
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance v1, Lu0/e$a;

    invoke-direct {v1, p1}, Lu0/e$a;-><init>(I)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static j([BII)V
    .locals 12

    .line 1
    const-class p2, Lu0/e;

    monitor-enter p2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    sput v0, Lu0/e;->d:I

    .line 3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    aget-byte p2, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    invoke-static {p2, v2}, Lo1/p0;->c(BB)I

    move-result p2

    .line 5
    sget-object v2, Lu0/e;->a:[B

    const v3, 0xf000

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/16 v6, 0x30

    const/4 v7, 0x1

    if-gt p2, v3, :cond_6

    shl-int/lit8 v3, p2, 0x8

    if-eqz v2, :cond_5

    .line 6
    array-length v8, v2

    sub-int/2addr v8, v7

    if-ge v3, v8, :cond_5

    .line 7
    array-length v8, v2

    sub-int/2addr v8, v7

    sub-int/2addr v8, v3

    const/16 v9, 0x100

    if-le v8, v9, :cond_0

    move v8, v9

    :cond_0
    const/16 v10, 0x105

    new-array v10, v10, [I

    const/16 v11, 0xec

    aput v11, v10, v0

    .line 8
    aget-byte p1, p0, p1

    aput p1, v10, v7

    aget-byte p0, p0, v1

    aput p0, v10, v5

    .line 9
    sget-object p0, Lu0/e;->b:[I

    array-length p1, p0

    shr-int/lit8 p1, p1, 0x8

    const/16 v1, 0xff

    and-int/2addr p1, v1

    aput p1, v10, v4

    const/4 p1, 0x4

    array-length p0, p0

    and-int/2addr p0, v1

    aput p0, v10, p1

    move p0, v0

    :goto_0
    if-ge p0, v8, :cond_1

    add-int/lit8 p1, p0, 0x5

    add-int v11, v3, p0

    .line 10
    aget-byte v11, v2, v11

    aput v11, v10, p1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v8, v9, :cond_2

    add-int/lit8 p0, v8, 0x5

    .line 11
    aput v1, v10, p0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 12
    :cond_2
    sget-object p0, Lu0/e;->b:[I

    aget p1, p0, p2

    if-nez p1, :cond_3

    .line 13
    aput v7, p0, p2

    .line 14
    sget p0, Lu0/e;->c:I

    add-int/2addr p0, v7

    sput p0, Lu0/e;->c:I

    .line 15
    :cond_3
    invoke-static {v10}, Lu0/e;->h([I)V

    .line 16
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_4

    .line 17
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5f00\u59cb\u53d1\u9001\u5347\u7ea7\u6587\u4ef6 sBlockIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lu0/e;->c:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ;sBlockFlag.length = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lu0/e;->b:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_4
    new-array p0, v4, [I

    const/4 p1, 0x5

    aput p1, p0, v0

    .line 18
    sget p1, Lu0/e;->c:I

    aput p1, p0, v7

    sget-object p1, Lu0/e;->b:[I

    array-length p1, p1

    aput p1, p0, v5

    invoke-static {v6, p0}, Lu0/d;->I3(I[I)V

    .line 19
    :cond_5
    sget p0, Lu0/e;->e:I

    if-eqz p0, :cond_e

    .line 20
    sput v0, Lu0/e;->e:I

    .line 21
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object p0

    const-string p1, "mcu_need_upgrade"

    invoke-virtual {p0, p1}, Ln1/c;->m(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const/4 p0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_2

    .line 22
    :pswitch_0
    sget p1, Lu0/e;->e:I

    if-nez p1, :cond_e

    .line 23
    sput v7, Lu0/e;->e:I

    .line 24
    sput-object p0, Lu0/e;->b:[I

    .line 25
    sput-object p0, Lu0/e;->a:[B

    .line 26
    sget-object p1, Lu0/e;->f:Lo1/f0;

    if-eqz p1, :cond_7

    .line 27
    invoke-virtual {p1}, Lo1/f0;->b()V

    .line 28
    sput-object p0, Lu0/e;->f:Lo1/f0;

    .line 29
    :cond_7
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mcu_need_upgrade"

    const-string v3, "AMP\u7a0b\u5e8f\u4e0d\u5b8c\u6574,\u7528Stm32udAMP.bin\u5347\u7ea7\u6587\u4ef6\u91cd\u65b0\u5347\u7ea7AMP"

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v5, 0x1e

    const/4 v6, -0x1

    const/16 v7, 0x28

    const v8, 0x7fffff00

    invoke-virtual/range {v0 .. v8}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    goto/16 :goto_2

    .line 30
    :pswitch_1
    sput-object p0, Lu0/e;->b:[I

    .line 31
    sput-object p0, Lu0/e;->a:[B

    .line 32
    sget p1, Lu0/e;->e:I

    if-eqz p1, :cond_8

    .line 33
    sput v0, Lu0/e;->e:I

    .line 34
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object p1

    const-string v1, "mcu_need_upgrade"

    invoke-virtual {p1, v1}, Ln1/c;->m(Ljava/lang/String;)V

    .line 35
    :cond_8
    sget-object p1, Lu0/e;->f:Lo1/f0;

    if-eqz p1, :cond_9

    .line 36
    invoke-virtual {p1}, Lo1/f0;->b()V

    .line 37
    sput-object p0, Lu0/e;->f:Lo1/f0;

    .line 38
    :cond_9
    sput v0, Lm0/b;->e:I

    const-wide/16 p0, 0x64

    .line 39
    invoke-static {p0, p1}, La/i;->a0(J)V

    .line 40
    sget-object p0, Lz/a;->l:Lo1/f0;

    invoke-virtual {p0, v0}, Lo1/f0;->a(Z)V

    packed-switch p2, :pswitch_data_1

    :pswitch_2
    goto :goto_2

    .line 41
    :pswitch_3
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_a

    .line 42
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string p1, "\u5347\u7ea7\u5b8c\u6210"

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_a
    new-array p0, v4, [I

    .line 43
    fill-array-data p0, :array_0

    invoke-static {p0}, Lu0/e;->h([I)V

    .line 44
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance p1, Lu0/e$c;

    invoke-direct {p1}, Lu0/e$c;-><init>()V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 45
    :pswitch_4
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_b

    .line 46
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string p1, "\u5347\u7ea7\u5931\u8d25\uff0c\u672a\u77e5\u9519\u8bef"

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_b
    new-array p0, v7, [I

    const/4 p1, 0x7

    aput p1, p0, v0

    .line 47
    invoke-static {v6, p0}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 48
    :pswitch_5
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_c

    .line 49
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string p1, "\u5347\u7ea7\u5931\u8d25\uff0c\u6587\u4ef6\u5927\u5c0f\u9519\u8bef"

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_c
    new-array p0, v7, [I

    aput v7, p0, v0

    .line 50
    invoke-static {v6, p0}, Lu0/d;->I3(I[I)V

    goto :goto_2

    .line 51
    :pswitch_6
    sget-boolean p0, Lu0/e;->g:Z

    if-eqz p0, :cond_d

    .line 52
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p0

    const-string p1, "\u5347\u7ea7\u5931\u8d25\uff0c\u5ba2\u6237\u4fe1\u606f\u9519\u8bef"

    invoke-virtual {p0, p1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_d
    new-array p0, v7, [I

    aput v5, p0, v0

    .line 53
    invoke-static {v6, p0}, Lu0/d;->I3(I[I)V

    :cond_e
    :goto_2
    return-void

    :catchall_0
    move-exception p0

    .line 54
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0xf001
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf001
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0xeb
        0x0
        0x0
    .end array-data
.end method

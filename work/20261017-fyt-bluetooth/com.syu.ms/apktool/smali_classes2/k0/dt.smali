.class public Lk0/dt;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# static fields
.field public static v:Z = false


# instance fields
.field public b:Lo1/g0;

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:[I

.field public q:I

.field public r:Ljava/lang/Runnable;

.field public s:Ljava/lang/Runnable;

.field public t:J

.field public u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lk0/dt;->b:Lo1/g0;

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/dt;->p:[I

    const/4 v0, 0x7

    .line 5
    iput v0, p0, Lk0/dt;->q:I

    .line 6
    new-instance v0, Lk0/dt$a;

    invoke-direct {v0, p0}, Lk0/dt$a;-><init>(Lk0/dt;)V

    iput-object v0, p0, Lk0/dt;->r:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lk0/dt$b;

    invoke-direct {v0, p0}, Lk0/dt$b;-><init>(Lk0/dt;)V

    iput-object v0, p0, Lk0/dt;->s:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lk0/dt;->t:J

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lk0/dt;->u:I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x1
        0x6
        0x7
        0x0
    .end array-data
.end method

.method public static synthetic a3()Z
    .locals 1

    .line 1
    sget-boolean v0, Lk0/dt;->v:Z

    return v0
.end method

.method public static synthetic b3(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lk0/dt;->v:Z

    return p0
.end method

.method public static synthetic c3(Lk0/dt;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/dt;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic d3(Lk0/dt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/dt;->t:J

    return-wide v0
.end method

.method public static synthetic e3(Lk0/dt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/dt;->t:J

    return-wide p1
.end method

.method public static synthetic f3(Lk0/dt;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/dt;->u:I

    return p0
.end method

.method public static synthetic g3(Lk0/dt;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/dt;->u:I

    return p1
.end method

.method public static h3()Ljava/lang/Process;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/ru"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "su"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    return-object v0
.end method

.method public static i3(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4

    .line 1
    invoke-static {}, Lk0/dt;->h3()Ljava/lang/Process;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string p0, "exit $?\n"

    .line 4
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 6
    :catch_1
    :cond_0
    throw p0
.end method

.method public static l3()V
    .locals 1

    const-string v0, "chmod 666 /dev/alarm"

    .line 1
    invoke-static {v0}, Lk0/dt;->i3(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static m3(II)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lk0/dt;->l3()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 3
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    .line 6
    div-long v2, p0, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 7
    invoke-static {p0, p1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_1

    goto :goto_0

    .line 9
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to set Date."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public S2()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/dt;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 3
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    new-instance v1, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 7
    iget v2, v1, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    .line 8
    iget v3, v1, Landroid/text/format/Time;->minute:I

    int-to-byte v3, v3

    .line 9
    iget v1, v1, Landroid/text/format/Time;->second:I

    int-to-byte v1, v1

    const/4 v4, 0x5

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0xe3

    aput v6, v4, v5

    const/4 v5, 0x1

    const/16 v6, 0x24

    aput v6, v4, v5

    const/4 v5, 0x2

    aput v2, v4, v5

    aput v3, v4, v0

    const/4 v0, 0x4

    aput v1, v4, v0

    .line 10
    invoke-static {v4}, Lz/k;->s([I)V

    .line 11
    iget-object v0, p0, Lk0/dt;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 12
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lk0/dt;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :array_0
    .array-data 4
        0xe3
        0x27
        0x10
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x27
        0x17
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x27
        0x19
    .end array-data
.end method

.method public U2([BII)V
    .locals 12

    .line 1
    aget-byte p3, p1, p2

    const/16 v0, 0x3c

    const/16 v1, 0x24

    const/16 v2, 0xf

    const v3, 0xff00

    const/4 v4, 0x4

    const/16 v5, 0x8

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    add-int/2addr p2, v11

    .line 2
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->c:B

    const/16 p2, 0x73

    new-array p3, v11, [I

    and-int/2addr p1, v11

    aput p1, p3, v10

    .line 3
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    .line 4
    iget-byte p1, p0, Lk0/dt;->c:B

    and-int/2addr p1, v11

    if-ne p1, v11, :cond_b

    .line 5
    sput-boolean v11, Lk0/dt;->v:Z

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 p3, p2, 0x1

    .line 6
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/2addr p2, v9

    .line 7
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->d:B

    const/16 p2, 0x71

    new-array v0, v11, [I

    and-int/lit16 p3, p3, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v5

    or-int/2addr p1, p3

    aput p1, v0, v10

    .line 8
    invoke-static {p2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_3
    add-int/lit8 p3, p2, 0x1

    .line 9
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/2addr p2, v9

    .line 10
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->d:B

    const/16 p1, 0x6d

    new-array p2, v11, [I

    and-int/lit8 p3, p3, 0x7f

    aput p3, p2, v10

    .line 11
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x6e

    new-array p2, v11, [I

    .line 12
    iget-byte p3, p0, Lk0/dt;->d:B

    and-int/2addr p3, v2

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_4
    add-int/lit8 p3, p2, 0x1

    .line 13
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/2addr p2, v9

    .line 14
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->d:B

    and-int/lit8 p1, p3, 0xf

    .line 15
    iput p1, p0, Lk0/dt;->q:I

    if-le p1, v7, :cond_0

    .line 16
    iput v7, p0, Lk0/dt;->q:I

    :cond_0
    const/16 p1, 0x39

    new-array p2, v11, [I

    .line 17
    iget-object p3, p0, Lk0/dt;->p:[I

    iget v0, p0, Lk0/dt;->q:I

    aget p3, p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3a

    new-array p2, v11, [I

    .line 18
    iget-byte p3, p0, Lk0/dt;->d:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_5
    add-int/lit8 p3, p2, 0x1

    .line 19
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v0, p2, 0x2

    .line 20
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->d:B

    add-int/lit8 v0, p2, 0x3

    .line 21
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->e:B

    add-int/lit8 v0, p2, 0x4

    .line 22
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->f:B

    add-int/lit8 v0, p2, 0x5

    .line 23
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->g:B

    add-int/lit8 v0, p2, 0x6

    .line 24
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->h:B

    add-int/lit8 v0, p2, 0x7

    .line 25
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->i:B

    add-int/2addr p2, v5

    .line 26
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->j:B

    .line 27
    sget p1, Lk0/nt;->W:I

    if-nez p1, :cond_1

    new-array p1, v11, [I

    shr-int/lit8 p2, p3, 0x7

    and-int/2addr p2, v11

    aput p2, p1, v10

    .line 28
    invoke-static {v11, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 29
    iget-byte p2, p0, Lk0/dt;->d:B

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p1, v11, [I

    shr-int/lit8 p2, p3, 0x7

    and-int/2addr p2, v11

    aput p2, p1, v10

    .line 30
    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 31
    iget-byte p2, p0, Lk0/dt;->d:B

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v11, p1}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p1, v11, [I

    .line 32
    iget-byte p2, p0, Lk0/dt;->d:B

    shr-int/2addr p2, v11

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v4, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 33
    iget-byte p2, p0, Lk0/dt;->d:B

    shr-int/2addr p2, v9

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v8, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 34
    iget-byte p2, p0, Lk0/dt;->d:B

    shr-int/2addr p2, v8

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 35
    iget-byte p2, p0, Lk0/dt;->d:B

    shr-int/lit8 p2, p2, 0x6

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v10, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x37

    new-array p2, v11, [I

    .line 36
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x38

    new-array p2, v11, [I

    .line 37
    iget-byte p3, p0, Lk0/dt;->e:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x59

    new-array p2, v11, [I

    .line 38
    iget-byte p3, p0, Lk0/dt;->f:B

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x5f

    new-array p2, v11, [I

    .line 39
    iget-byte p3, p0, Lk0/dt;->g:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x60

    new-array p2, v11, [I

    .line 40
    iget-byte p3, p0, Lk0/dt;->h:B

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x61

    new-array p2, v11, [I

    .line 41
    iget-byte p3, p0, Lk0/dt;->i:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x6a

    new-array p2, v11, [I

    .line 42
    iget-byte p3, p0, Lk0/dt;->j:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_6
    add-int/lit8 p3, p2, 0x1

    .line 43
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v0, p2, 0x2

    .line 44
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->d:B

    add-int/lit8 v0, p2, 0x3

    .line 45
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->e:B

    add-int/lit8 v0, p2, 0x4

    .line 46
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->f:B

    add-int/lit8 v0, p2, 0x5

    .line 47
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->g:B

    add-int/lit8 v0, p2, 0x6

    .line 48
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->h:B

    add-int/2addr p2, v7

    .line 49
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->i:B

    const/16 p1, 0xb

    new-array p2, v11, [I

    and-int/2addr p3, v7

    aput p3, p2, v10

    .line 50
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v11, [I

    .line 51
    iget-byte p3, p0, Lk0/dt;->c:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v11, [I

    .line 52
    iget-byte p3, p0, Lk0/dt;->c:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v11, [I

    .line 53
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 54
    iget-byte p1, p0, Lk0/dt;->d:B

    shr-int/2addr p1, v9

    and-int/2addr p1, v7

    iput p1, p0, Lk0/dt;->l:I

    if-gez p1, :cond_2

    .line 55
    iput v10, p0, Lk0/dt;->l:I

    goto :goto_1

    :cond_2
    if-le p1, v7, :cond_3

    .line 56
    iput v7, p0, Lk0/dt;->l:I

    :cond_3
    :goto_1
    const/16 p1, 0x12

    new-array p2, v11, [I

    .line 57
    iget p3, p0, Lk0/dt;->l:I

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 58
    iput v10, p0, Lk0/dt;->m:I

    .line 59
    iput v10, p0, Lk0/dt;->n:I

    .line 60
    iput v10, p0, Lk0/dt;->o:I

    .line 61
    iget-byte p1, p0, Lk0/dt;->d:B

    shr-int/lit8 p2, p1, 0x5

    and-int/2addr p2, v7

    if-eqz p2, :cond_7

    if-eq p2, v11, :cond_6

    if-eq p2, v9, :cond_5

    if-eq p2, v8, :cond_4

    goto :goto_2

    .line 62
    :cond_4
    iput v11, p0, Lk0/dt;->m:I

    .line 63
    iput v11, p0, Lk0/dt;->o:I

    goto :goto_2

    .line 64
    :cond_5
    iput v11, p0, Lk0/dt;->o:I

    goto :goto_2

    .line 65
    :cond_6
    iput v11, p0, Lk0/dt;->n:I

    .line 66
    iput v11, p0, Lk0/dt;->o:I

    goto :goto_2

    .line 67
    :cond_7
    iput v11, p0, Lk0/dt;->n:I

    :goto_2
    const/16 p2, 0x11

    new-array p3, v11, [I

    shr-int/2addr p1, v6

    and-int/2addr p1, v7

    aput p1, p3, v10

    .line 68
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p2, v11, [I

    .line 69
    iget p3, p0, Lk0/dt;->m:I

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 70
    iget p2, p0, Lk0/dt;->n:I

    aput p2, p1, v10

    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x10

    new-array p2, v11, [I

    .line 71
    iget p3, p0, Lk0/dt;->o:I

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v11, [I

    .line 72
    iget-byte p3, p0, Lk0/dt;->e:B

    add-int/2addr p3, v1

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v11, [I

    .line 73
    iget-byte p3, p0, Lk0/dt;->f:B

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x16

    new-array p2, v11, [I

    .line 74
    iget-byte p3, p0, Lk0/dt;->g:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x67

    new-array p2, v11, [I

    .line 75
    iget-byte p3, p0, Lk0/dt;->h:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x69

    new-array p2, v11, [I

    .line 76
    iget-byte p3, p0, Lk0/dt;->i:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_7
    add-int/lit8 p3, p2, 0x1

    .line 77
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v0, p2, 0x2

    .line 78
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->d:B

    add-int/2addr p2, v8

    .line 79
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->e:B

    const/16 p1, 0x34

    new-array p2, v11, [I

    and-int/2addr p3, v11

    aput p3, p2, v10

    .line 80
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x35

    new-array p2, v11, [I

    .line 81
    iget-byte p3, p0, Lk0/dt;->c:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x36

    new-array p2, v11, [I

    .line 82
    iget-byte p3, p0, Lk0/dt;->c:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x5e

    new-array p2, v11, [I

    .line 83
    iget-byte p3, p0, Lk0/dt;->e:B

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_8
    add-int/lit8 p3, p2, 0x1

    .line 84
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v1, p2, 0x2

    .line 85
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/dt;->d:B

    add-int/lit8 v2, p2, 0x3

    .line 86
    aget-byte v2, p1, v2

    iput-byte v2, p0, Lk0/dt;->e:B

    add-int/lit8 v3, p2, 0x4

    .line 87
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lk0/dt;->f:B

    add-int/2addr p2, v6

    .line 88
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->g:B

    mul-int/lit16 p3, p3, 0xe10

    mul-int/2addr v1, v0

    add-int/2addr p3, v1

    add-int/2addr p3, v2

    .line 89
    invoke-virtual {p0}, Lk0/dt;->k3()Z

    move-result p1

    if-nez p1, :cond_8

    .line 90
    iget-byte p1, p0, Lk0/dt;->c:B

    iget-byte p2, p0, Lk0/dt;->d:B

    invoke-static {p1, p2}, Lk0/dt;->m3(II)V

    const/16 p1, 0x31

    new-array p2, v11, [I

    aput p3, p2, v10

    .line 91
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 92
    :cond_8
    iget-byte p1, p0, Lk0/dt;->f:B

    mul-int/2addr p1, v6

    const/16 p2, 0x19

    add-int/2addr p1, p2

    const/16 p3, 0x32

    new-array v0, v11, [I

    if-ne p1, p2, :cond_9

    const/4 p1, -0x1

    :cond_9
    aput p1, v0, v10

    .line 93
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x33

    new-array p2, v11, [I

    .line 94
    iget-byte p3, p0, Lk0/dt;->g:B

    const/16 v0, 0xa

    if-le p3, v0, :cond_a

    move p3, v0

    :cond_a
    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_9
    add-int/lit8 p3, p2, 0x1

    .line 95
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v0, p2, 0x2

    .line 96
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->d:B

    add-int/lit8 v1, p2, 0x3

    .line 97
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/dt;->e:B

    add-int/lit8 v1, p2, 0x4

    .line 98
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/dt;->f:B

    add-int/lit8 v1, p2, 0x5

    .line 99
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/dt;->g:B

    add-int/lit8 v1, p2, 0x6

    .line 100
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/dt;->h:B

    add-int/lit8 v1, p2, 0x7

    .line 101
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/dt;->i:B

    add-int/2addr p2, v5

    .line 102
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->j:B

    const/16 p1, 0x2a

    new-array p2, v11, [I

    shl-int/2addr p3, v5

    and-int/2addr p3, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    .line 103
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2b

    new-array p2, v11, [I

    .line 104
    iget-byte p3, p0, Lk0/dt;->e:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2c

    new-array p2, v11, [I

    .line 105
    iget-byte p3, p0, Lk0/dt;->e:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2d

    new-array p2, v11, [I

    .line 106
    iget-byte p3, p0, Lk0/dt;->e:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2e

    new-array p2, v11, [I

    .line 107
    iget-byte p3, p0, Lk0/dt;->e:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3d

    new-array p2, v11, [I

    .line 108
    iget-byte p3, p0, Lk0/dt;->e:B

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2f

    new-array p2, v11, [I

    .line 109
    iget-byte p3, p0, Lk0/dt;->f:B

    shl-int/2addr p3, v5

    and-int/2addr p3, v3

    iget-byte v0, p0, Lk0/dt;->g:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x30

    new-array p2, v11, [I

    .line 110
    iget-byte p3, p0, Lk0/dt;->h:B

    shl-int/2addr p3, v5

    and-int/2addr p3, v3

    iget-byte v0, p0, Lk0/dt;->i:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x57

    new-array p2, v11, [I

    .line 111
    iget-byte p3, p0, Lk0/dt;->j:B

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x58

    new-array p2, v11, [I

    .line 112
    iget-byte p3, p0, Lk0/dt;->j:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v2

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_a
    add-int/2addr p2, v11

    .line 113
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->c:B

    const/16 p2, 0x28

    new-array p3, v11, [I

    and-int/2addr p1, v11

    aput p1, p3, v10

    .line 114
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x29

    new-array p2, v11, [I

    .line 115
    iget-byte p3, p0, Lk0/dt;->c:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 116
    iget-byte p2, p0, Lk0/dt;->c:B

    shr-int/2addr p2, v9

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_b
    add-int/lit8 p3, p2, 0x4

    .line 117
    aget-byte p3, p1, p3

    shl-int/2addr p3, v5

    and-int/2addr p3, v3

    add-int/2addr p2, v6

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    new-array p2, v11, [I

    const/16 p3, -0x2edf

    shr-int/2addr p1, p3

    aput p1, p2, v10

    .line 118
    invoke-static {v5, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_c
    add-int/lit8 p3, p2, 0x1

    .line 119
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v0, p2, 0x2

    .line 120
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->d:B

    add-int/lit8 v0, p2, 0x3

    .line 121
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->e:B

    add-int/lit8 v0, p2, 0x4

    .line 122
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->f:B

    add-int/lit8 v0, p2, 0x5

    .line 123
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->g:B

    add-int/lit8 v0, p2, 0x6

    .line 124
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->h:B

    add-int/lit8 v0, p2, 0x7

    .line 125
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->i:B

    add-int/lit8 v0, p2, 0x8

    .line 126
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->j:B

    add-int/lit8 p2, p2, 0x9

    .line 127
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->k:B

    const/16 p1, 0x27

    new-array p2, v11, [I

    and-int/2addr p3, v8

    aput p3, p2, v10

    .line 128
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x64

    new-array p2, v11, [I

    .line 129
    iget-byte p3, p0, Lk0/dt;->d:B

    and-int/2addr p3, v8

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x65

    new-array p2, v11, [I

    .line 130
    iget-byte p3, p0, Lk0/dt;->e:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x5c

    new-array p2, v11, [I

    .line 131
    iget-byte p3, p0, Lk0/dt;->f:B

    and-int/2addr p3, v2

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x5d

    new-array p2, v11, [I

    .line 132
    iget-byte p3, p0, Lk0/dt;->g:B

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x66

    new-array p2, v11, [I

    .line 133
    iget-byte p3, p0, Lk0/dt;->h:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x72

    new-array p2, v11, [I

    .line 134
    iget-byte p3, p0, Lk0/dt;->j:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_d
    add-int/lit8 p3, p2, 0x1

    .line 135
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/dt;->c:B

    add-int/lit8 v0, p2, 0x2

    .line 136
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->d:B

    add-int/lit8 v0, p2, 0x3

    .line 137
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->e:B

    add-int/lit8 v0, p2, 0x4

    .line 138
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->f:B

    add-int/lit8 v0, p2, 0x5

    .line 139
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->g:B

    add-int/lit8 v0, p2, 0x6

    .line 140
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->h:B

    add-int/lit8 v0, p2, 0x7

    .line 141
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/dt;->i:B

    add-int/2addr p2, v5

    .line 142
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/dt;->j:B

    const/16 p1, 0x55

    new-array p2, v11, [I

    const/16 v0, 0x1f

    and-int/2addr p3, v0

    aput p3, p2, v10

    .line 143
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1e

    new-array p2, v11, [I

    .line 144
    iget-byte p3, p0, Lk0/dt;->d:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 145
    iget-byte p2, p0, Lk0/dt;->d:B

    shr-int/2addr p2, v11

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x20

    new-array p2, v11, [I

    .line 146
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x21

    new-array p2, v11, [I

    .line 147
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x22

    new-array p2, v11, [I

    .line 148
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v4

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x23

    new-array p2, v11, [I

    .line 149
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 150
    iget-byte p2, p0, Lk0/dt;->d:B

    shr-int/lit8 p2, p2, 0x6

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3b

    new-array p2, v11, [I

    .line 151
    iget-byte p3, p0, Lk0/dt;->d:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 152
    iget-byte p2, p0, Lk0/dt;->e:B

    shl-int/2addr p2, v5

    and-int/2addr p2, v3

    iget-byte p3, p0, Lk0/dt;->f:B

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p2, p3

    aput p2, p1, v10

    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x25

    new-array p2, v11, [I

    .line 153
    iget-byte p3, p0, Lk0/dt;->g:B

    shl-int/2addr p3, v5

    and-int/2addr p3, v3

    iget-byte v0, p0, Lk0/dt;->h:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x26

    new-array p2, v11, [I

    .line 154
    iget-byte p3, p0, Lk0/dt;->i:B

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x56

    new-array p2, v11, [I

    .line 155
    iget-byte p3, p0, Lk0/dt;->j:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :cond_b
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x10
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
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/dt;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/dt;->s:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x96

    if-ge p2, p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lk0/nt;->g:[I

    aget v1, v1, p2

    aput v1, p3, v0

    invoke-static {p1, p2, p3}, Lo1/x;->v(Ly/b;I[I)V

    :cond_0
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 6

    const/4 p3, 0x5

    const/4 p4, 0x4

    const/16 v0, 0xe3

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x2e

    aput p3, p1, v3

    .line 2
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_1
    if-eqz p2, :cond_5

    .line 3
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0x6b

    new-array p3, v3, [I

    .line 4
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 5
    iget-object p1, p0, Lk0/dt;->b:Lo1/g0;

    aget p3, p2, v4

    invoke-virtual {p1, v2, p3}, Lo1/g0;->e(II)V

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x2c

    aput p3, p1, v3

    .line 6
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_2
    if-eqz p2, :cond_5

    .line 7
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0x68

    new-array p3, v3, [I

    .line 8
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-object p1, p0, Lk0/dt;->b:Lo1/g0;

    aget p3, p2, v4

    invoke-virtual {p1, v3, p3}, Lo1/g0;->e(II)V

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x2b

    aput p3, p1, v3

    .line 10
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_3
    if-eqz p2, :cond_5

    .line 11
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0x70

    new-array p4, v3, [I

    .line 12
    aget v5, p2, v4

    aput v5, p4, v4

    invoke-static {p1, p4}, Lk0/qt;->y0(I[I)V

    .line 13
    iget-object p1, p0, Lk0/dt;->b:Lo1/g0;

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x2a

    aput p3, p1, v3

    .line 14
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    :pswitch_4
    if-eqz p2, :cond_5

    .line 15
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0x63

    new-array p3, v3, [I

    .line 16
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 17
    iget-object p1, p0, Lk0/dt;->b:Lo1/g0;

    aget p2, p2, v4

    invoke-virtual {p1, v1, p2}, Lo1/g0;->e(II)V

    goto/16 :goto_3

    :pswitch_5
    if-eqz p2, :cond_5

    .line 18
    array-length p1, p2

    if-lez p1, :cond_5

    const/16 p1, 0x6f

    new-array p3, v3, [I

    .line 19
    aget v5, p2, v4

    aput v5, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 20
    iget-object p1, p0, Lk0/dt;->b:Lo1/g0;

    aget p3, p2, v4

    invoke-virtual {p1, p4, p3}, Lo1/g0;->e(II)V

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x2d

    aput p3, p1, v3

    .line 21
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 22
    :pswitch_6
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\ufffd\ufffd\u022b\ufffd\ufffd\u02bb\ufffd\ufffd"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x29

    aput p3, p1, v3

    .line 24
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 25
    :pswitch_7
    invoke-virtual {p0, p2, v2}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    aput v0, p1, v4

    const/16 p3, 0x24

    aput p3, p1, v3

    .line 26
    aget p3, p2, v4

    aput p3, p1, v1

    aget p3, p2, v3

    aput p3, p1, v2

    aget p2, p2, v1

    aput p2, p1, p4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 27
    :pswitch_8
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v4

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x28

    aput p3, p1, v3

    .line 29
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 30
    :pswitch_9
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x27

    aput p3, p1, v3

    .line 31
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 32
    :pswitch_a
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x26

    aput p3, p1, v3

    .line 33
    aget p2, p2, v4

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 34
    :pswitch_b
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p4, [I

    aput v0, p1, v4

    const/16 p3, 0x25

    aput p3, p1, v3

    .line 35
    aget p3, p2, v4

    aput p3, p1, v1

    aget p2, p2, v3

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 36
    :pswitch_c
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p3, 0x23

    aput p3, p1, v3

    .line 37
    aget p2, p2, v4

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    aput v3, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 38
    :pswitch_d
    invoke-virtual {p0, p2, v3}, Lk0/dt;->j3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 39
    aget p1, p2, v4

    const/4 p3, 0x7

    if-le p1, p3, :cond_1

    const/4 p1, 0x6

    .line 40
    aput p1, p2, v4

    goto :goto_1

    .line 41
    :cond_1
    aget p1, p2, v4

    if-gtz p1, :cond_2

    .line 42
    aput v3, p2, v4

    :cond_2
    :goto_1
    move p1, v4

    .line 43
    :goto_2
    iget-object p3, p0, Lk0/dt;->p:[I

    array-length p4, p3

    if-ge p1, p4, :cond_4

    .line 44
    aget p4, p2, v4

    aget p3, p3, p1

    if-ne p4, p3, :cond_3

    .line 45
    iput p1, p0, Lk0/dt;->q:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    new-array p1, v2, [I

    aput v0, p1, v4

    const/16 p2, 0x20

    aput p2, p1, v3

    .line 46
    iget p2, p0, Lk0/dt;->q:I

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final j3([II)Z
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

.method public k3()Z
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_auto_time"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public z1([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/dt;->U2([BII)V

    return-void
.end method

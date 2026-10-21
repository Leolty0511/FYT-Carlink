.class public Lk0/ct;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# instance fields
.field public b:B

.field public c:B

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:[I

.field public n:I

.field public o:Ljava/lang/Runnable;

.field public p:J

.field public q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk0/lt;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/ct;->m:[I

    const/4 v0, 0x7

    .line 3
    iput v0, p0, Lk0/ct;->n:I

    .line 4
    new-instance v0, Lk0/ct$a;

    invoke-direct {v0, p0}, Lk0/ct$a;-><init>(Lk0/ct;)V

    iput-object v0, p0, Lk0/ct;->o:Ljava/lang/Runnable;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lk0/ct;->p:J

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lk0/ct;->q:I

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

.method public static synthetic a3(Lk0/ct;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ct;->p:J

    return-wide v0
.end method

.method public static synthetic b3(Lk0/ct;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ct;->p:J

    return-wide p1
.end method

.method public static synthetic c3(Lk0/ct;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ct;->q:I

    return p0
.end method

.method public static synthetic d3(Lk0/ct;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ct;->q:I

    return p1
.end method

.method public static e3()Ljava/lang/Process;
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

.method public static f3(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4

    .line 1
    invoke-static {}, Lk0/ct;->e3()Ljava/lang/Process;

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

.method public static i3()V
    .locals 1

    const-string v0, "chmod 666 /dev/alarm"

    .line 1
    invoke-static {v0}, Lk0/ct;->f3(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static j3(II)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lk0/ct;->i3()V

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
    iget-object v0, p0, Lk0/ct;->o:Ljava/lang/Runnable;

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

    const/16 v0, 0xf

    const/16 v1, 0x3c

    const/16 v2, 0x24

    const v3, 0xff00

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x7

    const/4 v8, 0x2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    add-int/lit8 p3, p2, 0x1

    .line 2
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->b:B

    add-int/lit8 v0, p2, 0x2

    .line 3
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->c:B

    add-int/lit8 v0, p2, 0x3

    .line 4
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->d:B

    add-int/lit8 v0, p2, 0x4

    .line 5
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->e:B

    add-int/lit8 v0, p2, 0x5

    .line 6
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->f:B

    add-int/lit8 p2, p2, 0x6

    .line 7
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->g:B

    const/16 p1, 0x40

    new-array p2, v11, [I

    shr-int/2addr p3, v6

    and-int/2addr p3, v7

    aput p3, p2, v10

    .line 8
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3e

    new-array p2, v11, [I

    .line 9
    iget-byte p3, p0, Lk0/ct;->b:B

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3f

    new-array p2, v11, [I

    .line 10
    iget-byte p3, p0, Lk0/ct;->b:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x41

    new-array p2, v11, [I

    .line 11
    iget-byte p3, p0, Lk0/ct;->c:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x42

    new-array p2, v11, [I

    .line 12
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x43

    new-array p2, v11, [I

    .line 13
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x44

    new-array p2, v11, [I

    .line 14
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v7

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x45

    new-array p2, v11, [I

    .line 15
    iget-byte p3, p0, Lk0/ct;->d:B

    and-int/2addr p3, v7

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x46

    new-array p2, v11, [I

    .line 16
    iget-byte p3, p0, Lk0/ct;->d:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v7

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x47

    new-array p2, v11, [I

    .line 17
    iget-byte p3, p0, Lk0/ct;->d:B

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x48

    new-array p2, v11, [I

    .line 18
    iget-byte p3, p0, Lk0/ct;->e:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x49

    new-array p2, v11, [I

    .line 19
    iget-byte p3, p0, Lk0/ct;->e:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x4a

    new-array p2, v11, [I

    .line 20
    iget-byte p3, p0, Lk0/ct;->e:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x4b

    new-array p2, v11, [I

    .line 21
    iget-byte p3, p0, Lk0/ct;->e:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x4c

    new-array p2, v11, [I

    .line 22
    iget-byte p3, p0, Lk0/ct;->e:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x4d

    new-array p2, v11, [I

    .line 23
    iget-byte p3, p0, Lk0/ct;->f:B

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x4e

    new-array p2, v11, [I

    .line 24
    iget-byte p3, p0, Lk0/ct;->g:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x4f

    new-array p2, v11, [I

    .line 25
    iget-byte p3, p0, Lk0/ct;->g:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x50

    new-array p2, v11, [I

    .line 26
    iget-byte p3, p0, Lk0/ct;->g:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x51

    new-array p2, v11, [I

    .line 27
    iget-byte p3, p0, Lk0/ct;->g:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x52

    new-array p2, v11, [I

    .line 28
    iget-byte p3, p0, Lk0/ct;->g:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x53

    new-array p2, v11, [I

    .line 29
    iget-byte p3, p0, Lk0/ct;->g:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x54

    new-array p2, v11, [I

    .line 30
    iget-byte p3, p0, Lk0/ct;->g:B

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_1
    add-int/lit8 p3, p2, 0x1

    .line 31
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->b:B

    add-int/2addr p2, v8

    .line 32
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->c:B

    and-int/lit8 p1, p3, 0xf

    .line 33
    iput p1, p0, Lk0/ct;->n:I

    if-le p1, v7, :cond_0

    .line 34
    iput v7, p0, Lk0/ct;->n:I

    :cond_0
    const/16 p1, 0x39

    new-array p2, v11, [I

    .line 35
    iget-object p3, p0, Lk0/ct;->m:[I

    iget v0, p0, Lk0/ct;->n:I

    aget p3, p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3a

    new-array p2, v11, [I

    .line 36
    iget-byte p3, p0, Lk0/ct;->c:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_2
    add-int/lit8 p3, p2, 0x1

    .line 37
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->b:B

    add-int/lit8 v0, p2, 0x2

    .line 38
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->c:B

    add-int/2addr p2, v9

    .line 39
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->d:B

    .line 40
    sget p1, Lk0/nt;->W:I

    if-nez p1, :cond_1

    new-array p1, v11, [I

    shr-int/lit8 p2, p3, 0x7

    and-int/2addr p2, v11

    aput p2, p1, v10

    .line 41
    invoke-static {v11, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 42
    iget-byte p2, p0, Lk0/ct;->c:B

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v8, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array p1, v11, [I

    shr-int/lit8 p2, p3, 0x7

    and-int/2addr p2, v11

    aput p2, p1, v10

    .line 43
    invoke-static {v8, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 44
    iget-byte p2, p0, Lk0/ct;->c:B

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v11, p1}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array p1, v11, [I

    .line 45
    iget-byte p2, p0, Lk0/ct;->c:B

    shr-int/2addr p2, v11

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v6, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 46
    iget-byte p2, p0, Lk0/ct;->c:B

    shr-int/2addr p2, v8

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v9, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 47
    iget-byte p2, p0, Lk0/ct;->c:B

    shr-int/2addr p2, v9

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v5, p1}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 48
    iget-byte p2, p0, Lk0/ct;->c:B

    shr-int/lit8 p2, p2, 0x6

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v10, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x37

    new-array p2, v11, [I

    .line 49
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x38

    new-array p2, v11, [I

    .line 50
    iget-byte p3, p0, Lk0/ct;->d:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_3
    add-int/lit8 p3, p2, 0x1

    .line 51
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->b:B

    add-int/lit8 v1, p2, 0x2

    .line 52
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->c:B

    add-int/lit8 v1, p2, 0x3

    .line 53
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->d:B

    add-int/lit8 v1, p2, 0x4

    .line 54
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->e:B

    add-int/2addr p2, v5

    .line 55
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->f:B

    const/16 p1, 0xb

    new-array p2, v11, [I

    and-int/2addr p3, v7

    aput p3, p2, v10

    .line 56
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x14

    new-array p2, v11, [I

    .line 57
    iget-byte p3, p0, Lk0/ct;->b:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xc

    new-array p2, v11, [I

    .line 58
    iget-byte p3, p0, Lk0/ct;->b:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xd

    new-array p2, v11, [I

    .line 59
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 60
    iget-byte p1, p0, Lk0/ct;->c:B

    shr-int/2addr p1, v8

    and-int/2addr p1, v7

    iput p1, p0, Lk0/ct;->i:I

    if-gez p1, :cond_2

    .line 61
    iput v10, p0, Lk0/ct;->i:I

    goto :goto_1

    :cond_2
    if-le p1, v7, :cond_3

    .line 62
    iput v7, p0, Lk0/ct;->i:I

    :cond_3
    :goto_1
    const/16 p1, 0x12

    new-array p2, v11, [I

    .line 63
    iget p3, p0, Lk0/ct;->i:I

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 64
    iput v10, p0, Lk0/ct;->j:I

    iput v10, p0, Lk0/ct;->k:I

    iput v10, p0, Lk0/ct;->l:I

    .line 65
    iget-byte p1, p0, Lk0/ct;->c:B

    shr-int/lit8 p2, p1, 0x5

    and-int/2addr p2, v7

    if-eqz p2, :cond_7

    if-eq p2, v11, :cond_6

    if-eq p2, v8, :cond_5

    if-eq p2, v9, :cond_4

    goto :goto_2

    .line 66
    :cond_4
    iput v11, p0, Lk0/ct;->j:I

    .line 67
    iput v11, p0, Lk0/ct;->l:I

    goto :goto_2

    .line 68
    :cond_5
    iput v11, p0, Lk0/ct;->l:I

    goto :goto_2

    .line 69
    :cond_6
    iput v11, p0, Lk0/ct;->k:I

    .line 70
    iput v11, p0, Lk0/ct;->l:I

    goto :goto_2

    .line 71
    :cond_7
    iput v11, p0, Lk0/ct;->k:I

    :goto_2
    const/16 p2, 0x11

    new-array p3, v11, [I

    shr-int/2addr p1, v5

    and-int/2addr p1, v7

    aput p1, p3, v10

    .line 72
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0xe

    new-array p2, v11, [I

    .line 73
    iget p3, p0, Lk0/ct;->j:I

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 74
    iget p2, p0, Lk0/ct;->k:I

    aput p2, p1, v10

    invoke-static {v0, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x10

    new-array p2, v11, [I

    .line 75
    iget p3, p0, Lk0/ct;->l:I

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x13

    new-array p2, v11, [I

    .line 76
    iget-byte p3, p0, Lk0/ct;->d:B

    add-int/2addr p3, v2

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x15

    new-array p2, v11, [I

    .line 77
    iget-byte p3, p0, Lk0/ct;->e:B

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x16

    new-array p2, v11, [I

    .line 78
    iget-byte p3, p0, Lk0/ct;->f:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_4
    add-int/2addr p2, v11

    .line 79
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->b:B

    const/16 p2, 0x34

    new-array p3, v11, [I

    and-int/2addr p1, v11

    aput p1, p3, v10

    .line 80
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x35

    new-array p2, v11, [I

    .line 81
    iget-byte p3, p0, Lk0/ct;->b:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x36

    new-array p2, v11, [I

    .line 82
    iget-byte p3, p0, Lk0/ct;->b:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_5
    add-int/lit8 p3, p2, 0x1

    .line 83
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->b:B

    add-int/lit8 v0, p2, 0x2

    .line 84
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->c:B

    add-int/lit8 v2, p2, 0x3

    .line 85
    aget-byte v2, p1, v2

    iput-byte v2, p0, Lk0/ct;->d:B

    add-int/lit8 v3, p2, 0x4

    .line 86
    aget-byte v3, p1, v3

    iput-byte v3, p0, Lk0/ct;->e:B

    add-int/2addr p2, v5

    .line 87
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->f:B

    mul-int/lit16 p3, p3, 0xe10

    mul-int/2addr v0, v1

    add-int/2addr p3, v0

    add-int/2addr p3, v2

    .line 88
    invoke-virtual {p0}, Lk0/ct;->h3()Z

    move-result p1

    if-nez p1, :cond_8

    .line 89
    iget-byte p1, p0, Lk0/ct;->b:B

    iget-byte p2, p0, Lk0/ct;->c:B

    invoke-static {p1, p2}, Lk0/ct;->j3(II)V

    const/16 p1, 0x31

    new-array p2, v11, [I

    aput p3, p2, v10

    .line 90
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    .line 91
    :cond_8
    iget-byte p1, p0, Lk0/ct;->e:B

    mul-int/2addr p1, v5

    const/16 p2, 0x19

    add-int/2addr p1, p2

    const/16 p3, 0x32

    new-array v0, v11, [I

    if-ne p1, p2, :cond_9

    const/4 p1, -0x1

    :cond_9
    aput p1, v0, v10

    .line 92
    invoke-static {p3, v0}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x33

    new-array p2, v11, [I

    .line 93
    iget-byte p3, p0, Lk0/ct;->f:B

    const/16 v0, 0xa

    if-le p3, v0, :cond_a

    move p3, v0

    :cond_a
    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_6
    add-int/lit8 p3, p2, 0x1

    .line 94
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->b:B

    add-int/lit8 v0, p2, 0x2

    .line 95
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->c:B

    add-int/lit8 v1, p2, 0x3

    .line 96
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->d:B

    add-int/lit8 v1, p2, 0x4

    .line 97
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->e:B

    add-int/lit8 v1, p2, 0x5

    .line 98
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->f:B

    add-int/lit8 v1, p2, 0x6

    .line 99
    aget-byte v1, p1, v1

    iput-byte v1, p0, Lk0/ct;->g:B

    add-int/2addr p2, v7

    .line 100
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->h:B

    const/16 p1, 0x2a

    new-array p2, v11, [I

    shl-int/2addr p3, v4

    and-int/2addr p3, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    .line 101
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2b

    new-array p2, v11, [I

    .line 102
    iget-byte p3, p0, Lk0/ct;->d:B

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2c

    new-array p2, v11, [I

    .line 103
    iget-byte p3, p0, Lk0/ct;->d:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2d

    new-array p2, v11, [I

    .line 104
    iget-byte p3, p0, Lk0/ct;->d:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2e

    new-array p2, v11, [I

    .line 105
    iget-byte p3, p0, Lk0/ct;->d:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v9

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3d

    new-array p2, v11, [I

    .line 106
    iget-byte p3, p0, Lk0/ct;->d:B

    shr-int/lit8 p3, p3, 0x6

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x2f

    new-array p2, v11, [I

    .line 107
    iget-byte p3, p0, Lk0/ct;->e:B

    shl-int/2addr p3, v4

    and-int/2addr p3, v3

    iget-byte v0, p0, Lk0/ct;->f:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x30

    new-array p2, v11, [I

    .line 108
    iget-byte p3, p0, Lk0/ct;->g:B

    shl-int/2addr p3, v4

    and-int/2addr p3, v3

    iget-byte v0, p0, Lk0/ct;->h:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_7
    add-int/2addr p2, v11

    .line 109
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->b:B

    const/16 p2, 0x28

    new-array p3, v11, [I

    and-int/2addr p1, v11

    aput p1, p3, v10

    .line 110
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x29

    new-array p2, v11, [I

    .line 111
    iget-byte p3, p0, Lk0/ct;->b:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 112
    iget-byte p2, p0, Lk0/ct;->b:B

    shr-int/2addr p2, v8

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_8
    add-int/lit8 p3, p2, 0x4

    .line 113
    aget-byte p3, p1, p3

    shl-int/2addr p3, v4

    and-int/2addr p3, v3

    add-int/2addr p2, v5

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, p3

    new-array p2, v11, [I

    const/16 p3, -0x2edf

    shr-int/2addr p1, p3

    aput p1, p2, v10

    .line 114
    invoke-static {v4, p2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_9
    add-int/2addr p2, v11

    .line 115
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->b:B

    const/16 p2, 0x27

    new-array p3, v11, [I

    and-int/2addr p1, v9

    aput p1, p3, v10

    .line 116
    invoke-static {p2, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_3

    :pswitch_a
    add-int/lit8 p3, p2, 0x2

    .line 117
    aget-byte p3, p1, p3

    iput-byte p3, p0, Lk0/ct;->c:B

    add-int/lit8 v0, p2, 0x3

    .line 118
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->d:B

    add-int/lit8 v0, p2, 0x4

    .line 119
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->e:B

    add-int/lit8 v0, p2, 0x5

    .line 120
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->f:B

    add-int/lit8 v0, p2, 0x6

    .line 121
    aget-byte v0, p1, v0

    iput-byte v0, p0, Lk0/ct;->g:B

    add-int/2addr p2, v7

    .line 122
    aget-byte p1, p1, p2

    iput-byte p1, p0, Lk0/ct;->h:B

    const/16 p1, 0x1e

    new-array p2, v11, [I

    and-int/2addr p3, v11

    aput p3, p2, v10

    .line 123
    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x1f

    new-array p2, v11, [I

    .line 124
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v11

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x20

    new-array p2, v11, [I

    .line 125
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v8

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x21

    new-array p2, v11, [I

    .line 126
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v9

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x22

    new-array p2, v11, [I

    .line 127
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v6

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x23

    new-array p2, v11, [I

    .line 128
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v5

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 129
    iget-byte p2, p0, Lk0/ct;->c:B

    shr-int/lit8 p2, p2, 0x6

    and-int/2addr p2, v11

    aput p2, p1, v10

    invoke-static {v2, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x3b

    new-array p2, v11, [I

    .line 130
    iget-byte p3, p0, Lk0/ct;->c:B

    shr-int/2addr p3, v7

    and-int/2addr p3, v11

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    new-array p1, v11, [I

    .line 131
    iget-byte p2, p0, Lk0/ct;->d:B

    shl-int/2addr p2, v4

    and-int/2addr p2, v3

    iget-byte p3, p0, Lk0/ct;->e:B

    and-int/lit16 p3, p3, 0xff

    or-int/2addr p2, p3

    aput p2, p1, v10

    invoke-static {v7, p1}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x25

    new-array p2, v11, [I

    .line 132
    iget-byte p3, p0, Lk0/ct;->f:B

    shl-int/2addr p3, v4

    and-int/2addr p3, v3

    iget-byte v0, p0, Lk0/ct;->g:B

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p3, v0

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    const/16 p1, 0x26

    new-array p2, v11, [I

    .line 133
    iget-byte p3, p0, Lk0/ct;->h:B

    and-int/lit16 p3, p3, 0xff

    aput p3, p2, v10

    invoke-static {p1, p2}, Lk0/qt;->y0(I[I)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
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

.method public W2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ct;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->q0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    if-ltz p2, :cond_0

    const/16 p3, 0x64

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
    .locals 5

    const/4 p3, 0x4

    const/16 p4, 0xe3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 1
    :pswitch_0
    invoke-virtual {p0, p2, v1}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, p3, [I

    aput p4, p1, v3

    const/16 p3, 0x29

    aput p3, p1, v2

    .line 2
    aget p3, p2, v3

    aput p3, p1, v1

    aget p2, p2, v2

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 3
    :pswitch_1
    invoke-virtual {p0, p2, v0}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x5

    new-array p1, p1, [I

    aput p4, p1, v3

    const/16 p4, 0x24

    aput p4, p1, v2

    .line 4
    aget p4, p2, v3

    aput p4, p1, v1

    aget p4, p2, v2

    aput p4, p1, v0

    aget p2, p2, v1

    aput p2, p1, p3

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 5
    :pswitch_2
    invoke-virtual {p0, p2, v2}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u957f\u7a0b\u7eed\u822a\uff1a"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo1/b0;->i(Ljava/lang/String;)V

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x28

    aput p3, p1, v2

    .line 7
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 8
    :pswitch_3
    invoke-virtual {p0, p2, v2}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x27

    aput p3, p1, v2

    .line 9
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_3

    .line 10
    :pswitch_4
    invoke-virtual {p0, p2, v2}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x26

    aput p3, p1, v2

    .line 11
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 12
    :pswitch_5
    invoke-virtual {p0, p2, v2}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x25

    aput p3, p1, v2

    .line 13
    aget p2, p2, v3

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 14
    :pswitch_6
    invoke-virtual {p0, p2, v2}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p3, 0x23

    aput p3, p1, v2

    .line 15
    aget p2, p2, v3

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    aput v2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_3

    .line 16
    :pswitch_7
    invoke-virtual {p0, p2, v2}, Lk0/ct;->g3([II)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    aget p1, p2, v3

    const/4 p3, 0x7

    if-le p1, p3, :cond_1

    const/4 p1, 0x6

    .line 18
    aput p1, p2, v3

    goto :goto_1

    .line 19
    :cond_1
    aget p1, p2, v3

    if-gtz p1, :cond_2

    .line 20
    aput v2, p2, v3

    :cond_2
    :goto_1
    move p1, v3

    .line 21
    :goto_2
    iget-object p3, p0, Lk0/ct;->m:[I

    array-length v4, p3

    if-ge p1, v4, :cond_4

    .line 22
    aget v4, p2, v3

    aget p3, p3, p1

    if-ne v4, p3, :cond_3

    iput p1, p0, Lk0/ct;->n:I

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    new-array p1, v0, [I

    aput p4, p1, v3

    const/16 p2, 0x20

    aput p2, p1, v2

    .line 23
    iget p2, p0, Lk0/ct;->n:I

    aput p2, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_5
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public final g3([II)Z
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

.method public h3()Z
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
    invoke-virtual {p0, p1, p2, p3}, Lk0/ct;->U2([BII)V

    return-void
.end method

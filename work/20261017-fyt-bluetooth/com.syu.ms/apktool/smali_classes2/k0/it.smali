.class public Lk0/it;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# static fields
.field public static P:Z = false

.field public static Q:Z = false


# instance fields
.field public A:I

.field public B:Ljava/lang/Runnable;

.field public C:Ljava/lang/Runnable;

.field public D:Lk0/st;

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:Ljava/lang/Runnable;

.field public J:Ljava/lang/Runnable;

.field public K:Ljava/lang/Runnable;

.field public L:J

.field public M:I

.field public N:I

.field public O:I

.field public b:Lo1/g0;

.field public c:Z

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:B

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:[I

.field public r:I

.field public s:B

.field public t:I

.field public u:I

.field public v:I

.field public w:Landroid/media/MediaPlayer;

.field public x:Z

.field public y:Ljava/lang/Runnable;

.field public z:I


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

    iput-object v0, p0, Lk0/it;->b:Lo1/g0;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lk0/it;->c:Z

    const/4 v1, 0x7

    new-array v2, v1, [I

    .line 5
    fill-array-data v2, :array_0

    iput-object v2, p0, Lk0/it;->q:[I

    .line 6
    iput v1, p0, Lk0/it;->r:I

    const/16 v1, 0xf

    .line 7
    iput-byte v1, p0, Lk0/it;->s:B

    .line 8
    iput v0, p0, Lk0/it;->t:I

    .line 9
    iput v0, p0, Lk0/it;->u:I

    .line 10
    iput v0, p0, Lk0/it;->v:I

    .line 11
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x1

    iput v2, v1, Lk0/mt;->e:I

    .line 12
    iput v2, v1, Lk0/mt;->f:I

    .line 13
    iput v2, v1, Lk0/mt;->g:I

    .line 14
    iput v2, v1, Lk0/mt;->i:I

    const/16 v2, 0xb

    new-array v2, v2, [I

    .line 15
    fill-array-data v2, :array_1

    iput-object v2, v1, Lk0/mt;->m:[I

    .line 16
    iput-boolean v0, p0, Lk0/it;->x:Z

    .line 17
    new-instance v1, Lk0/it$a;

    invoke-direct {v1, p0}, Lk0/it$a;-><init>(Lk0/it;)V

    iput-object v1, p0, Lk0/it;->y:Ljava/lang/Runnable;

    .line 18
    new-instance v1, Lk0/it$b;

    invoke-direct {v1, p0}, Lk0/it$b;-><init>(Lk0/it;)V

    iput-object v1, p0, Lk0/it;->B:Ljava/lang/Runnable;

    .line 19
    new-instance v1, Lk0/it$c;

    invoke-direct {v1, p0}, Lk0/it$c;-><init>(Lk0/it;)V

    iput-object v1, p0, Lk0/it;->C:Ljava/lang/Runnable;

    .line 20
    iput v0, p0, Lk0/it;->E:I

    iput v0, p0, Lk0/it;->F:I

    iput v0, p0, Lk0/it;->G:I

    .line 21
    iput v0, p0, Lk0/it;->H:I

    .line 22
    new-instance v1, Lk0/it$e;

    invoke-direct {v1, p0}, Lk0/it$e;-><init>(Lk0/it;)V

    iput-object v1, p0, Lk0/it;->I:Ljava/lang/Runnable;

    .line 23
    new-instance v1, Lk0/it$f;

    invoke-direct {v1, p0}, Lk0/it$f;-><init>(Lk0/it;)V

    iput-object v1, p0, Lk0/it;->J:Ljava/lang/Runnable;

    .line 24
    new-instance v1, Lk0/it$g;

    invoke-direct {v1, p0}, Lk0/it$g;-><init>(Lk0/it;)V

    iput-object v1, p0, Lk0/it;->K:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 25
    iput-wide v1, p0, Lk0/it;->L:J

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lk0/it;->M:I

    .line 27
    iput v0, p0, Lk0/it;->N:I

    iput v0, p0, Lk0/it;->O:I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x1
        0x6
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x21
        0x22
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x37
        0x39
        0x3a
    .end array-data
.end method

.method public static synthetic a3(Lk0/it;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/it;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3()Z
    .locals 1

    .line 1
    sget-boolean v0, Lk0/it;->P:Z

    return v0
.end method

.method public static synthetic c3(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lk0/it;->P:Z

    return p0
.end method

.method public static synthetic d3(Lk0/it;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/it;->L:J

    return-wide v0
.end method

.method public static synthetic e3(Lk0/it;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/it;->L:J

    return-wide p1
.end method

.method public static synthetic f3(Lk0/it;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/it;->M:I

    return p0
.end method

.method public static synthetic g3(Lk0/it;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/it;->M:I

    return p1
.end method

.method public static i3()Ljava/lang/Process;
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

.method public static j3(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4

    .line 1
    invoke-static {}, Lk0/it;->i3()Ljava/lang/Process;

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

.method public static m3()V
    .locals 1

    const-string v0, "chmod 666 /dev/alarm"

    .line 1
    invoke-static {v0}, Lk0/it;->j3(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static o3(II)V
    .locals 6

    .line 1
    invoke-static {}, Lk0/it;->m3()V

    .line 2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 3
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 4
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    .line 7
    div-long v2, p0, v0

    const-wide/32 v4, 0x7fffffff

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 8
    invoke-static {p0, p1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 9
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, p0

    cmp-long p0, v2, v0

    if-gtz p0, :cond_1

    return-void

    .line 10
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "failed to set Time."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public O2([I)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lk0/lt;->O2([I)V

    if-eqz p1, :cond_18

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget v2, p1, v0

    .line 4
    aget v2, p1, v0

    const/4 v3, 0x1

    .line 5
    aget v4, p1, v3

    const/16 v5, 0x21

    const/16 v6, 0xc

    if-eq v2, v5, :cond_16

    const/16 v5, 0x22

    if-eq v2, v5, :cond_14

    const/16 v5, 0x29

    const/16 v7, 0x9

    const/16 v8, 0x1d

    const/16 v9, 0x8

    const/16 v10, 0x13

    if-eq v2, v5, :cond_12

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_10

    const/16 v5, 0x37

    const/16 v7, 0x12

    if-eq v2, v5, :cond_a

    const/16 v5, 0x39

    if-eq v2, v5, :cond_8

    const/16 v5, 0x3a

    const/4 v8, 0x6

    const/4 v9, 0x7

    if-eq v2, v5, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 6
    :pswitch_0
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    iput p1, p0, Lk0/it;->N:I

    const/4 v0, -0x2

    if-ne v4, v0, :cond_2

    if-lez p1, :cond_1

    sub-int/2addr p1, v3

    .line 7
    iput p1, p0, Lk0/it;->N:I

    .line 8
    :cond_1
    iget p1, p0, Lk0/it;->N:I

    invoke-virtual {p0, v9, p1}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    :cond_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_18

    if-ge p1, v9, :cond_3

    add-int/2addr p1, v3

    .line 9
    iput p1, p0, Lk0/it;->N:I

    .line 10
    :cond_3
    iget p1, p0, Lk0/it;->N:I

    invoke-virtual {p0, v8, p1}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 11
    :pswitch_1
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v6

    iput p1, p0, Lk0/it;->N:I

    if-ne v4, v3, :cond_4

    .line 12
    invoke-virtual {p0, v3, v3}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 13
    :cond_4
    invoke-virtual {p0, v3, v0}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 14
    :pswitch_2
    sget-object p1, Lk0/nt;->g:[I

    const/16 v2, 0xd

    aget p1, p1, v2

    iput p1, p0, Lk0/it;->N:I

    if-ne v4, v3, :cond_5

    .line 15
    invoke-virtual {p0, v1, v3}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 16
    :cond_5
    invoke-virtual {p0, v1, v0}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x14

    aget p1, p1, v1

    iput p1, p0, Lk0/it;->N:I

    if-ne v4, v3, :cond_6

    .line 18
    invoke-virtual {p0, v0, v3}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 19
    :cond_6
    invoke-virtual {p0, v0, v0}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 20
    :cond_7
    aget p1, p1, v3

    and-int/lit16 p1, p1, 0xff

    if-gt p1, v9, :cond_18

    .line 21
    invoke-virtual {p0, v8, p1}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 22
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x16

    aget p1, p1, v1

    iput p1, p0, Lk0/it;->N:I

    const/4 p1, 0x4

    if-ne v4, v3, :cond_9

    .line 23
    invoke-virtual {p0, p1, v3}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 24
    :cond_9
    invoke-virtual {p0, p1, v0}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 25
    :cond_a
    aget p1, p1, v3

    .line 26
    sget-object v2, Lk0/nt;->g:[I

    aget v2, v2, v10

    add-int/lit8 v2, v2, -0x24

    iput v2, p0, Lk0/it;->N:I

    const/16 v3, 0x3e8

    const/16 v4, 0x1c

    if-ge p1, v3, :cond_c

    const/16 v2, 0x20

    if-lt p1, v7, :cond_b

    if-gt p1, v2, :cond_b

    mul-int/2addr p1, v1

    add-int/lit8 v0, p1, -0x24

    goto :goto_1

    :cond_b
    if-le p1, v2, :cond_f

    goto :goto_0

    :cond_c
    const/16 v5, 0x7d0

    if-le p1, v5, :cond_d

    sub-int/2addr p1, v5

    mul-int/2addr p1, v1

    add-int v0, v2, p1

    if-le v0, v4, :cond_f

    :goto_0
    move v0, v4

    goto :goto_1

    :cond_d
    sub-int/2addr p1, v3

    mul-int/2addr p1, v1

    sub-int/2addr v2, p1

    if-gez v2, :cond_e

    goto :goto_1

    :cond_e
    move v0, v2

    .line 27
    :cond_f
    :goto_1
    invoke-virtual {p0, v9, v0}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    .line 28
    :cond_10
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    add-int/lit8 p1, p1, -0x24

    iput p1, p0, Lk0/it;->N:I

    if-ne v4, v3, :cond_11

    if-ge p1, v8, :cond_18

    add-int/2addr p1, v3

    .line 29
    iput p1, p0, Lk0/it;->N:I

    invoke-virtual {p0, v9, p1}, Lk0/it;->h3(II)V

    goto/16 :goto_2

    :cond_11
    if-lez p1, :cond_18

    sub-int/2addr p1, v3

    .line 30
    iput p1, p0, Lk0/it;->N:I

    invoke-virtual {p0, v7, p1}, Lk0/it;->h3(II)V

    goto :goto_2

    .line 31
    :cond_12
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v10

    add-int/lit8 p1, p1, -0x24

    iput p1, p0, Lk0/it;->N:I

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " MainServer F005 VA_CMD_AIR_TEMP_LEFT codeValue = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lk0/it;->N:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "voll"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v3, :cond_13

    .line 33
    iget p1, p0, Lk0/it;->N:I

    if-ge p1, v8, :cond_18

    add-int/2addr p1, v3

    .line 34
    iput p1, p0, Lk0/it;->N:I

    invoke-virtual {p0, v9, p1}, Lk0/it;->h3(II)V

    goto :goto_2

    .line 35
    :cond_13
    iget p1, p0, Lk0/it;->N:I

    if-ltz p1, :cond_18

    sub-int/2addr p1, v3

    .line 36
    iput p1, p0, Lk0/it;->N:I

    invoke-virtual {p0, v7, p1}, Lk0/it;->h3(II)V

    goto :goto_2

    .line 37
    :cond_14
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0xb

    aget p1, p1, v1

    iput p1, p0, Lk0/it;->N:I

    const/4 p1, 0x3

    if-ne v4, v3, :cond_15

    .line 38
    invoke-virtual {p0, p1, v3}, Lk0/it;->h3(II)V

    goto :goto_2

    .line 39
    :cond_15
    invoke-virtual {p0, p1, v0}, Lk0/it;->h3(II)V

    goto :goto_2

    .line 40
    :cond_16
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x17

    aget p1, p1, v1

    iput p1, p0, Lk0/it;->N:I

    if-ne v4, v3, :cond_17

    .line 41
    invoke-virtual {p0, v6, v3}, Lk0/it;->h3(II)V

    goto :goto_2

    .line 42
    :cond_17
    invoke-virtual {p0, v6, v0}, Lk0/it;->h3(II)V

    :cond_18
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S2()V
    .locals 9

    .line 1
    iget-object v0, p0, Lk0/it;->K:Ljava/lang/Runnable;

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
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v1

    new-instance v2, Lk0/it$d;

    invoke-direct {v2, p0}, Lk0/it$d;-><init>(Lk0/it;)V

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_3

    invoke-static {v1}, Lz/k;->s([I)V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    const/16 v4, 0x3d

    .line 7
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 8
    sput-boolean v1, Lu0/b;->Y3:Z

    .line 9
    sput v1, Lu0/b;->y0:I

    .line 10
    sput v3, Lu0/b;->z0:I

    const/16 v2, 0x300

    .line 11
    sput v2, Lu0/b;->A0:I

    const/16 v2, 0x101

    .line 12
    sput v2, Lu0/b;->B0:I

    const/16 v2, 0x1c3

    .line 13
    sput v2, Lu0/b;->C0:I

    const-string v2, "ro.fyt.car_type"

    const/16 v4, 0x7e6

    .line 14
    invoke-static {v2, v4}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lk0/it;->t:I

    const-string v2, "ro.fyt.country"

    .line 15
    invoke-static {v2, v3}, La/i;->k(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lk0/it;->u:I

    .line 16
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "net.easyconn.android.mirror.in"

    .line 17
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.android.mirror.out"

    .line 18
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.inner.mirror.in"

    .line 19
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.inner.mirror.out"

    .line 20
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.mirror.in"

    .line 21
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.mirror.out"

    .line 22
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    new-instance v4, Lk0/st;

    invoke-direct {v4}, Lk0/st;-><init>()V

    iput-object v4, p0, Lk0/it;->D:Lk0/st;

    .line 24
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    iget-object v5, p0, Lk0/it;->D:Lk0/st;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 25
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 27
    iget v4, v2, Landroid/text/format/Time;->hour:I

    int-to-byte v4, v4

    .line 28
    iget v5, v2, Landroid/text/format/Time;->minute:I

    int-to-byte v5, v5

    .line 29
    iget v2, v2, Landroid/text/format/Time;->second:I

    int-to-byte v2, v2

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/16 v7, 0xe3

    aput v7, v6, v3

    const/16 v8, 0x24

    aput v8, v6, v1

    const/4 v8, 0x2

    aput v4, v6, v8

    aput v5, v6, v0

    const/4 v4, 0x4

    aput v2, v6, v4

    .line 30
    invoke-static {v6}, Lz/k;->s([I)V

    .line 31
    iget-object v2, p0, Lk0/it;->b:Lo1/g0;

    invoke-virtual {v2}, Lo1/g0;->a()V

    new-array v2, v0, [I

    aput v7, v2, v3

    const/16 v4, 0x2c

    aput v4, v2, v1

    .line 32
    iget-object v4, p0, Lk0/it;->b:Lo1/g0;

    invoke-virtual {v4, v0, v3}, Lo1/g0;->b(II)I

    move-result v4

    aput v4, v2, v8

    invoke-static {v2}, Lz/k;->s([I)V

    new-array v1, v1, [I

    .line 33
    iget-object v2, p0, Lk0/it;->b:Lo1/g0;

    invoke-virtual {v2, v0, v3}, Lo1/g0;->b(II)I

    move-result v0

    aput v0, v1, v3

    const/16 v0, 0x6b

    invoke-static {v0, v1}, Lk0/qt;->y0(I[I)V

    return-void

    nop

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

    :array_3
    .array-data 4
        0xe3
        0x28
        0x0
    .end array-data
.end method

.method public U2([BII)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v2, p2

    .line 1
    aget-byte v3, v0, v2

    const/16 v4, -0x56

    const/4 v5, 0x1

    if-eq v3, v4, :cond_26

    const/16 v4, 0x41

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eq v3, v4, :cond_1d

    const/16 v4, 0x70

    const/4 v11, 0x5

    const/4 v12, 0x3

    if-eq v3, v4, :cond_1b

    const/16 v4, 0x71

    const/4 v13, 0x4

    if-eq v3, v4, :cond_19

    const/16 v14, 0x17

    const/16 v7, 0x24

    const/16 v6, 0xf

    const v16, 0xff00

    const/16 v8, 0x8

    const/4 v15, 0x7

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    add-int/2addr v2, v5

    .line 2
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->d:B

    const/16 v2, 0x86

    new-array v3, v5, [I

    and-int/lit16 v0, v0, 0xff

    aput v0, v3, v10

    .line 3
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_1
    add-int/2addr v2, v5

    .line 4
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->d:B

    and-int/2addr v0, v5

    const/16 v2, 0x79

    if-ne v0, v5, :cond_0

    new-array v0, v5, [I

    aput v5, v0, v10

    .line 5
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    aput v10, v0, v10

    .line 6
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_0
    new-array v0, v5, [I

    aput v10, v0, v10

    .line 7
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 8
    :pswitch_2
    iget-byte v3, v1, Lk0/it;->s:B

    add-int/2addr v2, v5

    aget-byte v4, v0, v2

    if-ne v3, v4, :cond_1

    goto/16 :goto_c

    .line 9
    :cond_1
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->d:B

    iput-byte v0, v1, Lk0/it;->s:B

    const/16 v2, 0x73

    new-array v3, v5, [I

    and-int/2addr v0, v5

    aput v0, v3, v10

    .line 10
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 11
    iget-byte v0, v1, Lk0/it;->d:B

    and-int/2addr v0, v5

    if-ne v0, v5, :cond_2

    .line 12
    sput-boolean v5, Lk0/it;->P:Z

    .line 13
    :cond_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v2, v1, Lk0/it;->J:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    :pswitch_3
    add-int/lit8 v3, v2, 0x1

    .line 14
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/2addr v2, v9

    .line 15
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->e:B

    new-array v2, v5, [I

    and-int/lit16 v3, v3, 0xff

    and-int/lit16 v0, v0, 0xff

    shl-int/2addr v0, v8

    or-int/2addr v0, v3

    aput v0, v2, v10

    .line 16
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 17
    :pswitch_4
    sget-boolean v3, Lk0/it;->Q:Z

    if-eqz v3, :cond_3

    goto/16 :goto_c

    :cond_3
    add-int/lit8 v3, v2, 0x1

    .line 18
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/2addr v2, v9

    .line 19
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->e:B

    const/16 v0, 0x6d

    new-array v2, v5, [I

    and-int/lit8 v3, v3, 0x7f

    aput v3, v2, v10

    .line 20
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6e

    new-array v2, v5, [I

    .line 21
    iget-byte v3, v1, Lk0/it;->e:B

    and-int/2addr v3, v6

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_5
    add-int/lit8 v3, v2, 0x1

    .line 22
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 23
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v4, v2, 0x3

    .line 24
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->f:B

    add-int/lit8 v4, v2, 0x4

    .line 25
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->g:B

    add-int/2addr v2, v11

    .line 26
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->h:B

    const/16 v0, 0x7b

    new-array v2, v5, [I

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    .line 27
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7c

    new-array v2, v5, [I

    .line 28
    iget-byte v3, v1, Lk0/it;->e:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7d

    new-array v2, v5, [I

    .line 29
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7e

    new-array v2, v5, [I

    .line 30
    iget-byte v3, v1, Lk0/it;->g:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x7f

    new-array v2, v5, [I

    .line 31
    iget-byte v3, v1, Lk0/it;->h:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_6
    add-int/lit8 v3, v2, 0x1

    .line 32
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/2addr v2, v9

    .line 33
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->e:B

    and-int/lit8 v0, v3, 0xf

    .line 34
    iput v0, v1, Lk0/it;->r:I

    if-le v0, v15, :cond_4

    .line 35
    iput v15, v1, Lk0/it;->r:I

    :cond_4
    const/16 v0, 0x39

    new-array v2, v5, [I

    .line 36
    iget-object v3, v1, Lk0/it;->q:[I

    iget v4, v1, Lk0/it;->r:I

    aget v3, v3, v4

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3a

    new-array v2, v5, [I

    .line 37
    iget-byte v3, v1, Lk0/it;->e:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_7
    add-int/lit8 v3, v2, 0x1

    .line 38
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 39
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v4, v2, 0x3

    .line 40
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->f:B

    add-int/lit8 v4, v2, 0x4

    .line 41
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->g:B

    add-int/lit8 v4, v2, 0x5

    .line 42
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->h:B

    add-int/lit8 v4, v2, 0x6

    .line 43
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->i:B

    add-int/lit8 v4, v2, 0x7

    .line 44
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->j:B

    add-int/2addr v2, v8

    .line 45
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->k:B

    .line 46
    sget v0, Lk0/nt;->W:I

    if-nez v0, :cond_5

    new-array v0, v5, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v5

    aput v2, v0, v10

    .line 47
    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 48
    iget-byte v2, v1, Lk0/it;->e:B

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_5
    new-array v0, v5, [I

    shr-int/lit8 v2, v3, 0x7

    and-int/2addr v2, v5

    aput v2, v0, v10

    .line 49
    invoke-static {v9, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 50
    iget-byte v2, v1, Lk0/it;->e:B

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    :goto_0
    new-array v0, v5, [I

    .line 51
    iget-byte v2, v1, Lk0/it;->e:B

    shr-int/2addr v2, v5

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v13, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 52
    iget-byte v2, v1, Lk0/it;->e:B

    shr-int/2addr v2, v9

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v12, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 53
    iget-byte v2, v1, Lk0/it;->e:B

    shr-int/2addr v2, v12

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v11, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 54
    iget-byte v2, v1, Lk0/it;->e:B

    shr-int/lit8 v2, v2, 0x6

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x37

    new-array v2, v5, [I

    .line 55
    iget-byte v3, v1, Lk0/it;->e:B

    shr-int/2addr v3, v15

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x38

    new-array v2, v5, [I

    .line 56
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x59

    new-array v2, v5, [I

    .line 57
    iget-byte v3, v1, Lk0/it;->g:B

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5f

    new-array v2, v5, [I

    .line 58
    iget-byte v3, v1, Lk0/it;->h:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x60

    new-array v2, v5, [I

    .line 59
    iget-byte v3, v1, Lk0/it;->i:B

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x61

    new-array v2, v5, [I

    .line 60
    iget-byte v3, v1, Lk0/it;->j:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6a

    new-array v2, v5, [I

    .line 61
    iget-byte v3, v1, Lk0/it;->k:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_8
    add-int/lit8 v3, v2, 0x1

    .line 62
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 63
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v4, v2, 0x3

    .line 64
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->f:B

    add-int/lit8 v4, v2, 0x4

    .line 65
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->g:B

    add-int/lit8 v4, v2, 0x5

    .line 66
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->h:B

    add-int/lit8 v4, v2, 0x6

    .line 67
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->i:B

    add-int/2addr v2, v15

    .line 68
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->j:B

    const/16 v0, 0xb

    new-array v2, v5, [I

    and-int/2addr v3, v15

    aput v3, v2, v10

    .line 69
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v2, v5, [I

    .line 70
    iget-byte v3, v1, Lk0/it;->d:B

    shr-int/2addr v3, v12

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xc

    new-array v2, v5, [I

    .line 71
    iget-byte v3, v1, Lk0/it;->d:B

    shr-int/2addr v3, v15

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 72
    iget-byte v2, v1, Lk0/it;->d:B

    shr-int/2addr v2, v13

    and-int/2addr v2, v5

    aput v2, v0, v10

    invoke-static {v14, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xd

    new-array v2, v5, [I

    .line 73
    iget-byte v3, v1, Lk0/it;->e:B

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 74
    iget-byte v0, v1, Lk0/it;->e:B

    shr-int/2addr v0, v9

    and-int/2addr v0, v15

    iput v0, v1, Lk0/it;->m:I

    if-gez v0, :cond_6

    .line 75
    iput v10, v1, Lk0/it;->m:I

    goto :goto_1

    :cond_6
    if-le v0, v15, :cond_7

    .line 76
    iput v15, v1, Lk0/it;->m:I

    :cond_7
    :goto_1
    const/16 v0, 0x12

    new-array v2, v5, [I

    .line 77
    iget v3, v1, Lk0/it;->m:I

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 78
    iput v10, v1, Lk0/it;->n:I

    .line 79
    iput v10, v1, Lk0/it;->o:I

    .line 80
    iput v10, v1, Lk0/it;->p:I

    .line 81
    iget-byte v0, v1, Lk0/it;->e:B

    shr-int/lit8 v2, v0, 0x5

    and-int/2addr v2, v15

    if-eqz v2, :cond_b

    if-eq v2, v5, :cond_a

    if-eq v2, v9, :cond_9

    if-eq v2, v12, :cond_8

    goto :goto_2

    .line 82
    :cond_8
    iput v5, v1, Lk0/it;->n:I

    .line 83
    iput v5, v1, Lk0/it;->p:I

    goto :goto_2

    .line 84
    :cond_9
    iput v5, v1, Lk0/it;->p:I

    goto :goto_2

    .line 85
    :cond_a
    iput v5, v1, Lk0/it;->o:I

    .line 86
    iput v5, v1, Lk0/it;->p:I

    goto :goto_2

    .line 87
    :cond_b
    iput v5, v1, Lk0/it;->o:I

    :goto_2
    const/16 v2, 0x11

    new-array v3, v5, [I

    shr-int/2addr v0, v11

    and-int/2addr v0, v15

    aput v0, v3, v10

    .line 88
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0xe

    new-array v2, v5, [I

    .line 89
    iget v3, v1, Lk0/it;->n:I

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 90
    iget v2, v1, Lk0/it;->o:I

    aput v2, v0, v10

    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x10

    new-array v2, v5, [I

    .line 91
    iget v3, v1, Lk0/it;->p:I

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v2, v5, [I

    .line 92
    iget-byte v3, v1, Lk0/it;->f:B

    add-int/2addr v3, v7

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x15

    new-array v2, v5, [I

    .line 93
    iget-byte v3, v1, Lk0/it;->g:B

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x16

    new-array v2, v5, [I

    .line 94
    iget-byte v3, v1, Lk0/it;->h:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x69

    new-array v2, v5, [I

    .line 95
    iget-byte v3, v1, Lk0/it;->j:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_9
    add-int/lit8 v3, v2, 0x1

    .line 96
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 97
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/2addr v2, v12

    .line 98
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->f:B

    const/16 v0, 0x34

    new-array v2, v5, [I

    and-int/2addr v3, v5

    aput v3, v2, v10

    .line 99
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v2, v5, [I

    .line 100
    iget-byte v3, v1, Lk0/it;->d:B

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x36

    new-array v2, v5, [I

    .line 101
    iget-byte v3, v1, Lk0/it;->d:B

    shr-int/2addr v3, v9

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5e

    new-array v2, v5, [I

    .line 102
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_a
    add-int/lit8 v3, v2, 0x1

    .line 103
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 104
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v6, v2, 0x3

    .line 105
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/it;->f:B

    add-int/lit8 v7, v2, 0x4

    .line 106
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->g:B

    add-int/lit8 v7, v2, 0x5

    .line 107
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->h:B

    add-int/lit8 v7, v2, 0x6

    .line 108
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->i:B

    add-int/2addr v2, v15

    .line 109
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->j:B

    mul-int/lit16 v3, v3, 0xe10

    const/16 v0, 0x3c

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v6

    .line 110
    invoke-virtual/range {p0 .. p0}, Lk0/it;->l3()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x31

    new-array v2, v5, [I

    aput v3, v2, v10

    .line 111
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 112
    :cond_c
    iget-byte v0, v1, Lk0/it;->d:B

    if-ltz v0, :cond_d

    if-gt v0, v14, :cond_d

    iget-byte v2, v1, Lk0/it;->e:B

    if-ltz v2, :cond_d

    const/16 v3, 0x3b

    if-gt v2, v3, :cond_d

    .line 113
    iput-boolean v5, v1, Lk0/it;->c:Z

    goto :goto_3

    .line 114
    :cond_d
    iput-boolean v10, v1, Lk0/it;->c:Z

    :goto_3
    if-nez v0, :cond_e

    .line 115
    iget-byte v0, v1, Lk0/it;->e:B

    if-nez v0, :cond_e

    .line 116
    iput-boolean v10, v1, Lk0/it;->c:Z

    .line 117
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lk0/it;->l3()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 118
    iput-boolean v10, v1, Lk0/it;->c:Z

    .line 119
    :cond_f
    iget-boolean v0, v1, Lk0/it;->c:Z

    if-eqz v0, :cond_10

    .line 120
    iput-boolean v10, v1, Lk0/it;->c:Z

    .line 121
    :try_start_0
    iget-byte v0, v1, Lk0/it;->d:B

    iget-byte v2, v1, Lk0/it;->e:B

    invoke-static {v0, v2}, Lk0/it;->o3(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_4
    const/16 v0, 0x32

    new-array v2, v5, [I

    .line 124
    iget-byte v3, v1, Lk0/it;->g:B

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 125
    iget-byte v0, v1, Lk0/it;->g:B

    if-nez v0, :cond_11

    .line 126
    iput v10, v1, Lk0/it;->v:I

    goto :goto_5

    :cond_11
    mul-int/2addr v0, v11

    add-int/lit8 v0, v0, 0x19

    .line 127
    iput v0, v1, Lk0/it;->v:I

    :goto_5
    new-array v0, v5, [I

    .line 128
    iget-byte v2, v1, Lk0/it;->h:B

    const/16 v3, 0xa

    if-le v2, v3, :cond_12

    const/16 v2, 0xa

    :cond_12
    aput v2, v0, v10

    const/16 v2, 0x33

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v2, v5, [I

    .line 129
    iget-byte v3, v1, Lk0/it;->i:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v2, v5, [I

    .line 130
    iget-byte v3, v1, Lk0/it;->j:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_b
    add-int/lit8 v3, v2, 0x1

    .line 131
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 132
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v7, v2, 0x3

    .line 133
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->f:B

    add-int/lit8 v7, v2, 0x4

    .line 134
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->g:B

    add-int/lit8 v7, v2, 0x5

    .line 135
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->h:B

    add-int/lit8 v7, v2, 0x6

    .line 136
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->i:B

    add-int/lit8 v7, v2, 0x7

    .line 137
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/it;->j:B

    add-int/2addr v2, v8

    .line 138
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->k:B

    const/16 v0, 0x2a

    new-array v2, v5, [I

    shl-int/2addr v3, v8

    and-int v3, v3, v16

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v10

    .line 139
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2b

    new-array v2, v5, [I

    .line 140
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2c

    new-array v2, v5, [I

    .line 141
    iget-byte v3, v1, Lk0/it;->f:B

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2d

    new-array v2, v5, [I

    .line 142
    iget-byte v3, v1, Lk0/it;->f:B

    shr-int/2addr v3, v9

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2e

    new-array v2, v5, [I

    .line 143
    iget-byte v3, v1, Lk0/it;->f:B

    shr-int/2addr v3, v13

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3d

    new-array v2, v5, [I

    .line 144
    iget-byte v3, v1, Lk0/it;->f:B

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 145
    iget-byte v2, v1, Lk0/it;->g:B

    shl-int/2addr v2, v8

    and-int v2, v2, v16

    iget-byte v3, v1, Lk0/it;->h:B

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v10

    const/16 v2, 0x2f

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x30

    new-array v2, v5, [I

    .line 146
    iget-byte v3, v1, Lk0/it;->i:B

    shl-int/2addr v3, v8

    and-int v3, v3, v16

    iget-byte v4, v1, Lk0/it;->j:B

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x57

    new-array v2, v5, [I

    .line 147
    iget-byte v3, v1, Lk0/it;->k:B

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x58

    new-array v2, v5, [I

    .line 148
    iget-byte v3, v1, Lk0/it;->k:B

    shr-int/2addr v3, v9

    and-int/2addr v3, v6

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_c
    add-int/2addr v2, v5

    .line 149
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->d:B

    const/16 v2, 0x28

    new-array v3, v5, [I

    and-int/2addr v0, v5

    aput v0, v3, v10

    .line 150
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x29

    new-array v2, v5, [I

    .line 151
    iget-byte v3, v1, Lk0/it;->d:B

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 152
    iget-byte v2, v1, Lk0/it;->d:B

    shr-int/2addr v2, v9

    and-int/2addr v2, v5

    aput v2, v0, v10

    const/16 v2, 0x3c

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_d
    add-int/lit8 v3, v2, 0x4

    .line 153
    aget-byte v3, v0, v3

    shl-int/2addr v3, v8

    and-int v3, v3, v16

    add-int/2addr v2, v11

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    new-array v2, v5, [I

    const/16 v3, -0x2edf

    shr-int/2addr v0, v3

    aput v0, v2, v10

    .line 154
    invoke-static {v8, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_e
    add-int/lit8 v3, v2, 0x1

    .line 155
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 156
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v4, v2, 0x3

    .line 157
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->f:B

    add-int/lit8 v4, v2, 0x4

    .line 158
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->g:B

    add-int/lit8 v4, v2, 0x5

    .line 159
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->h:B

    add-int/lit8 v4, v2, 0x6

    .line 160
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->i:B

    add-int/lit8 v4, v2, 0x7

    .line 161
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->j:B

    add-int/lit8 v4, v2, 0x8

    .line 162
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->k:B

    add-int/lit8 v2, v2, 0x9

    .line 163
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->l:B

    const/16 v0, 0x27

    new-array v2, v5, [I

    and-int/2addr v3, v12

    aput v3, v2, v10

    .line 164
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 165
    iget v0, v1, Lk0/it;->u:I

    if-nez v0, :cond_13

    const/16 v0, 0x6f

    new-array v2, v5, [I

    .line 166
    iget-byte v3, v1, Lk0/it;->e:B

    and-int/2addr v3, v12

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x75

    new-array v2, v5, [I

    .line 167
    iget-byte v3, v1, Lk0/it;->k:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :cond_13
    const/16 v0, 0x65

    new-array v2, v5, [I

    .line 168
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5c

    new-array v2, v5, [I

    .line 169
    iget-byte v3, v1, Lk0/it;->g:B

    and-int/2addr v3, v6

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5d

    new-array v2, v5, [I

    .line 170
    iget-byte v3, v1, Lk0/it;->h:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x66

    new-array v2, v5, [I

    .line 171
    iget-byte v3, v1, Lk0/it;->i:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x74

    new-array v2, v5, [I

    .line 172
    iget-byte v3, v1, Lk0/it;->j:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :pswitch_f
    add-int/lit8 v3, v2, 0x1

    .line 173
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 174
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v4, v2, 0x3

    .line 175
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->f:B

    add-int/lit8 v4, v2, 0x4

    .line 176
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->g:B

    add-int/lit8 v4, v2, 0x5

    .line 177
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->h:B

    add-int/lit8 v4, v2, 0x6

    .line 178
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->i:B

    add-int/lit8 v4, v2, 0x7

    .line 179
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->j:B

    add-int/2addr v2, v8

    .line 180
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->k:B

    const/16 v0, 0x55

    new-array v2, v5, [I

    const/16 v4, 0x1f

    and-int/2addr v3, v4

    aput v3, v2, v10

    .line 181
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 182
    iget-byte v2, v1, Lk0/it;->e:B

    and-int/2addr v2, v5

    aput v2, v0, v10

    const/16 v2, 0x1e

    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 183
    iget-byte v3, v1, Lk0/it;->e:B

    shr-int/2addr v3, v5

    and-int/2addr v3, v5

    aput v3, v0, v10

    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x20

    new-array v3, v5, [I

    .line 184
    iget-byte v4, v1, Lk0/it;->e:B

    shr-int/2addr v4, v9

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x21

    new-array v3, v5, [I

    .line 185
    iget-byte v4, v1, Lk0/it;->e:B

    shr-int/2addr v4, v12

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x22

    new-array v3, v5, [I

    .line 186
    iget-byte v4, v1, Lk0/it;->e:B

    shr-int/2addr v4, v13

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x23

    new-array v3, v5, [I

    .line 187
    iget-byte v4, v1, Lk0/it;->e:B

    shr-int/2addr v4, v11

    and-int/2addr v4, v5

    aput v4, v3, v10

    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 188
    iget-byte v3, v1, Lk0/it;->e:B

    shr-int/lit8 v3, v3, 0x6

    and-int/2addr v3, v5

    aput v3, v0, v10

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v5, [I

    .line 189
    iget-byte v3, v1, Lk0/it;->e:B

    shr-int/2addr v3, v15

    and-int/2addr v3, v5

    aput v3, v0, v10

    const/16 v3, 0x3b

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    .line 190
    iget-byte v0, v1, Lk0/it;->f:B

    shl-int/2addr v0, v8

    and-int v0, v0, v16

    iget-byte v3, v1, Lk0/it;->g:B

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    int-to-double v3, v0

    const-wide/high16 v12, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v3, v12

    double-to-int v0, v3

    .line 191
    iget v3, v1, Lk0/it;->u:I

    if-ne v3, v5, :cond_14

    goto :goto_6

    :cond_14
    move v11, v6

    :goto_6
    if-lt v0, v11, :cond_15

    .line 192
    iget-boolean v3, v1, Lk0/it;->x:Z

    if-nez v3, :cond_16

    sget v3, Lu0/b;->k:I

    if-ne v3, v5, :cond_16

    .line 193
    iput-boolean v5, v1, Lk0/it;->x:Z

    .line 194
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v3

    iget-object v4, v1, Lk0/it;->y:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    :cond_15
    if-ge v0, v11, :cond_16

    .line 195
    iput-boolean v10, v1, Lk0/it;->x:Z

    .line 196
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " -- F005 -- 22  onHandle  iSpeed = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " DataMain.sHandbrake = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lu0/b;->k:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ln1/b;->w(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v3

    iget-object v4, v1, Lk0/it;->y:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 198
    sget v3, Lu0/b;->k:I

    if-nez v3, :cond_16

    .line 199
    invoke-static {v5}, Lu0/d;->x0(I)V

    .line 200
    :cond_16
    :goto_7
    iget v3, v1, Lk0/it;->v:I

    if-lt v3, v2, :cond_18

    if-le v0, v3, :cond_18

    .line 201
    :try_start_1
    iget-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    if-nez v0, :cond_18

    if-nez v0, :cond_17

    .line 202
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    .line 203
    :cond_17
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v2, 0x7f030022

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    .line 204
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v2, " *** mSpeedAlarm mReleaseMedia bjy"

    invoke-virtual {v0, v2}, Ln1/b;->w(Ljava/lang/String;)V

    .line 205
    iget-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 206
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v2, v1, Lk0/it;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v2, v1, Lk0/it;->C:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_8
    new-array v0, v5, [I

    .line 209
    iget-byte v2, v1, Lk0/it;->f:B

    shl-int/2addr v2, v8

    and-int v2, v2, v16

    iget-byte v3, v1, Lk0/it;->g:B

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    aput v2, v0, v10

    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x25

    new-array v2, v5, [I

    .line 210
    iget-byte v3, v1, Lk0/it;->h:B

    shl-int/2addr v3, v8

    and-int v3, v3, v16

    iget-byte v4, v1, Lk0/it;->i:B

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x26

    new-array v2, v5, [I

    .line 211
    iget-byte v3, v1, Lk0/it;->j:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x56

    new-array v2, v5, [I

    .line 212
    iget-byte v3, v1, Lk0/it;->k:B

    and-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    .line 213
    :pswitch_10
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v3

    const-string v4, " *** new 0x0f ** "

    move/from16 v6, p3

    invoke-virtual {v3, v4, v0, v2, v6}, Ln1/b;->x(Ljava/lang/String;[BII)V

    add-int/2addr v2, v5

    .line 214
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->d:B

    and-int/2addr v0, v12

    .line 215
    invoke-virtual {v1, v0}, Lk0/it;->n3(I)V

    goto/16 :goto_c

    :cond_19
    add-int/lit8 v3, v2, 0x1

    .line 216
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v3, v2, 0x2

    .line 217
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->e:B

    add-int/lit8 v3, v2, 0x3

    .line 218
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->f:B

    add-int/2addr v2, v13

    .line 219
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->g:B

    .line 220
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " F005 0x71  ESC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Lk0/it;->g:B

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln1/b;->w(Ljava/lang/String;)V

    .line 221
    iget v0, v1, Lk0/it;->u:I

    if-eqz v0, :cond_1a

    const/16 v0, 0x75

    new-array v2, v5, [I

    .line 222
    iget-byte v3, v1, Lk0/it;->d:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6f

    new-array v2, v5, [I

    .line 223
    iget-byte v3, v1, Lk0/it;->g:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :cond_1a
    const/16 v0, 0x87

    new-array v2, v5, [I

    .line 224
    iget-byte v3, v1, Lk0/it;->e:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x88

    new-array v2, v5, [I

    .line 225
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1b
    add-int/lit8 v3, v2, 0x2

    .line 226
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->e:B

    add-int/2addr v2, v12

    .line 227
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->f:B

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v2, v3, 0xff

    if-ne v2, v11, :cond_1c

    goto :goto_9

    :cond_1c
    move v11, v0

    .line 228
    :goto_9
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " F005 0x70  EPB B1 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Lk0/it;->e:B

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " B2 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, v1, Lk0/it;->f:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " epb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln1/b;->w(Ljava/lang/String;)V

    const/16 v0, 0x89

    new-array v2, v5, [I

    aput v11, v2, v10

    .line 229
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_c

    :cond_1d
    add-int/lit8 v3, v2, 0x1

    .line 230
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/it;->d:B

    add-int/lit8 v4, v2, 0x2

    .line 231
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->e:B

    add-int/lit8 v4, v2, 0x3

    .line 232
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->f:B

    add-int/lit8 v4, v2, 0x4

    .line 233
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->g:B

    add-int/lit8 v4, v2, 0x5

    .line 234
    aget-byte v4, v0, v4

    iput-byte v4, v1, Lk0/it;->h:B

    add-int/lit8 v2, v2, 0x6

    .line 235
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/it;->i:B

    const/16 v0, 0x80

    new-array v2, v5, [I

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    .line 236
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x81

    new-array v2, v5, [I

    .line 237
    iget-byte v3, v1, Lk0/it;->e:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x82

    new-array v2, v5, [I

    .line 238
    iget-byte v3, v1, Lk0/it;->f:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x84

    new-array v2, v5, [I

    .line 239
    iget-byte v3, v1, Lk0/it;->g:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x85

    new-array v2, v5, [I

    .line 240
    iget-byte v3, v1, Lk0/it;->h:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 241
    iget-byte v0, v1, Lk0/it;->f:B

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_1e

    const/16 v2, 0x2f

    if-lt v0, v2, :cond_1f

    :cond_1e
    const/16 v2, 0x33

    if-le v0, v2, :cond_20

    const/16 v2, 0x3b

    if-gt v0, v2, :cond_20

    .line 242
    :cond_1f
    sget-boolean v2, Lk0/it;->Q:Z

    if-nez v2, :cond_20

    .line 243
    sput-boolean v5, Lk0/it;->Q:Z

    const/16 v0, 0x1b4

    .line 244
    sput v0, Lu0/b;->B0:I

    const/16 v0, 0x181

    .line 245
    sput v0, Lu0/b;->C0:I

    new-array v0, v5, [I

    aput v5, v0, v10

    const/16 v2, 0x83

    const-string v3, ""

    .line 246
    invoke-static {v2, v0, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    goto :goto_a

    :cond_20
    if-eqz v0, :cond_21

    const/16 v2, 0x2f

    if-lt v0, v2, :cond_22

    const/16 v2, 0x33

    if-gt v0, v2, :cond_22

    .line 247
    :cond_21
    sget-boolean v0, Lk0/it;->Q:Z

    if-eqz v0, :cond_22

    .line 248
    sput-boolean v10, Lk0/it;->Q:Z

    const/16 v0, 0x101

    .line 249
    sput v0, Lu0/b;->B0:I

    const/16 v0, 0x1c3

    .line 250
    sput v0, Lu0/b;->C0:I

    new-array v0, v5, [I

    aput v10, v0, v10

    const/16 v2, 0x83

    const-string v3, ""

    .line 251
    invoke-static {v2, v0, v3}, Lk0/qt;->z0(I[ILjava/lang/String;)V

    const/4 v0, -0x1

    .line 252
    sput v0, Lg/a;->j:I

    .line 253
    sget-object v0, Lu0/c;->f:Lo1/y;

    invoke-virtual {v0}, Lo1/y;->c()V

    .line 254
    :cond_22
    :goto_a
    iget-byte v0, v1, Lk0/it;->i:B

    and-int/lit16 v2, v0, 0xff

    if-eq v2, v5, :cond_23

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v9, :cond_27

    .line 255
    :cond_23
    :try_start_2
    iget-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    if-nez v0, :cond_27

    .line 256
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    const/16 v2, 0x16

    new-array v3, v5, [I

    aput v5, v3, v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lbase/b;->Z0(I[I[F[Ljava/lang/String;)V

    .line 257
    iget-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    if-nez v0, :cond_24

    .line 258
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    .line 259
    :cond_24
    iget-byte v0, v1, Lk0/it;->i:B

    and-int/lit16 v0, v0, 0xff

    if-ne v0, v9, :cond_25

    .line 260
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v2, 0x7f030022

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    goto :goto_b

    .line 261
    :cond_25
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v2, 0x7f030082

    invoke-static {v0, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    .line 262
    :goto_b
    iget-object v0, v1, Lk0/it;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 263
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v2, v1, Lk0/it;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 264
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v2, v1, Lk0/it;->C:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_c

    :catch_3
    move-exception v0

    .line 265
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    :cond_26
    const-string v3, "auto"

    const-string v4, "car foo5 0xaa auto test"

    .line 266
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/2addr v2, v5

    .line 267
    aget-byte v3, v0, v2

    invoke-static {v0, v2, v3}, Lk0/pt;->o([BII)V

    :cond_27
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
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

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/it;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/it;->D:Lk0/st;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lk0/it;->D:Lk0/st;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/it;->K:Ljava/lang/Runnable;

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
    .locals 9

    const-string p3, " "

    const/4 p4, 0x5

    const-string v0, "epb"

    const/16 v1, 0x45

    const-string v2, "LLL"

    const/4 v3, 0x4

    const/16 v4, 0xe3

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    .line 1
    :pswitch_1
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "C_CMD_EPB : 0xE3, 0x44, 0,1"

    .line 2
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    .line 3
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 4
    :pswitch_2
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_AUTOHOLD_ENABLE : 0xE3, 0x45,0x03, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    aput v4, p1, v8

    aput v1, p1, v7

    aput v5, p1, v6

    .line 6
    aget p2, p2, v8

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 7
    :pswitch_3
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_HDC : 0xE3, 0x45,0x02, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    aput v4, p1, v8

    aput v1, p1, v7

    aput v6, p1, v6

    .line 9
    aget p2, p2, v8

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 10
    :pswitch_4
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MS C_CARINFO_2020_DRIVERMODE : 0xE3, 0x43, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "gdyy"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x43

    aput p3, p1, v7

    .line 12
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 13
    :pswitch_5
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    aget p1, p2, v8

    packed-switch p1, :pswitch_data_1

    move p1, v8

    :goto_0
    move p4, p1

    goto :goto_3

    :pswitch_6
    move p4, v3

    goto :goto_1

    :pswitch_7
    move p4, v3

    goto :goto_2

    :pswitch_8
    move p1, v6

    move p4, v8

    goto :goto_3

    :pswitch_9
    move p1, v7

    goto :goto_0

    :pswitch_a
    move p1, v6

    move p4, v7

    goto :goto_3

    :pswitch_b
    move p1, v5

    goto :goto_0

    :pswitch_c
    move p4, v5

    :goto_1
    :pswitch_d
    move p1, v6

    goto :goto_3

    :pswitch_e
    move p4, v5

    goto :goto_2

    :pswitch_f
    move p4, v6

    :goto_2
    :pswitch_10
    move p1, v7

    :goto_3
    new-array p2, v3, [I

    aput v4, p2, v8

    const/16 p3, 0x42

    aput p3, p2, v7

    aput p4, p2, v6

    aput p1, p2, v5

    .line 15
    invoke-static {p2}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 16
    :pswitch_11
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "C_CARINFO_SMART_DRIVER : 0xE3, 0x36, "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v8

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "driver"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    aput v4, p1, v8

    const/16 p3, 0x36

    aput p3, p1, v7

    .line 18
    aget p3, p2, v8

    aput p3, p1, v6

    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 19
    :pswitch_12
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CARINFO_AUTO_PARK : 0xE3, 0x38, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x7a

    new-array p3, v7, [I

    .line 21
    aget p4, p2, v7

    aput p4, p3, v8

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 22
    iget-object p1, p0, Lk0/it;->b:Lo1/g0;

    const/16 p3, 0x8

    aget p4, p2, v8

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v3, [I

    aput v4, p1, v8

    const/16 p3, 0x38

    aput p3, p1, v7

    .line 23
    aget p3, p2, v8

    aput p3, p1, v6

    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :pswitch_13
    if-eqz p2, :cond_3

    .line 24
    array-length p1, p2

    if-lez p1, :cond_3

    const/16 p1, 0x78

    new-array p3, v7, [I

    .line 25
    aget p4, p2, v8

    aput p4, p3, v8

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 26
    iget-object p1, p0, Lk0/it;->b:Lo1/g0;

    const/4 p3, 0x7

    aget p4, p2, v8

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ints[0] :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QQQQ"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 28
    :pswitch_14
    invoke-virtual {p0, p2, v6}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "C_CMD_HAC : 0xE3, 0x32, "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v8

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    aget p1, p2, v8

    iput p1, p0, Lk0/it;->z:I

    .line 31
    aget p1, p2, v7

    iput p1, p0, Lk0/it;->A:I

    .line 32
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object p2, p0, Lk0/it;->B:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 33
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object p1

    iget-object p2, p0, Lk0/it;->B:Ljava/lang/Runnable;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    .line 34
    :pswitch_15
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_HAC : 0xE3, 0x2E, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget p1, p0, Lk0/it;->u:I

    if-eqz p1, :cond_0

    new-array p1, v3, [I

    aput v4, p1, v8

    aput v1, p1, v7

    aput v7, p1, v6

    .line 37
    aget p2, p2, v8

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :cond_0
    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x2e

    aput p3, p1, v7

    .line 38
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 39
    :pswitch_16
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_AUTOHOLD : 0xE3, 0x31, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x31

    aput p3, p1, v7

    .line 41
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 42
    :pswitch_17
    invoke-virtual {p0, p2, v6}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_AIRSET : 0xE3, 0x40, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v8

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v3, [I

    aput v4, p1, v8

    const/16 p3, 0x40

    aput p3, p1, v7

    .line 44
    aget p3, p2, v8

    aput p3, p1, v6

    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    :pswitch_18
    if-eqz p2, :cond_3

    .line 45
    array-length p1, p2

    if-lez p1, :cond_3

    const/16 p1, 0x6b

    new-array p3, v7, [I

    .line 46
    aget p4, p2, v8

    aput p4, p3, v8

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 47
    iget-object p1, p0, Lk0/it;->b:Lo1/g0;

    aget p3, p2, v8

    invoke-virtual {p1, v5, p3}, Lo1/g0;->e(II)V

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x2c

    aput p3, p1, v7

    .line 48
    aget p3, p2, v8

    aput p3, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_INCAR_AUTOLOCK : 0xE3, 0x2C, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_19
    if-eqz p2, :cond_3

    .line 50
    array-length p1, p2

    if-lez p1, :cond_3

    const/16 p1, 0x68

    new-array p3, v7, [I

    .line 51
    aget p4, p2, v8

    aput p4, p3, v8

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 52
    iget-object p1, p0, Lk0/it;->b:Lo1/g0;

    aget p3, p2, v8

    invoke-virtual {p1, v7, p3}, Lo1/g0;->e(II)V

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x2b

    aput p3, p1, v7

    .line 53
    aget p3, p2, v8

    aput p3, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_INCAR_AUTOVENTILATION : 0xE3, 0x2B, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_1a
    if-eqz p2, :cond_3

    .line 55
    array-length p1, p2

    if-lez p1, :cond_3

    const/16 p1, 0x67

    new-array p3, v7, [I

    .line 56
    aget v0, p2, v8

    aput v0, p3, v8

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 57
    iget-object p1, p0, Lk0/it;->b:Lo1/g0;

    aget p3, p2, v8

    invoke-virtual {p1, p4, p3}, Lo1/g0;->e(II)V

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x2a

    aput p3, p1, v7

    .line 58
    aget p3, p2, v8

    aput p3, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_AIR_AUTOClEAN : 0xE3, 0x2A, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_1b
    if-eqz p2, :cond_3

    .line 60
    array-length p1, p2

    if-lez p1, :cond_3

    const/16 p1, 0x63

    new-array p3, v7, [I

    .line 61
    aget p4, p2, v8

    aput p4, p3, v8

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 62
    iget-object p1, p0, Lk0/it;->b:Lo1/g0;

    aget p2, p2, v8

    invoke-virtual {p1, v6, p2}, Lo1/g0;->e(II)V

    goto/16 :goto_6

    :pswitch_1c
    if-eqz p2, :cond_3

    .line 63
    array-length p1, p2

    if-lez p1, :cond_3

    .line 64
    iget p1, p0, Lk0/it;->u:I

    if-eqz p1, :cond_1

    new-array p1, v3, [I

    aput v4, p1, v8

    aput v1, p1, v7

    aput v8, p1, v6

    .line 65
    aget p3, p2, v8

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 66
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " F005 ESC writeMcu  0x45 , 0x00 , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v8

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln1/b;->w(Ljava/lang/String;)V

    goto :goto_4

    :cond_1
    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x2d

    aput p3, p1, v7

    .line 67
    aget p3, p2, v8

    aput p3, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 68
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " F005 ESC writeMcu  0x2D , "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v8

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ln1/b;->w(Ljava/lang/String;)V

    .line 69
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_DRIVE_NONSLIP : 0xE3, 0x2D, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 70
    :pswitch_1d
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x29

    aput p3, p1, v7

    .line 71
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 72
    :pswitch_1e
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x28

    aput p3, p1, v7

    .line 73
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 74
    :pswitch_1f
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x27

    aput p3, p1, v7

    .line 75
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_6

    .line 76
    :pswitch_20
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x26

    aput p3, p1, v7

    .line 77
    aget p2, p2, v8

    aput p2, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_6

    .line 78
    :pswitch_21
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v3, [I

    aput v4, p1, v8

    const/16 p3, 0x25

    aput p3, p1, v7

    .line 79
    aget p2, p2, v8

    aput p2, p1, v6

    aput v8, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_6

    .line 80
    :pswitch_22
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x23

    aput p3, p1, v7

    .line 81
    aget p2, p2, v8

    if-lez p2, :cond_2

    goto :goto_5

    :cond_2
    move v7, v8

    :goto_5
    aput v7, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_6

    .line 82
    :pswitch_23
    invoke-virtual {p0, p2, v7}, Lk0/it;->k3([II)Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v5, [I

    aput v4, p1, v8

    const/16 p3, 0x20

    aput p3, p1, v7

    .line 83
    aget p3, p2, v8

    aput p3, p1, v6

    invoke-static {p1}, Lz/k;->s([I)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_BATTERY : 0xE3, 0x20, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v8

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_10
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x44
        0x0
        0x1
    .end array-data
.end method

.method public final h3(II)V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x40

    aput v2, v0, v1

    int-to-byte v1, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    int-to-byte v1, p2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MainServer F005 cmdAir 0x40 , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "voll"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final k3([II)Z
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

.method public l3()Z
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

.method public final n3(I)V
    .locals 3

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " *** setLanguage  lang=  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " DataMain.sLanguage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lu0/b;->K3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/b;->w(Ljava/lang/String;)V

    .line 2
    sget-object v0, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 3
    sget v1, Lu0/b;->K3:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 4
    sget-object v0, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 5
    sget v1, Lu0/b;->K3:I

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 6
    new-instance v0, Ljava/util/Locale;

    const-string p1, "pt"

    const-string v1, "BR"

    invoke-direct {v0, p1, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 7
    sget p1, Lu0/b;->K3:I

    if-eqz p1, :cond_2

    .line 8
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 9
    :cond_2
    :goto_0
    invoke-static {v0}, Lj/f;->a(Ljava/util/Locale;)V

    return-void
.end method

.method public z1([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/it;->U2([BII)V

    return-void
.end method

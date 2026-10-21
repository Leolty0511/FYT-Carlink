.class public Lk0/ht;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# static fields
.field public static M:Z = false


# instance fields
.field public A:Lk0/st;

.field public B:Ljava/lang/Runnable;

.field public C:I

.field public D:I

.field public E:I

.field public F:I

.field public G:Ljava/lang/Runnable;

.field public H:Ljava/lang/Runnable;

.field public I:J

.field public J:I

.field public K:I

.field public L:I

.field public b:Lo1/g0;

.field public c:Landroid/content/ContentResolver;

.field public d:B

.field public e:B

.field public f:B

.field public g:B

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:B

.field public m:B

.field public n:B

.field public o:B

.field public p:B

.field public q:B

.field public r:B

.field public s:B

.field public t:B

.field public u:[I

.field public v:I

.field public w:I

.field public x:Z

.field public y:I

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

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

    iput-object v0, p0, Lk0/ht;->b:Lo1/g0;

    const/16 v0, 0xf

    .line 4
    iput-byte v0, p0, Lk0/ht;->t:B

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    iput-object v0, p0, Lk0/ht;->u:[I

    const/4 v0, 0x7

    .line 6
    iput v0, p0, Lk0/ht;->v:I

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lk0/ht;->w:I

    .line 8
    iput-boolean v0, p0, Lk0/ht;->x:Z

    .line 9
    iget-object v1, p0, Lk0/lt;->a:Lk0/mt;

    const/4 v2, 0x1

    iput v2, v1, Lk0/mt;->e:I

    .line 10
    iput v2, v1, Lk0/mt;->f:I

    .line 11
    iput v2, v1, Lk0/mt;->g:I

    .line 12
    iput v2, v1, Lk0/mt;->i:I

    const/16 v3, 0xe

    new-array v3, v3, [I

    .line 13
    fill-array-data v3, :array_1

    iput-object v3, v1, Lk0/mt;->m:[I

    .line 14
    iput v0, p0, Lk0/ht;->y:I

    .line 15
    iput-boolean v2, p0, Lk0/ht;->z:Z

    .line 16
    new-instance v1, Lk0/ht$b;

    invoke-direct {v1, p0}, Lk0/ht$b;-><init>(Lk0/ht;)V

    iput-object v1, p0, Lk0/ht;->B:Ljava/lang/Runnable;

    .line 17
    iput v0, p0, Lk0/ht;->C:I

    iput v0, p0, Lk0/ht;->D:I

    iput v0, p0, Lk0/ht;->E:I

    .line 18
    iput v0, p0, Lk0/ht;->F:I

    .line 19
    new-instance v1, Lk0/ht$c;

    invoke-direct {v1, p0}, Lk0/ht$c;-><init>(Lk0/ht;)V

    iput-object v1, p0, Lk0/ht;->G:Ljava/lang/Runnable;

    .line 20
    new-instance v1, Lk0/ht$d;

    invoke-direct {v1, p0}, Lk0/ht$d;-><init>(Lk0/ht;)V

    iput-object v1, p0, Lk0/ht;->H:Ljava/lang/Runnable;

    const-wide/16 v1, -0x1

    .line 21
    iput-wide v1, p0, Lk0/ht;->I:J

    const/4 v1, -0x1

    .line 22
    iput v1, p0, Lk0/ht;->J:I

    .line 23
    iput v0, p0, Lk0/ht;->K:I

    iput v0, p0, Lk0/ht;->L:I

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

    :array_1
    .array-data 4
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x29
        0x2a
        0x33
        0x34
        0x37
        0x39
        0x3a
    .end array-data
.end method

.method public static synthetic a3(Lk0/ht;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/ht;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic b3()Z
    .locals 1

    .line 1
    sget-boolean v0, Lk0/ht;->M:Z

    return v0
.end method

.method public static synthetic c3(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lk0/ht;->M:Z

    return p0
.end method

.method public static synthetic d3(Lk0/ht;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/ht;->I:J

    return-wide v0
.end method

.method public static synthetic e3(Lk0/ht;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/ht;->I:J

    return-wide p1
.end method

.method public static synthetic f3(Lk0/ht;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/ht;->J:I

    return p0
.end method

.method public static synthetic g3(Lk0/ht;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/ht;->J:I

    return p1
.end method

.method public static k3()Ljava/lang/Process;
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

.method public static l3(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4

    .line 1
    invoke-static {}, Lk0/ht;->k3()Ljava/lang/Process;

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

.method public static p3()V
    .locals 1

    const-string v0, "chmod 666 /dev/alarm"

    .line 1
    invoke-static {v0}, Lk0/ht;->l3(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static q3(II)V
    .locals 6

    .line 1
    invoke-static {}, Lk0/ht;->p3()V

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
    .locals 10

    .line 1
    invoke-super {p0, p1}, Lk0/lt;->O2([I)V

    if-eqz p1, :cond_18

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    aget v2, p1, v0

    const/4 v3, 0x1

    .line 4
    aget v4, p1, v3

    const/16 v5, 0x29

    const/16 v6, 0x9

    const/16 v7, 0x13

    const/16 v8, 0x8

    const/16 v9, 0x1e

    if-eq v2, v5, :cond_16

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_14

    const/16 v5, 0x33

    if-eq v2, v5, :cond_12

    const/16 v5, 0x34

    if-eq v2, v5, :cond_10

    const/16 v5, 0x37

    const/16 v6, 0xff

    if-eq v2, v5, :cond_d

    const/16 v5, 0x39

    if-eq v2, v5, :cond_b

    const/16 v5, 0x3a

    const/4 v7, 0x6

    const/4 v8, 0x7

    if-eq v2, v5, :cond_a

    const/16 p1, 0xc

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 5
    :pswitch_0
    sget-object p1, Lk0/nt;->g:[I

    const/16 v0, 0x12

    aget p1, p1, v0

    iput p1, p0, Lk0/ht;->K:I

    const/4 v0, -0x2

    if-ne v4, v0, :cond_2

    if-lez p1, :cond_1

    sub-int/2addr p1, v3

    .line 6
    iput p1, p0, Lk0/ht;->K:I

    .line 7
    :cond_1
    iget p1, p0, Lk0/ht;->K:I

    invoke-virtual {p0, v8, p1}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_18

    if-ge p1, v8, :cond_3

    add-int/2addr p1, v3

    .line 8
    iput p1, p0, Lk0/ht;->K:I

    .line 9
    :cond_3
    iget p1, p0, Lk0/ht;->K:I

    invoke-virtual {p0, v7, p1}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 10
    :pswitch_1
    sget-object v1, Lk0/nt;->g:[I

    aget p1, v1, p1

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_4

    .line 11
    invoke-virtual {p0, v3, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 12
    :cond_4
    invoke-virtual {p0, v3, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 13
    :pswitch_2
    sget-object p1, Lk0/nt;->g:[I

    const/16 v2, 0xd

    aget p1, p1, v2

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_5

    .line 14
    invoke-virtual {p0, v1, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 15
    :cond_5
    invoke-virtual {p0, v1, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 16
    :pswitch_3
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x14

    aget p1, p1, v1

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_6

    .line 17
    invoke-virtual {p0, v0, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 18
    :cond_6
    invoke-virtual {p0, v0, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 19
    :pswitch_4
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x17

    aget p1, p1, v1

    iput p1, p0, Lk0/ht;->K:I

    const/4 p1, 0x5

    if-ne v4, v3, :cond_7

    .line 20
    invoke-virtual {p0, p1, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 21
    :cond_7
    invoke-virtual {p0, p1, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 22
    :pswitch_5
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0xb

    aget p1, p1, v1

    iput p1, p0, Lk0/ht;->K:I

    const/4 p1, 0x3

    if-ne v4, v3, :cond_8

    .line 23
    invoke-virtual {p0, p1, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 24
    :cond_8
    invoke-virtual {p0, p1, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 25
    :pswitch_6
    sget-object v1, Lk0/nt;->g:[I

    const/16 v2, 0x18

    aget v1, v1, v2

    iput v1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_9

    .line 26
    invoke-virtual {p0, p1, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 27
    :cond_9
    invoke-virtual {p0, p1, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 28
    :cond_a
    aget p1, p1, v3

    and-int/2addr p1, v6

    if-gt p1, v8, :cond_18

    .line 29
    invoke-virtual {p0, v7, p1}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 30
    :cond_b
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x16

    aget p1, p1, v1

    iput p1, p0, Lk0/ht;->K:I

    const/4 p1, 0x4

    if-ne v4, v3, :cond_c

    .line 31
    invoke-virtual {p0, p1, v3}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 32
    :cond_c
    invoke-virtual {p0, p1, v0}, Lk0/ht;->h3(II)V

    goto/16 :goto_1

    .line 33
    :cond_d
    aget p1, p1, v3

    and-int/2addr p1, v6

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    if-ne p1, v6, :cond_f

    move v0, v9

    goto :goto_0

    :cond_f
    mul-int/2addr p1, v1

    add-int/lit8 v0, p1, -0x23

    .line 34
    :goto_0
    invoke-virtual {p0, v8, v0}, Lk0/ht;->h3(II)V

    goto :goto_1

    .line 35
    :cond_10
    sget-object p1, Lk0/nt;->g:[I

    const/16 v2, 0x1c

    aget p1, p1, v2

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_11

    .line 36
    invoke-virtual {p0, v1}, Lk0/ht;->j3(I)V

    goto :goto_1

    .line 37
    :cond_11
    invoke-virtual {p0, v0}, Lk0/ht;->j3(I)V

    goto :goto_1

    .line 38
    :cond_12
    sget-object p1, Lk0/nt;->g:[I

    const/16 v2, 0x1b

    aget p1, p1, v2

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_13

    .line 39
    invoke-virtual {p0, v1}, Lk0/ht;->i3(I)V

    goto :goto_1

    .line 40
    :cond_13
    invoke-virtual {p0, v0}, Lk0/ht;->i3(I)V

    goto :goto_1

    .line 41
    :cond_14
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_15

    if-ge p1, v9, :cond_18

    add-int/2addr p1, v3

    .line 42
    iput p1, p0, Lk0/ht;->K:I

    invoke-virtual {p0, v8, p1}, Lk0/ht;->h3(II)V

    goto :goto_1

    :cond_15
    if-lez p1, :cond_18

    sub-int/2addr p1, v3

    .line 43
    iput p1, p0, Lk0/ht;->K:I

    invoke-virtual {p0, v6, p1}, Lk0/ht;->h3(II)V

    goto :goto_1

    .line 44
    :cond_16
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v7

    iput p1, p0, Lk0/ht;->K:I

    if-ne v4, v3, :cond_17

    if-ge p1, v9, :cond_18

    add-int/2addr p1, v3

    .line 45
    iput p1, p0, Lk0/ht;->K:I

    invoke-virtual {p0, v8, p1}, Lk0/ht;->h3(II)V

    goto :goto_1

    :cond_17
    if-lez p1, :cond_18

    sub-int/2addr p1, v3

    .line 46
    iput p1, p0, Lk0/ht;->K:I

    invoke-virtual {p0, v6, p1}, Lk0/ht;->h3(II)V

    :cond_18
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S2()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.syu.autotest.radio_recv"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.syu.autotest.media_recv"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.syu.autotest.bt_recv"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.syu.autotest.set_recv"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.android.mirror.in"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.android.mirror.out"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.inner.mirror.in"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.inner.mirror.out"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.mirror.in"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.mirror.out"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.drivemode.checkstatus"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 13
    new-instance v1, Lk0/st;

    invoke-direct {v1}, Lk0/st;-><init>()V

    iput-object v1, p0, Lk0/ht;->A:Lk0/st;

    .line 14
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Lk0/ht;->A:Lk0/st;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "ro.fyt.uiid"

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, La/i;->k(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lk0/ht;->w:I

    .line 16
    iget-object v0, p0, Lk0/ht;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Lk0/qt;->z(Ljava/lang/Runnable;)V

    .line 17
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 19
    iget-object v0, p0, Lk0/ht;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 20
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lk0/ht;->c:Landroid/content/ContentResolver;

    .line 21
    iget v0, p0, Lk0/ht;->w:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    const/16 v0, 0x3d

    const/4 v2, 0x1

    new-array v3, v2, [I

    aput v2, v3, v1

    .line 22
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    :cond_0
    return-void
.end method

.method public U2([BII)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, -0x56

    const/4 v4, 0x1

    if-eq v2, v3, :cond_e

    const/16 v3, 0x3b

    const/16 v5, 0x17

    const/16 v6, 0xd

    const/16 v7, 0xc

    const/16 v8, 0xb

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v14, 0x3

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/ht;->d:B

    and-int/2addr v0, v4

    const/16 v2, 0x5b

    if-ne v0, v4, :cond_0

    new-array v0, v4, [I

    aput v4, v0, v15

    .line 3
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    aput v15, v0, v15

    .line 4
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :cond_0
    new-array v0, v4, [I

    aput v15, v0, v15

    .line 5
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    .line 6
    :pswitch_1
    iget-byte v2, v1, Lk0/ht;->t:B

    add-int/lit8 v3, p2, 0x1

    aget-byte v5, v0, v3

    if-ne v2, v5, :cond_1

    goto/16 :goto_4

    .line 7
    :cond_1
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->d:B

    iput-byte v0, v1, Lk0/ht;->t:B

    const/16 v2, 0x5a

    new-array v3, v4, [I

    and-int/2addr v0, v4

    aput v0, v3, v15

    .line 8
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 9
    iget-byte v0, v1, Lk0/ht;->d:B

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_2

    .line 10
    sput-boolean v4, Lk0/ht;->M:Z

    .line 11
    :cond_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v2, v1, Lk0/ht;->B:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_4

    :pswitch_2
    add-int/lit8 v2, p2, 0x1

    .line 12
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/ht;->d:B

    const/16 v2, 0x66

    new-array v3, v4, [I

    and-int/lit8 v0, v0, 0x7

    aput v0, v3, v15

    .line 13
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_3
    add-int/lit8 v2, p2, 0x1

    .line 14
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 15
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->e:B

    const/16 v0, 0x39

    new-array v3, v4, [I

    and-int/lit8 v2, v2, 0x7f

    aput v2, v3, v15

    .line 16
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3a

    new-array v2, v4, [I

    .line 17
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_4
    add-int/lit8 v2, p2, 0x1

    .line 18
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 19
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->e:B

    const/16 v0, 0x67

    new-array v3, v4, [I

    and-int/2addr v2, v4

    aput v2, v3, v15

    .line 20
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x68

    new-array v2, v4, [I

    .line 21
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_5
    add-int/lit8 v2, p2, 0x1

    .line 22
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 23
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->e:B

    add-int/lit8 v3, p2, 0x3

    .line 24
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->f:B

    add-int/lit8 v3, p2, 0x4

    .line 25
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->g:B

    const/16 v0, 0x61

    new-array v3, v4, [I

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v15

    .line 26
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x60

    new-array v2, v4, [I

    .line 27
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x63

    new-array v2, v4, [I

    .line 28
    iget-byte v3, v1, Lk0/ht;->f:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x62

    new-array v2, v4, [I

    .line 29
    iget-byte v3, v1, Lk0/ht;->g:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_6
    add-int/lit8 v2, p2, 0x1

    .line 30
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 31
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->e:B

    add-int/lit8 v3, p2, 0x3

    .line 32
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->f:B

    add-int/lit8 v3, p2, 0x4

    .line 33
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->g:B

    add-int/lit8 v3, p2, 0x5

    .line 34
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->h:B

    const/16 v0, 0x55

    new-array v3, v4, [I

    and-int/lit16 v2, v2, 0xff

    aput v2, v3, v15

    .line 35
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x57

    new-array v2, v4, [I

    .line 36
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    .line 37
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x56

    new-array v2, v4, [I

    .line 38
    iget-byte v3, v1, Lk0/ht;->f:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x59

    new-array v2, v4, [I

    .line 39
    iget-byte v3, v1, Lk0/ht;->g:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x58

    new-array v2, v4, [I

    .line 40
    iget-byte v3, v1, Lk0/ht;->h:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 41
    iget-byte v0, v1, Lk0/ht;->g:B

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-byte v2, v1, Lk0/ht;->h:B

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    int-to-double v2, v0

    const-wide/high16 v7, 0x3fb0000000000000L    # 0.0625

    mul-double/2addr v2, v7

    double-to-int v0, v2

    .line 42
    iget v2, v1, Lk0/ht;->w:I

    if-eq v2, v10, :cond_5

    if-eq v2, v11, :cond_5

    if-ne v2, v9, :cond_3

    goto :goto_0

    :cond_3
    if-le v0, v12, :cond_4

    .line 43
    invoke-static {v15}, Lu0/d;->x0(I)V

    goto/16 :goto_4

    :cond_4
    if-ge v0, v6, :cond_f

    .line 44
    invoke-static {v4}, Lu0/d;->x0(I)V

    goto/16 :goto_4

    :cond_5
    :goto_0
    if-lt v0, v11, :cond_6

    move v2, v4

    goto :goto_1

    :cond_6
    move v2, v15

    :goto_1
    if-lt v0, v11, :cond_7

    .line 45
    invoke-static {v15}, Lu0/d;->x0(I)V

    move v4, v15

    goto :goto_2

    :cond_7
    if-ge v0, v11, :cond_8

    .line 46
    invoke-static {v4}, Lu0/d;->x0(I)V

    goto :goto_2

    :cond_8
    move v4, v2

    .line 47
    :goto_2
    sget-boolean v2, Lk0/pt;->d:Z

    if-ne v4, v2, :cond_9

    iget-boolean v2, v1, Lk0/ht;->z:Z

    if-eqz v2, :cond_f

    .line 48
    :cond_9
    iput-boolean v15, v1, Lk0/ht;->z:Z

    .line 49
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v2

    new-instance v3, Lk0/ht$a;

    invoke-direct {v3, v1}, Lk0/ht$a;-><init>(Lk0/ht;)V

    const-wide/16 v5, 0xbb8

    invoke-virtual {v2, v3, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    iput v0, v1, Lk0/ht;->y:I

    .line 51
    sput-boolean v4, Lk0/pt;->d:Z

    if-nez v4, :cond_a

    .line 52
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "net.easyconn.drivemode.opened"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 53
    :cond_a
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "net.easyconn.drivemode.closed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    :pswitch_7
    add-int/lit8 v2, p2, 0x1

    .line 54
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v2, p2, 0x2

    .line 55
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->e:B

    add-int/lit8 v2, p2, 0x3

    .line 56
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->f:B

    add-int/lit8 v2, p2, 0x4

    .line 57
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->g:B

    add-int/lit8 v2, p2, 0x5

    .line 58
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->h:B

    add-int/lit8 v2, p2, 0x6

    .line 59
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->i:B

    add-int/lit8 v2, p2, 0x7

    .line 60
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->j:B

    add-int/lit8 v2, p2, 0x8

    .line 61
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->k:B

    add-int/lit8 v2, p2, 0x9

    .line 62
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->l:B

    add-int/lit8 v2, p2, 0xa

    .line 63
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->m:B

    add-int/lit8 v2, p2, 0xb

    .line 64
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->n:B

    add-int/lit8 v3, p2, 0xc

    .line 65
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->o:B

    add-int/lit8 v3, p2, 0xd

    .line 66
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->p:B

    add-int/lit8 v3, p2, 0xe

    .line 67
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->q:B

    add-int/lit8 v3, p2, 0xf

    .line 68
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->r:B

    add-int/lit8 v3, p2, 0x10

    .line 69
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->s:B

    const/16 v0, 0x64

    new-array v3, v4, [I

    and-int/2addr v2, v14

    aput v2, v3, v15

    .line 70
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x34

    new-array v2, v4, [I

    .line 71
    iget-byte v3, v1, Lk0/ht;->d:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x52

    new-array v2, v4, [I

    .line 72
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x35

    new-array v2, v4, [I

    .line 73
    iget-byte v3, v1, Lk0/ht;->f:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x50

    new-array v2, v4, [I

    .line 74
    iget-byte v3, v1, Lk0/ht;->g:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x53

    new-array v2, v4, [I

    .line 75
    iget-byte v3, v1, Lk0/ht;->h:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x19

    new-array v2, v4, [I

    .line 76
    iget-byte v3, v1, Lk0/ht;->i:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x31

    new-array v2, v4, [I

    .line 77
    iget-byte v3, v1, Lk0/ht;->j:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x51

    new-array v2, v4, [I

    .line 78
    iget-byte v3, v1, Lk0/ht;->k:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x54

    new-array v2, v4, [I

    .line 79
    iget-byte v3, v1, Lk0/ht;->l:B

    and-int/2addr v3, v14

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x47

    new-array v2, v4, [I

    .line 80
    iget-byte v3, v1, Lk0/ht;->m:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x44

    new-array v2, v4, [I

    .line 81
    iget-byte v3, v1, Lk0/ht;->o:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x65

    new-array v2, v4, [I

    .line 82
    iget-byte v3, v1, Lk0/ht;->p:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x45

    new-array v2, v4, [I

    .line 83
    iget-byte v3, v1, Lk0/ht;->q:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x46

    new-array v2, v4, [I

    .line 84
    iget-byte v3, v1, Lk0/ht;->r:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    .line 85
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x48

    new-array v2, v4, [I

    .line 86
    iget-byte v3, v1, Lk0/ht;->s:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_8
    add-int/lit8 v2, p2, 0x1

    .line 87
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 88
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->e:B

    const/16 v0, 0x1b

    new-array v3, v4, [I

    and-int/2addr v2, v14

    aput v2, v3, v15

    .line 89
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1c

    new-array v2, v4, [I

    .line 90
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v14

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_9
    add-int/lit8 v2, p2, 0x1

    .line 91
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v5, p2, 0x2

    .line 92
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/ht;->e:B

    add-int/lit8 v5, p2, 0x3

    .line 93
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/ht;->f:B

    add-int/lit8 v5, p2, 0x4

    .line 94
    aget-byte v0, v0, v5

    iput-byte v0, v1, Lk0/ht;->g:B

    const/16 v0, 0x33

    new-array v5, v4, [I

    and-int/2addr v2, v12

    aput v2, v5, v15

    .line 95
    invoke-static {v0, v5}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4f

    new-array v2, v4, [I

    .line 96
    iget-byte v5, v1, Lk0/ht;->e:B

    and-int/lit16 v5, v5, 0xff

    aput v5, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3c

    new-array v2, v4, [I

    .line 97
    iget-byte v5, v1, Lk0/ht;->f:B

    and-int/2addr v5, v4

    aput v5, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 98
    iget-byte v2, v1, Lk0/ht;->g:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_a
    add-int/lit8 v2, p2, 0x1

    .line 99
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v6, p2, 0x2

    .line 100
    aget-byte v0, v0, v6

    iput-byte v0, v1, Lk0/ht;->e:B

    const/16 v0, 0x5e

    new-array v6, v4, [I

    and-int/lit16 v2, v2, 0xff

    aput v2, v6, v15

    .line 101
    invoke-static {v0, v6}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x5f

    new-array v2, v4, [I

    .line 102
    iget-byte v6, v1, Lk0/ht;->e:B

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 103
    iget-byte v0, v1, Lk0/ht;->d:B

    if-ltz v0, :cond_b

    if-gt v0, v5, :cond_b

    iget-byte v2, v1, Lk0/ht;->e:B

    if-ltz v2, :cond_b

    if-gt v2, v3, :cond_b

    .line 104
    iput-boolean v4, v1, Lk0/ht;->x:Z

    goto :goto_3

    .line 105
    :cond_b
    iput-boolean v15, v1, Lk0/ht;->x:Z

    :goto_3
    if-nez v0, :cond_c

    .line 106
    iget-byte v0, v1, Lk0/ht;->e:B

    if-nez v0, :cond_c

    .line 107
    iput-boolean v15, v1, Lk0/ht;->x:Z

    .line 108
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lk0/ht;->n3()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 109
    iput-boolean v15, v1, Lk0/ht;->x:Z

    .line 110
    :cond_d
    iget-boolean v0, v1, Lk0/ht;->x:Z

    if-eqz v0, :cond_f

    .line 111
    iput-boolean v15, v1, Lk0/ht;->x:Z

    .line 112
    :try_start_0
    iget-byte v0, v1, Lk0/ht;->d:B

    iget-byte v2, v1, Lk0/ht;->e:B

    invoke-static {v0, v2}, Lk0/ht;->q3(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_4

    :catch_1
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :pswitch_b
    add-int/lit8 v2, p2, 0x1

    .line 115
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 116
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->e:B

    add-int/lit8 v3, p2, 0x3

    .line 117
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->f:B

    add-int/lit8 v3, p2, 0x4

    .line 118
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->g:B

    add-int/lit8 v3, p2, 0x5

    .line 119
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->h:B

    add-int/lit8 v3, p2, 0x6

    .line 120
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->i:B

    add-int/lit8 v3, p2, 0x7

    .line 121
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->j:B

    add-int/lit8 v3, p2, 0x8

    .line 122
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->k:B

    add-int/lit8 v3, p2, 0x9

    .line 123
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->l:B

    add-int/lit8 v3, p2, 0xa

    .line 124
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->m:B

    add-int/lit8 v3, p2, 0xb

    .line 125
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->n:B

    add-int/lit8 v3, p2, 0xc

    .line 126
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->o:B

    add-int/lit8 v3, p2, 0xd

    .line 127
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->p:B

    add-int/lit8 v3, p2, 0xe

    .line 128
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->q:B

    add-int/lit8 v3, p2, 0xf

    .line 129
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->r:B

    add-int/lit8 v3, p2, 0x10

    .line 130
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->s:B

    new-array v0, v4, [I

    and-int/2addr v2, v4

    aput v2, v0, v15

    .line 131
    invoke-static {v8, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 132
    iget-byte v2, v1, Lk0/ht;->e:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v5, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x16

    new-array v2, v4, [I

    .line 133
    iget-byte v3, v1, Lk0/ht;->f:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 134
    iget-byte v2, v1, Lk0/ht;->g:B

    and-int/2addr v2, v14

    aput v2, v0, v15

    invoke-static {v7, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x42

    new-array v2, v4, [I

    .line 135
    iget-byte v3, v1, Lk0/ht;->h:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x18

    new-array v2, v4, [I

    .line 136
    iget-byte v3, v1, Lk0/ht;->i:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x12

    new-array v2, v4, [I

    .line 137
    iget-byte v3, v1, Lk0/ht;->n:B

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x11

    new-array v2, v4, [I

    .line 138
    iget-byte v3, v1, Lk0/ht;->o:B

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x13

    new-array v2, v4, [I

    .line 139
    iget-byte v3, v1, Lk0/ht;->p:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1a

    new-array v2, v4, [I

    .line 140
    iget-byte v3, v1, Lk0/ht;->q:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x14

    new-array v2, v4, [I

    .line 141
    iget-byte v3, v1, Lk0/ht;->r:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x6c

    new-array v2, v4, [I

    .line 142
    iget-byte v3, v1, Lk0/ht;->j:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    .line 143
    iget-byte v0, v1, Lk0/ht;->j:B

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_f

    .line 144
    invoke-virtual/range {p0 .. p0}, Lk0/ht;->m3()V

    goto/16 :goto_4

    :pswitch_c
    add-int/lit8 v2, p2, 0x1

    .line 145
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 146
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->e:B

    const/16 v0, 0x4e

    new-array v3, v4, [I

    and-int/lit8 v2, v2, 0x7

    aput v2, v3, v15

    .line 147
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    .line 148
    iget v0, v1, Lk0/ht;->w:I

    if-eq v0, v9, :cond_f

    const/16 v0, 0x3d

    new-array v2, v4, [I

    .line 149
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    .line 150
    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_d
    add-int/lit8 v2, p2, 0x1

    .line 151
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 152
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->e:B

    add-int/lit8 v3, p2, 0x3

    .line 153
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->f:B

    add-int/lit8 v3, p2, 0x4

    .line 154
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->g:B

    add-int/lit8 v3, p2, 0x5

    .line 155
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->h:B

    add-int/lit8 v3, p2, 0x6

    .line 156
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->i:B

    add-int/lit8 v3, p2, 0x7

    .line 157
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->j:B

    add-int/lit8 v3, p2, 0x8

    .line 158
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->k:B

    add-int/lit8 v3, p2, 0x9

    .line 159
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->l:B

    add-int/lit8 v3, p2, 0xa

    .line 160
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->m:B

    add-int/lit8 v3, p2, 0xb

    .line 161
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->n:B

    const/16 v0, 0x25

    new-array v3, v4, [I

    and-int/lit8 v2, v2, 0x7

    aput v2, v3, v15

    .line 162
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x26

    new-array v2, v4, [I

    .line 163
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x27

    new-array v2, v4, [I

    .line 164
    iget-byte v3, v1, Lk0/ht;->f:B

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x28

    new-array v2, v4, [I

    .line 165
    iget-byte v3, v1, Lk0/ht;->g:B

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x29

    new-array v2, v4, [I

    .line 166
    iget-byte v3, v1, Lk0/ht;->h:B

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2a

    new-array v2, v4, [I

    .line 167
    iget-byte v3, v1, Lk0/ht;->i:B

    and-int/2addr v3, v14

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2b

    new-array v2, v4, [I

    .line 168
    iget-byte v3, v1, Lk0/ht;->j:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2c

    new-array v2, v4, [I

    .line 169
    iget-byte v3, v1, Lk0/ht;->k:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2d

    new-array v2, v4, [I

    .line 170
    iget-byte v3, v1, Lk0/ht;->l:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2e

    new-array v2, v4, [I

    .line 171
    iget-byte v3, v1, Lk0/ht;->m:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x2f

    new-array v2, v4, [I

    .line 172
    iget-byte v3, v1, Lk0/ht;->n:B

    and-int/lit16 v3, v3, 0xff

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_4

    :pswitch_e
    add-int/lit8 v2, p2, 0x1

    .line 173
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/ht;->d:B

    add-int/lit8 v3, p2, 0x2

    .line 174
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->e:B

    add-int/lit8 v3, p2, 0x3

    .line 175
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->f:B

    add-int/lit8 v3, p2, 0x4

    .line 176
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->g:B

    add-int/lit8 v3, p2, 0x5

    .line 177
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->h:B

    add-int/lit8 v3, p2, 0x6

    .line 178
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->i:B

    add-int/lit8 v3, p2, 0x7

    .line 179
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->j:B

    add-int/lit8 v3, p2, 0x8

    .line 180
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->k:B

    add-int/lit8 v3, p2, 0x9

    .line 181
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->l:B

    add-int/lit8 v3, p2, 0xa

    .line 182
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->m:B

    add-int/lit8 v3, p2, 0xb

    .line 183
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/ht;->n:B

    add-int/lit8 v3, p2, 0xc

    .line 184
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/ht;->o:B

    const/16 v0, 0x1e

    new-array v3, v4, [I

    and-int/2addr v2, v14

    aput v2, v3, v15

    .line 185
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x1f

    new-array v2, v4, [I

    .line 186
    iget-byte v3, v1, Lk0/ht;->e:B

    and-int/2addr v3, v12

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 187
    iget-byte v2, v1, Lk0/ht;->f:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v4, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 188
    iget-byte v2, v1, Lk0/ht;->g:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v13, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 189
    iget-byte v2, v1, Lk0/ht;->h:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v15, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 190
    iget-byte v2, v1, Lk0/ht;->i:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v10, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 191
    iget-byte v2, v1, Lk0/ht;->j:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v14, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 192
    iget-byte v2, v1, Lk0/ht;->k:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v11, v0}, Lk0/qt;->y0(I[I)V

    new-array v0, v4, [I

    .line 193
    iget-byte v2, v1, Lk0/ht;->l:B

    and-int/2addr v2, v4

    aput v2, v0, v15

    invoke-static {v6, v0}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3f

    new-array v2, v4, [I

    .line 194
    iget-byte v3, v1, Lk0/ht;->m:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x3e

    new-array v2, v4, [I

    .line 195
    iget-byte v3, v1, Lk0/ht;->n:B

    and-int/2addr v3, v4

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x4d

    new-array v2, v4, [I

    .line 196
    iget-byte v3, v1, Lk0/ht;->o:B

    and-int/lit8 v3, v3, 0x7

    aput v3, v2, v15

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_4

    :cond_e
    add-int/lit8 v2, p2, 0x1

    .line 197
    aget-byte v3, v0, v2

    invoke-static {v0, v2, v3}, Lk0/pt;->o([BII)V

    :cond_f
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
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
    iget-object v0, p0, Lk0/ht;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/ht;->A:Lk0/st;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lk0/ht;->A:Lk0/st;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/ht;->H:Ljava/lang/Runnable;

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
    .locals 5

    const/16 p3, 0x40

    const/4 p4, 0x4

    const/4 v0, 0x3

    const/16 v1, 0xe3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_0

    .line 1
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x6b

    new-array p3, v3, [I

    .line 2
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 3
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/16 p3, 0x13

    aget p2, p2, v4

    invoke-virtual {p1, p3, p2}, Lo1/g0;->e(II)V

    goto/16 :goto_0

    :pswitch_2
    if-eqz p2, :cond_0

    .line 4
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x6a

    new-array p3, v3, [I

    .line 5
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 6
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/16 p3, 0x12

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x60

    aput p3, p1, v3

    .line 7
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_0

    .line 8
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x69

    new-array p3, v3, [I

    .line 9
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 10
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/16 p3, 0x11

    aget p2, p2, v4

    invoke-virtual {p1, p3, p2}, Lo1/g0;->e(II)V

    goto/16 :goto_0

    :pswitch_4
    if-eqz p2, :cond_0

    .line 11
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x5d

    new-array p3, v3, [I

    .line 12
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 13
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/4 p3, 0x5

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x20

    aput p3, p1, v3

    .line 14
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 15
    :pswitch_5
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x38

    aput p3, p1, v3

    .line 16
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 17
    :pswitch_6
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    .line 18
    aget p3, p2, v4

    aput p3, p1, v3

    aget p2, p2, v3

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 19
    :pswitch_7
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x51

    aput p3, p1, v3

    .line 20
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 21
    :pswitch_8
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x50

    aput p3, p1, v3

    .line 22
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 23
    :pswitch_9
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    aput p3, p1, v3

    .line 24
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_a
    if-eqz p2, :cond_0

    .line 25
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x4a

    new-array p3, v3, [I

    .line 26
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 27
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/16 p3, 0x10

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x30

    aput p3, p1, v3

    .line 28
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_b
    if-eqz p2, :cond_0

    .line 29
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x49

    new-array p3, v3, [I

    .line 30
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 31
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/16 p3, 0xf

    aget p2, p2, v4

    invoke-virtual {p1, p3, p2}, Lo1/g0;->e(II)V

    goto/16 :goto_0

    .line 32
    :pswitch_c
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x37

    aput p3, p1, v3

    .line 33
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 34
    :pswitch_d
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x36

    aput p3, p1, v3

    .line 35
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 36
    :pswitch_e
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x35

    aput p3, p1, v3

    .line 37
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 38
    :pswitch_f
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x34

    aput p3, p1, v3

    .line 39
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 40
    :pswitch_10
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x33

    aput p3, p1, v3

    .line 41
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 42
    :pswitch_11
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x24

    aput p3, p1, v3

    .line 43
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_12
    if-eqz p2, :cond_0

    .line 44
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x43

    new-array p3, v3, [I

    .line 45
    aget p4, p2, v4

    aput p4, p3, v4

    .line 46
    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 47
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/16 p3, 0x9

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x29

    aput p3, p1, v3

    .line 48
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 49
    :pswitch_13
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x31

    aput p3, p1, v3

    .line 50
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_14
    if-eqz p2, :cond_0

    .line 51
    array-length p1, p2

    if-lez p1, :cond_0

    const/16 p1, 0x41

    new-array p3, v3, [I

    .line 52
    aget p4, p2, v4

    aput p4, p3, v4

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 53
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/4 p3, 0x7

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x2c

    aput p3, p1, v3

    .line 54
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    :pswitch_15
    if-eqz p2, :cond_0

    .line 55
    array-length p1, p2

    if-lez p1, :cond_0

    new-array p1, v3, [I

    .line 56
    aget p4, p2, v4

    aput p4, p1, v4

    invoke-static {p3, p1}, Lk0/qt;->y0(I[I)V

    .line 57
    iget-object p1, p0, Lk0/ht;->b:Lo1/g0;

    const/4 p3, 0x6

    aget p4, p2, v4

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x2b

    aput p3, p1, v3

    .line 58
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_0

    .line 59
    :pswitch_16
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x2a

    aput p3, p1, v3

    .line 60
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 61
    :pswitch_17
    invoke-virtual {p0, p2, v3}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, v0, [I

    aput v1, p1, v4

    const/16 p3, 0x28

    aput p3, p1, v3

    .line 62
    aget p2, p2, v4

    aput p2, p1, v2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 63
    :pswitch_18
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x27

    aput p3, p1, v3

    .line 64
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 65
    :pswitch_19
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x26

    aput p3, p1, v3

    .line 66
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    .line 67
    :pswitch_1a
    invoke-virtual {p0, p2, v2}, Lk0/ht;->o3([II)Z

    move-result p1

    if-eqz p1, :cond_0

    new-array p1, p4, [I

    aput v1, p1, v4

    const/16 p3, 0x25

    aput p3, p1, v3

    .line 68
    aget p3, p2, v4

    aput p3, p1, v2

    aget p2, p2, v3

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
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

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    int-to-byte p1, p2

    const/4 p2, 0x3

    aput p1, v0, p2

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final i3(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x50

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final j3(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x51

    aput v2, v0, v1

    int-to-byte p1, p1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 1
    invoke-static {v0}, Lz/k;->s([I)V

    return-void
.end method

.method public final m3()V
    .locals 4

    .line 1
    sget-object v0, Lk0/nt;->g:[I

    const/16 v1, 0x6b

    aget v0, v0, v1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HOME_ONOFF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "m1a"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, La/i;->A()V

    goto :goto_0

    :cond_0
    const-string v0, "com.syu.home"

    .line 4
    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/16 v3, 0x5b

    .line 5
    invoke-static {v3, v1}, Lk0/qt;->y0(I[I)V

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 6
    invoke-static {v3, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, La/i;->A()V

    :goto_0
    return-void
.end method

.method public n3()Z
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps_auto_time"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public final o3([II)Z
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

.method public z1([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/ht;->U2([BII)V

    return-void
.end method

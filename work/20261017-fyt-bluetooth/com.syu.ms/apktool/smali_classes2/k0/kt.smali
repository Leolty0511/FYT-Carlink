.class public Lk0/kt;
.super Lk0/lt;
.source "SourceFile"

# interfaces
.implements Lo1/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk0/kt$i;
    }
.end annotation


# static fields
.field public static M:I = 0x0

.field public static N:Z = true

.field public static O:Z = false

.field public static P:Z = false

.field public static Q:[I

.field public static R:Ljava/lang/Runnable;

.field public static S:Landroid/widget/Toast;

.field public static T:[I


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:Ljava/lang/Runnable;

.field public F:Ljava/lang/Runnable;

.field public G:Ljava/lang/Runnable;

.field public H:J

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public b:Lo1/g0;

.field public c:Ljava/lang/String;

.field public d:Lk0/kt$i;

.field public e:Z

.field public f:I

.field public g:Z

.field public h:B

.field public i:B

.field public j:B

.field public k:B

.field public l:B

.field public m:B

.field public n:B

.field public o:B

.field public p:B

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:[I

.field public v:I

.field public w:B

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/Runnable;

.field public z:Lk0/st;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x29

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lk0/kt;->Q:[I

    .line 2
    new-instance v0, Lk0/kt$c;

    invoke-direct {v0}, Lk0/kt$c;-><init>()V

    sput-object v0, Lk0/kt;->R:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    const/16 v0, 0x15

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    sput-object v0, Lk0/kt;->T:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xc2
        0xbe
        0xba
        0xb6
        0xb2
        0xae
        0xaa
        0xa6
        0xa2
        0xa0
        0x9e
        0x9c
        0x9b
        0x99
        0x97
        0x95
        0x94
        0x93
        0x92
        0x91
        0x90
        0x8f
        0x8e
        0x8c
        0x8b
        0x8a
        0x89
        0x88
        0x87
        0x86
        0x85
        0x84
        0x83
        0x82
        0x81
        0x80
        0x7f
        0x7e
        0x7d
        0x7c
        0x7b
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1
        0xa
        0xb
        0x1
        0x1
        0x1
        0x1
        0xc
        0xd
        0xe
        0xf
    .end array-data
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

    iput-object v0, p0, Lk0/kt;->b:Lo1/g0;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lk0/kt;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lk0/kt;->e:Z

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lk0/kt;->f:I

    .line 7
    iput-boolean v1, p0, Lk0/kt;->g:Z

    const/4 v2, 0x7

    new-array v3, v2, [I

    .line 8
    fill-array-data v3, :array_0

    iput-object v3, p0, Lk0/kt;->u:[I

    .line 9
    iput v2, p0, Lk0/kt;->v:I

    const/16 v2, 0xf

    .line 10
    iput-byte v2, p0, Lk0/kt;->w:B

    .line 11
    iget-object v2, p0, Lk0/lt;->a:Lk0/mt;

    const-string v3, "com.syu.canbus"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lk0/mt;->a:[Ljava/lang/String;

    .line 12
    iput v0, v2, Lk0/mt;->e:I

    .line 13
    iput v0, v2, Lk0/mt;->f:I

    .line 14
    iput v0, v2, Lk0/mt;->g:I

    .line 15
    iput v0, v2, Lk0/mt;->i:I

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 16
    fill-array-data v0, :array_1

    iput-object v0, v2, Lk0/mt;->m:[I

    .line 17
    new-instance v0, Lk0/kt$e;

    invoke-direct {v0, p0}, Lk0/kt$e;-><init>(Lk0/kt;)V

    iput-object v0, p0, Lk0/kt;->y:Ljava/lang/Runnable;

    .line 18
    iput v1, p0, Lk0/kt;->A:I

    iput v1, p0, Lk0/kt;->B:I

    iput v1, p0, Lk0/kt;->C:I

    .line 19
    iput v1, p0, Lk0/kt;->D:I

    .line 20
    new-instance v0, Lk0/kt$f;

    invoke-direct {v0, p0}, Lk0/kt$f;-><init>(Lk0/kt;)V

    iput-object v0, p0, Lk0/kt;->E:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lk0/kt$g;

    invoke-direct {v0, p0}, Lk0/kt$g;-><init>(Lk0/kt;)V

    iput-object v0, p0, Lk0/kt;->F:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lk0/kt$h;

    invoke-direct {v0, p0}, Lk0/kt$h;-><init>(Lk0/kt;)V

    iput-object v0, p0, Lk0/kt;->G:Ljava/lang/Runnable;

    const-wide/16 v2, -0x1

    .line 23
    iput-wide v2, p0, Lk0/kt;->H:J

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lk0/kt;->I:I

    .line 25
    iput v1, p0, Lk0/kt;->J:I

    iput v1, p0, Lk0/kt;->K:I

    .line 26
    iput v1, p0, Lk0/kt;->L:I

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

.method public static synthetic a3(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lk0/kt;->N:Z

    return p0
.end method

.method public static synthetic b3(Lk0/kt;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/kt;->x:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c3(Lk0/kt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk0/kt;->o3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d3()Z
    .locals 1

    .line 1
    sget-boolean v0, Lk0/kt;->P:Z

    return v0
.end method

.method public static synthetic e3(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lk0/kt;->P:Z

    return p0
.end method

.method public static synthetic f3(Lk0/kt;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lk0/kt;->b:Lo1/g0;

    return-object p0
.end method

.method public static synthetic g3(Lk0/kt;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lk0/kt;->H:J

    return-wide v0
.end method

.method public static synthetic h3(Lk0/kt;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lk0/kt;->H:J

    return-wide p1
.end method

.method public static synthetic i3(Lk0/kt;)I
    .locals 0

    .line 1
    iget p0, p0, Lk0/kt;->I:I

    return p0
.end method

.method public static synthetic j3(Lk0/kt;I)I
    .locals 0

    .line 1
    iput p1, p0, Lk0/kt;->I:I

    return p1
.end method

.method public static synthetic k3()[I
    .locals 1

    .line 1
    sget-object v0, Lk0/kt;->T:[I

    return-object v0
.end method

.method public static m3()Ljava/lang/Process;
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

.method public static n3(Ljava/lang/String;)Ljava/lang/Process;
    .locals 4

    .line 1
    invoke-static {}, Lk0/kt;->m3()Ljava/lang/Process;

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

.method public static s3()V
    .locals 1

    const-string v0, "chmod 666 /dev/alarm"

    .line 1
    invoke-static {v0}, Lk0/kt;->n3(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    return-void
.end method

.method public static t3(II)V
    .locals 6

    .line 1
    invoke-static {}, Lk0/kt;->s3()V

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

.method public static u3(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showToast Show_Str = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gdy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    .line 4
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/high16 v1, 0x44160000    # 600.0f

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    const/16 v1, 0xc8

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    sget-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x102000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v1, 0x41f00000    # 30.0f

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x46

    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 11
    sget-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    const/16 v1, 0x30

    const/16 v3, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 12
    :cond_0
    sget-object v0, Lk0/kt;->S:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_1
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 15
    new-instance v2, Lk0/kt$d;

    invoke-direct {v2, v1}, Lk0/kt$d;-><init>(Ljava/util/Timer;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x9c4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
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

    if-eqz p1, :cond_16

    .line 2
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto/16 :goto_1

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

    const/16 v6, 0xff

    const/16 v7, 0x8

    if-eq v2, v5, :cond_13

    const/16 v5, 0x22

    if-eq v2, v5, :cond_11

    const/16 v5, 0x29

    const/16 v8, 0xf

    const/16 v9, 0x13

    if-eq v2, v5, :cond_f

    const/16 v5, 0x2a

    if-eq v2, v5, :cond_d

    const/16 v5, 0x37

    if-eq v2, v5, :cond_a

    const/16 v5, 0x39

    const/4 v7, 0x7

    if-eq v2, v5, :cond_8

    const/16 v5, 0x3a

    const/4 v8, 0x6

    if-eq v2, v5, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 6
    :pswitch_0
    sget-object p1, Lk0/nt;->g:[I

    const/16 v0, 0x12

    aget p1, p1, v0

    iput p1, p0, Lk0/kt;->J:I

    const/4 v0, -0x2

    if-ne v4, v0, :cond_2

    if-lez p1, :cond_1

    sub-int/2addr p1, v3

    .line 7
    iput p1, p0, Lk0/kt;->J:I

    .line 8
    :cond_1
    iget p1, p0, Lk0/kt;->J:I

    invoke-virtual {p0, v8, p1}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    :cond_2
    const/4 v0, -0x1

    if-ne v4, v0, :cond_16

    if-ge p1, v7, :cond_3

    add-int/2addr p1, v3

    .line 9
    iput p1, p0, Lk0/kt;->J:I

    .line 10
    :cond_3
    iget p1, p0, Lk0/kt;->J:I

    invoke-virtual {p0, v8, p1}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 11
    :pswitch_1
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0xc

    aget p1, p1, v1

    iput p1, p0, Lk0/kt;->J:I

    const/4 p1, 0x4

    if-ne v4, v3, :cond_4

    .line 12
    invoke-virtual {p0, p1, v3}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0, p1, v0}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 14
    :pswitch_2
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0xd

    aget p1, p1, v1

    iput p1, p0, Lk0/kt;->J:I

    if-ne v4, v3, :cond_5

    .line 15
    invoke-virtual {p0, v3, v3}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 16
    :cond_5
    invoke-virtual {p0, v3, v0}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 17
    :pswitch_3
    sget-object p1, Lk0/nt;->g:[I

    const/16 v2, 0x14

    aget p1, p1, v2

    iput p1, p0, Lk0/kt;->J:I

    if-ne v4, v3, :cond_6

    .line 18
    invoke-virtual {p0, v1, v3}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 19
    :cond_6
    invoke-virtual {p0, v1, v0}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 20
    :cond_7
    aget p1, p1, v3

    and-int/2addr p1, v6

    if-gt p1, v7, :cond_16

    .line 21
    invoke-virtual {p0, v8, p1}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 22
    :cond_8
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x16

    aget p1, p1, v1

    iput p1, p0, Lk0/kt;->J:I

    if-ne v4, v3, :cond_9

    .line 23
    invoke-virtual {p0, v7, v3}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 24
    :cond_9
    invoke-virtual {p0, v7, v0}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 25
    :cond_a
    aget p1, p1, v3

    add-int/2addr p1, v3

    const/16 v1, 0x10

    if-lt p1, v1, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    if-gez p1, :cond_c

    goto :goto_0

    :cond_c
    move v0, p1

    .line 26
    :goto_0
    invoke-virtual {p0, v7, v0}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    .line 27
    :cond_d
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    iput p1, p0, Lk0/kt;->J:I

    if-ne v4, v3, :cond_e

    if-gt p1, v8, :cond_16

    add-int/2addr p1, v3

    .line 28
    iput p1, p0, Lk0/kt;->J:I

    invoke-virtual {p0, v7, p1}, Lk0/kt;->l3(II)V

    goto/16 :goto_1

    :cond_e
    if-le p1, v3, :cond_16

    sub-int/2addr p1, v3

    .line 29
    iput p1, p0, Lk0/kt;->J:I

    invoke-virtual {p0, v7, p1}, Lk0/kt;->l3(II)V

    goto :goto_1

    .line 30
    :cond_f
    sget-object p1, Lk0/nt;->g:[I

    aget p1, p1, v9

    iput p1, p0, Lk0/kt;->J:I

    if-ne v4, v3, :cond_10

    if-gt p1, v8, :cond_16

    add-int/2addr p1, v3

    .line 31
    iput p1, p0, Lk0/kt;->J:I

    invoke-virtual {p0, v7, p1}, Lk0/kt;->l3(II)V

    goto :goto_1

    :cond_10
    if-le p1, v3, :cond_16

    sub-int/2addr p1, v3

    .line 32
    iput p1, p0, Lk0/kt;->J:I

    invoke-virtual {p0, v7, p1}, Lk0/kt;->l3(II)V

    goto :goto_1

    .line 33
    :cond_11
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0xb

    aget p1, p1, v1

    iput p1, p0, Lk0/kt;->J:I

    if-ne v4, v3, :cond_12

    .line 34
    invoke-virtual {p0, v0, v3}, Lk0/kt;->l3(II)V

    goto :goto_1

    .line 35
    :cond_12
    invoke-virtual {p0, v0, v0}, Lk0/kt;->l3(II)V

    goto :goto_1

    .line 36
    :cond_13
    sget-object p1, Lk0/nt;->g:[I

    const/16 v1, 0x17

    aget p1, p1, v1

    iput p1, p0, Lk0/kt;->J:I

    const/4 p1, 0x5

    const/16 v1, 0x79

    if-ne v4, v3, :cond_15

    .line 37
    invoke-virtual {p0, p1, v3}, Lk0/kt;->l3(II)V

    new-array p1, v3, [I

    aput v0, p1, v0

    .line 38
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    .line 39
    invoke-virtual {p0}, Lk0/kt;->p3()Z

    move-result p1

    if-eqz p1, :cond_14

    new-array p1, v3, [I

    aput v7, p1, v0

    .line 40
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    :cond_14
    new-array p1, v3, [I

    aput v6, p1, v0

    .line 41
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    goto :goto_1

    .line 42
    :cond_15
    invoke-virtual {p0, p1, v0}, Lk0/kt;->l3(II)V

    new-array p1, v3, [I

    aput v3, p1, v0

    .line 43
    invoke-static {v1, p1}, Lk0/qt;->y0(I[I)V

    :cond_16
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public S2()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/kt;->G:Ljava/lang/Runnable;

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

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/16 v4, 0x7b

    .line 5
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 6
    new-instance v2, Lk0/kt$i;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lk0/kt$i;-><init>(Lk0/kt;Lk0/kt$a;)V

    iput-object v2, p0, Lk0/kt;->d:Lk0/kt$i;

    .line 7
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "AUTONAVI_STANDARD_BROADCAST_SEND"

    .line 8
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.fyt.systemui.remove"

    .line 9
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    iget-object v5, p0, Lk0/kt;->d:Lk0/kt$i;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 11
    new-instance v2, Ljava/io/File;

    const-string v4, "/mnt/sdcard/crash"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 13
    invoke-static {v2}, Lk0/pt;->k(Ljava/io/File;)J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 14
    invoke-static {v2}, Lk0/pt;->h(Ljava/io/File;)V

    .line 15
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "net.easyconn.android.mirror.in"

    .line 16
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.android.mirror.out"

    .line 17
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.inner.mirror.in"

    .line 18
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.inner.mirror.out"

    .line 19
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.mirror.in"

    .line 20
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "net.easyconn.iphone.mirror.out"

    .line 21
    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    new-instance v4, Lk0/st;

    invoke-direct {v4}, Lk0/st;-><init>()V

    iput-object v4, p0, Lk0/kt;->z:Lk0/st;

    .line 23
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v4

    iget-object v5, p0, Lk0/kt;->z:Lk0/st;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    new-instance v2, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 26
    iget v4, v2, Landroid/text/format/Time;->hour:I

    int-to-byte v4, v4

    .line 27
    iget v5, v2, Landroid/text/format/Time;->minute:I

    int-to-byte v5, v5

    .line 28
    iget v2, v2, Landroid/text/format/Time;->second:I

    int-to-byte v2, v2

    const/4 v6, 0x5

    new-array v6, v6, [I

    const/16 v7, 0xe3

    aput v7, v6, v3

    const/16 v3, 0x24

    aput v3, v6, v1

    const/4 v1, 0x2

    aput v4, v6, v1

    aput v5, v6, v0

    const/4 v0, 0x4

    aput v2, v6, v0

    .line 29
    invoke-static {v6}, Lz/k;->s([I)V

    .line 30
    iget-object v0, p0, Lk0/kt;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 31
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lk0/kt;->F:Ljava/lang/Runnable;

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
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1
    aget-byte v2, v0, p2

    const/16 v3, -0x56

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3b

    const/16 v3, 0xf

    const/16 v5, 0x19

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eq v2, v5, :cond_35

    const/16 v11, 0x41

    if-eq v2, v11, :cond_34

    const/16 v11, 0x44

    if-eq v2, v11, :cond_33

    const/16 v11, 0x20

    if-eq v2, v11, :cond_33

    const/16 v11, 0x21

    if-eq v2, v11, :cond_34

    const v11, 0xff00

    const/16 v12, 0xa

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/16 v15, 0xff

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x0

    const/4 v5, 0x6

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_10

    :pswitch_0
    add-int/lit8 v2, p2, 0x1

    .line 2
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/kt;->h:B

    .line 3
    iput-object v3, v1, Lk0/kt;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "\u935a\ue21a\u59e9\u7487\u75af\u4fef\u9352\u8dfa\u59e9"

    .line 4
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-ne v0, v4, :cond_1

    const-string v0, "\u7487\u950b\u5bd5\u6939\u660f\u6e85\u93b8\u2033\u60ce\u9354\ufffd"

    .line 5
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-ne v0, v9, :cond_2

    const-string v0, "\u7487\u950b\u5bd5\u6939\u660f\u6e85\u93b8\ufffd"

    .line 6
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_2
    if-ne v0, v8, :cond_3

    const-string v0, "\u9422\u57ab\u6e80\u6769\u56e9\u5139\u7487\u950b\u655e\u93b0\ufffd"

    .line 7
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_3
    if-ne v0, v6, :cond_4

    const-string v0, "\u7f01\ue161\u57c5\u6d93\u5d88\u51bb\u7487\u5cf0\u5396\u9422\ufffd"

    .line 8
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_4
    if-ne v0, v7, :cond_5

    const-string v0, "\u7487\u98ce\u90f4\u6fc2\u85c9\u7568\u934f\u3125\u752b"

    .line 9
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v5, :cond_6

    const-string v0, "\u93ae\u3125\u51e1\u74d2\u5474\ufffd\u71bb\ue1ec\u9351\u5fdb\ufffd\u71b8\u53c3\u741b\ufffd"

    .line 10
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_0

    :cond_6
    if-ne v0, v14, :cond_7

    const-string v0, "\u675e\ufe42\u68ec\u93c8\ue044\u53e7\u7487\u950b\u655e\u93b0\ufffd"

    .line 11
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    .line 12
    :cond_7
    :goto_0
    iget-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 13
    invoke-virtual/range {p0 .. p0}, Lk0/kt;->v3()V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lk0/kt;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lk0/kt;->y:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    :pswitch_1
    add-int/lit8 v2, p2, 0x1

    .line 16
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/kt;->h:B

    add-int/lit8 v3, p2, 0x2

    .line 17
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/kt;->i:B

    if-ne v2, v5, :cond_9

    .line 18
    sget-boolean v0, Lk0/kt;->N:Z

    if-eqz v0, :cond_8

    .line 19
    sput-boolean v10, Lk0/kt;->N:Z

    .line 20
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v2, Lk0/kt$a;

    invoke-direct {v2, v1}, Lk0/kt$a;-><init>(Lk0/kt;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_8
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v2, Lk0/kt;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 22
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    sget-object v2, Lk0/kt;->R:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    :cond_9
    if-eqz v0, :cond_c

    if-eq v0, v4, :cond_c

    if-eq v0, v9, :cond_b

    if-eq v0, v8, :cond_a

    goto :goto_1

    :cond_a
    const v10, 0x3b9aca00

    goto :goto_1

    :cond_b
    move v10, v7

    goto :goto_1

    :cond_c
    move v10, v8

    .line 23
    :goto_1
    sget v0, Lk0/kt;->M:I

    if-eqz v0, :cond_d

    .line 24
    sput v10, Lk0/kt;->M:I

    goto/16 :goto_10

    .line 25
    :cond_d
    sput v10, Lk0/kt;->M:I

    if-eq v2, v4, :cond_12

    if-eq v2, v9, :cond_11

    if-eq v2, v8, :cond_10

    if-eq v2, v6, :cond_f

    if-eq v2, v7, :cond_e

    if-eq v2, v14, :cond_e

    goto :goto_2

    :cond_e
    const-string v0, "\u9422\u53d8\u7c2c\u9422\u57ab\u7c2e\u9422\u975b\u5e07\u6d93\u5d87\u01d4\u7039\u6c3e\u7d1d\u7eef\u8364\u7cba 3s \u935a\u5ea1\u53e7\u705e\ufffd"

    .line 26
    iput-object v0, v1, Lk0/kt;->c:Ljava/lang/String;

    goto :goto_2

    :cond_f
    const-string v0, "\u6fe1\u509e\u6e36\u935a\ue21a\u59e9\u7ecc\u9e3f\u769f\u951b\u5c83\ue1ec\u7ead\ue1bb\u7e5a\u9410\u572d\u4f00\u5bee\ufffd\u934f\u51b2\u6e6aACC ON\u93b8\ufffd"

    .line 27
    iput-object v0, v1, Lk0/kt;->c:Ljava/lang/String;

    goto :goto_2

    :cond_10
    const-string v0, "\u7487\u30e8\u6e85\u6748\u55d9\u6d30\u9353\u5d84\u7b09\u93c0\ue21b\u5bd4\u59dd\u3085\u59db\u9473\ufffd"

    .line 28
    iput-object v0, v1, Lk0/kt;->c:Ljava/lang/String;

    goto :goto_2

    :cond_11
    const-string v0, "\u7ecc\u9e3f\u769f\u9477\ue044\u59e9\u5a13\u546e\u78e5\u5bb8\u30e4\u7d94\u6d93\ufffd"

    .line 29
    iput-object v0, v1, Lk0/kt;->c:Ljava/lang/String;

    goto :goto_2

    :cond_12
    const-string v0, "\u675e\ue219\u6b22\u9357\u56e9\u9a87\u6769\u56e9\u25bc\u6d93\ue168\u7d1d\u7487\u5cf0\u5b01\u934f\u62bd\u68f4\u675e\ufe41\u7de0\u9422\u57ab\u7c2e"

    .line 30
    iput-object v0, v1, Lk0/kt;->c:Ljava/lang/String;

    .line 31
    :goto_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v2, Lk0/kt$b;

    invoke-direct {v2, v1}, Lk0/kt$b;-><init>(Lk0/kt;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    .line 32
    :pswitch_2
    iput-object v3, v1, Lk0/kt;->x:Ljava/lang/String;

    add-int/lit8 v2, p2, 0x1

    .line 33
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_13

    const-string v0, "\u7487\u5cf0\u53e7\u95c2\ue15d\u7d85\u7f03\ue1be\u4f05"

    .line 34
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_13
    add-int/lit8 v2, p2, 0x2

    .line 35
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_14

    const-string v0, "\u7487\u75af\u4fef\u9352\u8dfa\u59e9\u935a\ue21a\u59e9"

    .line 36
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_14
    add-int/lit8 v2, p2, 0x3

    .line 37
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_15

    const-string v0, "\u7487\u950b\u5bd5\u6939\u660f\u6e85\u5997\uff45\u60ce\u9354\ufffd"

    .line 38
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_15
    add-int/lit8 v2, p2, 0x4

    .line 39
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_16

    const-string v0, "\u7487\u950b\u5bd5\u6939\u660f\u6e85\u5997\ufffd"

    .line 40
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_16
    add-int/lit8 v2, p2, 0x5

    .line 41
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_17

    const-string v0, "\u9422\u57ab\u6e80\u6769\u56e9\u5139  \u7487\u950b\u655e\u93b0\ufffd"

    .line 42
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_17
    add-int/lit8 v2, p2, 0x6

    .line 43
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_18

    const-string v0, "\u9354\u3125\u59cf\u7eef\u8364\u7cba\u9351\u55d7\ue62c\u704f\u8fa9\u534e"

    .line 44
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_18
    add-int/lit8 v2, p2, 0x7

    .line 45
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_19

    const-string v0, "\u7f01\ue161\u57c5\u6d93\u5d88\u51bb  \u7487\u5cf0\u5396\u9422\ufffd"

    .line 46
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_19
    add-int/lit8 v2, p2, 0x8

    .line 47
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_1a

    const-string v0, "\u7487\u98ce\u90f4\u6fc2\u85c9\u7568\u934f\u3125\u752b"

    .line 48
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_1a
    add-int/lit8 v2, p2, 0x9

    .line 49
    aget-byte v2, v0, v2

    if-ne v2, v4, :cond_1b

    const-string v0, "\u93ae\u3125\u51e1\u74d2\u5474\ufffd\ufffd  \u7487\u5cf0\u567a\u95ab\u71b8\u53c3\u741b\ufffd"

    .line 50
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    goto :goto_3

    :cond_1b
    add-int/lit8 v2, p2, 0xa

    .line 51
    aget-byte v0, v0, v2

    if-ne v0, v4, :cond_1c

    const-string v0, "\u675e\ufe42\u68ec\u93c8\ue044\u53e7  \u7487\u950b\u655e\u93b0\ufffd"

    .line 52
    iput-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    .line 53
    :cond_1c
    :goto_3
    iget-object v0, v1, Lk0/kt;->x:Ljava/lang/String;

    if-eqz v0, :cond_3c

    .line 54
    invoke-virtual/range {p0 .. p0}, Lk0/kt;->v3()V

    .line 55
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lk0/kt;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v2, v1, Lk0/kt;->y:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_10

    :pswitch_3
    const/16 v2, 0x10

    move/from16 v5, p3

    if-ge v5, v2, :cond_1d

    goto/16 :goto_10

    :cond_1d
    add-int/lit8 v5, p2, 0x1

    .line 57
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->h:B

    add-int/lit8 v6, p2, 0x2

    .line 58
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->i:B

    add-int/lit8 v6, p2, 0x3

    .line 59
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->j:B

    add-int/lit8 v6, p2, 0x4

    .line 60
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->k:B

    add-int/lit8 v6, p2, 0x5

    .line 61
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->l:B

    add-int/lit8 v6, p2, 0x6

    .line 62
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->m:B

    add-int/lit8 v6, p2, 0x7

    .line 63
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->n:B

    add-int/lit8 v6, p2, 0x8

    .line 64
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->o:B

    add-int/lit8 v6, p2, 0xa

    .line 65
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->p:B

    add-int/lit8 v6, p2, 0xe

    .line 66
    aget-byte v6, v0, v6

    new-array v7, v4, [I

    and-int/2addr v5, v15

    aput v5, v7, v10

    const/16 v5, 0xb

    .line 67
    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0xd

    new-array v7, v4, [I

    .line 68
    iget-byte v11, v1, Lk0/kt;->i:B

    and-int/2addr v11, v15

    aput v11, v7, v10

    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    const/16 v5, 0x14

    new-array v7, v4, [I

    .line 69
    iget-byte v11, v1, Lk0/kt;->j:B

    and-int/2addr v11, v15

    aput v11, v7, v10

    invoke-static {v5, v7}, Lk0/qt;->y0(I[I)V

    .line 70
    iput v10, v1, Lk0/kt;->r:I

    .line 71
    iput v10, v1, Lk0/kt;->s:I

    .line 72
    iput v10, v1, Lk0/kt;->t:I

    .line 73
    iget-byte v5, v1, Lk0/kt;->k:B

    and-int/lit16 v7, v5, 0xff

    if-eqz v7, :cond_21

    if-eq v7, v4, :cond_20

    if-eq v7, v9, :cond_1f

    if-eq v7, v8, :cond_1e

    goto :goto_4

    .line 74
    :cond_1e
    iput v4, v1, Lk0/kt;->r:I

    .line 75
    iput v4, v1, Lk0/kt;->t:I

    goto :goto_4

    .line 76
    :cond_1f
    iput v4, v1, Lk0/kt;->t:I

    goto :goto_4

    .line 77
    :cond_20
    iput v4, v1, Lk0/kt;->s:I

    .line 78
    iput v4, v1, Lk0/kt;->t:I

    goto :goto_4

    .line 79
    :cond_21
    iput v4, v1, Lk0/kt;->s:I

    :goto_4
    const/16 v7, 0x11

    new-array v8, v4, [I

    and-int/2addr v5, v15

    aput v5, v8, v10

    .line 80
    invoke-static {v7, v8}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    .line 81
    iget v7, v1, Lk0/kt;->r:I

    aput v7, v5, v10

    const/16 v7, 0xe

    invoke-static {v7, v5}, Lk0/qt;->y0(I[I)V

    new-array v5, v4, [I

    .line 82
    iget v7, v1, Lk0/kt;->s:I

    aput v7, v5, v10

    invoke-static {v3, v5}, Lk0/qt;->y0(I[I)V

    new-array v3, v4, [I

    .line 83
    iget v5, v1, Lk0/kt;->t:I

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0xc

    new-array v3, v4, [I

    .line 84
    iget-byte v5, v1, Lk0/kt;->l:B

    and-int/2addr v5, v15

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x17

    new-array v3, v4, [I

    .line 85
    iget-byte v5, v1, Lk0/kt;->m:B

    and-int/2addr v5, v15

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 86
    iget-byte v2, v1, Lk0/kt;->o:B

    and-int/2addr v2, v15

    iput v2, v1, Lk0/kt;->q:I

    if-gez v2, :cond_22

    .line 87
    iput v10, v1, Lk0/kt;->q:I

    goto :goto_5

    :cond_22
    if-le v2, v14, :cond_23

    .line 88
    iput v14, v1, Lk0/kt;->q:I

    :cond_23
    :goto_5
    const/16 v2, 0x12

    new-array v3, v4, [I

    .line 89
    iget v5, v1, Lk0/kt;->q:I

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x16

    new-array v3, v4, [I

    .line 90
    iget-byte v5, v1, Lk0/kt;->p:B

    and-int/2addr v5, v15

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v2, 0x13

    new-array v3, v4, [I

    and-int/lit16 v5, v6, 0xff

    aput v5, v3, v10

    .line 91
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    add-int/lit8 v2, p2, 0x11

    .line 92
    aget-byte v0, v0, v2

    and-int/2addr v0, v15

    const/16 v2, 0x79

    if-ne v0, v9, :cond_25

    new-array v0, v4, [I

    aput v10, v0, v10

    .line 93
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lk0/kt;->p3()Z

    move-result v0

    if-eqz v0, :cond_24

    new-array v0, v4, [I

    aput v13, v0, v10

    .line 95
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_24
    new-array v0, v4, [I

    aput v15, v0, v10

    .line 96
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_25
    new-array v0, v4, [I

    aput v4, v0, v10

    .line 97
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_4
    add-int/lit8 v2, p2, 0x1

    .line 98
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/kt;->h:B

    add-int/lit8 v3, p2, 0x2

    .line 99
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->i:B

    add-int/lit8 v6, p2, 0x3

    .line 100
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->j:B

    add-int/lit8 v8, p2, 0x4

    .line 101
    aget-byte v8, v0, v8

    iput-byte v8, v1, Lk0/kt;->k:B

    add-int/lit8 v8, p2, 0x5

    .line 102
    aget-byte v8, v0, v8

    iput-byte v8, v1, Lk0/kt;->l:B

    add-int/lit8 v8, p2, 0x6

    .line 103
    aget-byte v8, v0, v8

    iput-byte v8, v1, Lk0/kt;->m:B

    add-int/lit8 v8, p2, 0x7

    .line 104
    aget-byte v0, v0, v8

    iput-byte v0, v1, Lk0/kt;->n:B

    mul-int/lit16 v2, v2, 0xe10

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    add-int/2addr v2, v6

    .line 105
    invoke-virtual/range {p0 .. p0}, Lk0/kt;->r3()Z

    move-result v0

    if-nez v0, :cond_26

    const/16 v0, 0x31

    new-array v3, v4, [I

    aput v2, v3, v10

    .line 106
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    .line 107
    :cond_26
    iget-byte v0, v1, Lk0/kt;->h:B

    if-ltz v0, :cond_27

    const/16 v2, 0x17

    if-gt v0, v2, :cond_27

    iget-byte v2, v1, Lk0/kt;->i:B

    if-ltz v2, :cond_27

    const/16 v3, 0x3b

    if-gt v2, v3, :cond_27

    .line 108
    iput-boolean v4, v1, Lk0/kt;->g:Z

    goto :goto_6

    .line 109
    :cond_27
    iput-boolean v10, v1, Lk0/kt;->g:Z

    :goto_6
    if-nez v0, :cond_28

    .line 110
    iget-byte v0, v1, Lk0/kt;->i:B

    if-nez v0, :cond_28

    .line 111
    iput-boolean v10, v1, Lk0/kt;->g:Z

    .line 112
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lk0/kt;->r3()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iput-boolean v10, v1, Lk0/kt;->g:Z

    .line 114
    :cond_29
    iget-boolean v0, v1, Lk0/kt;->g:Z

    if-eqz v0, :cond_2a

    .line 115
    iput-boolean v10, v1, Lk0/kt;->g:Z

    .line 116
    :try_start_0
    iget-byte v0, v1, Lk0/kt;->h:B

    iget-byte v2, v1, Lk0/kt;->i:B

    invoke-static {v0, v2}, Lk0/kt;->t3(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    :catch_1
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 119
    :cond_2a
    :goto_7
    iget-byte v0, v1, Lk0/kt;->k:B

    mul-int/2addr v0, v7

    add-int/2addr v0, v5

    const/16 v2, 0x32

    new-array v3, v4, [I

    if-ne v0, v5, :cond_2b

    const/4 v0, -0x1

    :cond_2b
    aput v0, v3, v10

    .line 120
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x33

    new-array v2, v4, [I

    .line 121
    iget-byte v3, v1, Lk0/kt;->l:B

    if-le v3, v12, :cond_2c

    goto :goto_8

    :cond_2c
    move v12, v3

    :goto_8
    aput v12, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x76

    new-array v2, v4, [I

    .line 122
    iget-byte v3, v1, Lk0/kt;->m:B

    and-int/2addr v3, v4

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x77

    new-array v2, v4, [I

    .line 123
    iget-byte v3, v1, Lk0/kt;->n:B

    and-int/2addr v3, v15

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_5
    add-int/lit8 v2, p2, 0x1

    .line 124
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/kt;->h:B

    add-int/lit8 v3, p2, 0x2

    .line 125
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->i:B

    add-int/lit8 v5, p2, 0x3

    .line 126
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->j:B

    add-int/lit8 v5, p2, 0x4

    .line 127
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->k:B

    add-int/lit8 v5, p2, 0x5

    .line 128
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->l:B

    add-int/lit8 v5, p2, 0x6

    .line 129
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->m:B

    add-int/lit8 v5, p2, 0x7

    .line 130
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->n:B

    add-int/lit8 v5, p2, 0x8

    .line 131
    aget-byte v0, v0, v5

    iput-byte v0, v1, Lk0/kt;->o:B

    const/16 v0, 0x2a

    new-array v4, v4, [I

    shl-int/2addr v2, v13

    and-int/2addr v2, v11

    and-int/2addr v3, v15

    or-int/2addr v2, v3

    .line 132
    div-int/2addr v2, v12

    aput v2, v4, v10

    invoke-static {v0, v4}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_6
    add-int/lit8 v2, p2, 0x1

    .line 133
    aget-byte v0, v0, v2

    iput-byte v0, v1, Lk0/kt;->h:B

    goto/16 :goto_10

    :pswitch_7
    add-int/lit8 v2, p2, 0x1

    .line 134
    aget-byte v2, v0, v2

    shl-int/2addr v2, v13

    and-int/2addr v2, v11

    add-int/lit8 v3, p2, 0x2

    aget-byte v0, v0, v3

    and-int/2addr v0, v15

    or-int/2addr v0, v2

    int-to-double v2, v0

    const-wide v5, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v2, v5

    const-wide v5, 0x4082c00000000000L    # 600.0

    sub-double/2addr v2, v5

    double-to-int v0, v2

    const/16 v2, -0x258

    const/16 v3, 0x258

    if-le v0, v3, :cond_2d

    move v0, v3

    goto :goto_9

    :cond_2d
    if-ge v0, v2, :cond_2e

    move v0, v2

    :cond_2e
    :goto_9
    const/16 v2, 0x39

    new-array v3, v4, [I

    aput v0, v3, v10

    .line 135
    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :pswitch_8
    add-int/lit8 v2, p2, 0x1

    .line 136
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/kt;->h:B

    add-int/lit8 v5, p2, 0x2

    .line 137
    aget-byte v5, v0, v5

    iput-byte v5, v1, Lk0/kt;->i:B

    add-int/lit8 v6, p2, 0x3

    .line 138
    aget-byte v6, v0, v6

    iput-byte v6, v1, Lk0/kt;->j:B

    add-int/lit8 v7, p2, 0x4

    .line 139
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/kt;->k:B

    add-int/lit8 v7, p2, 0x5

    .line 140
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/kt;->l:B

    add-int/lit8 v7, p2, 0x6

    .line 141
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/kt;->m:B

    add-int/lit8 v7, p2, 0x7

    .line 142
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/kt;->n:B

    add-int/lit8 v7, p2, 0x8

    .line 143
    aget-byte v7, v0, v7

    iput-byte v7, v1, Lk0/kt;->o:B

    add-int/lit8 v7, p2, 0x9

    .line 144
    aget-byte v0, v0, v7

    iput-byte v0, v1, Lk0/kt;->p:B

    shl-int/lit8 v0, v2, 0x8

    and-int/2addr v0, v11

    and-int/lit16 v2, v5, 0xff

    or-int/2addr v0, v2

    int-to-double v7, v0

    const-wide v15, 0x3faccccccccccccdL    # 0.05625

    mul-double/2addr v7, v15

    double-to-int v0, v7

    if-nez v6, :cond_2f

    new-array v2, v4, [I

    aput v0, v2, v10

    .line 145
    invoke-static {v14, v2}, Lk0/qt;->y0(I[I)V

    .line 146
    :cond_2f
    sget v2, Lu0/b;->m:I

    if-ne v2, v4, :cond_31

    if-le v0, v3, :cond_30

    .line 147
    invoke-static {v10}, Lu0/d;->x0(I)V

    goto :goto_a

    :cond_30
    if-gt v0, v12, :cond_32

    .line 148
    invoke-static {v4}, Lu0/d;->x0(I)V

    goto :goto_a

    .line 149
    :cond_31
    invoke-static {v4}, Lu0/d;->x0(I)V

    .line 150
    :cond_32
    :goto_a
    sget v0, Ly0/f;->C0:I

    goto/16 :goto_10

    :pswitch_9
    add-int/lit8 v2, p2, 0x1

    .line 151
    aget-byte v2, v0, v2

    iput-byte v2, v1, Lk0/kt;->h:B

    add-int/lit8 v3, p2, 0x2

    .line 152
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->i:B

    add-int/lit8 v3, p2, 0x3

    .line 153
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->j:B

    add-int/lit8 v3, p2, 0x4

    .line 154
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->k:B

    add-int/lit8 v3, p2, 0x5

    .line 155
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->l:B

    add-int/lit8 v3, p2, 0x6

    .line 156
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->m:B

    add-int/lit8 v3, p2, 0x7

    .line 157
    aget-byte v3, v0, v3

    iput-byte v3, v1, Lk0/kt;->n:B

    add-int/lit8 v3, p2, 0x8

    .line 158
    aget-byte v0, v0, v3

    iput-byte v0, v1, Lk0/kt;->o:B

    const/16 v0, 0x55

    new-array v3, v4, [I

    and-int/lit8 v2, v2, 0x1f

    aput v2, v3, v10

    .line 159
    invoke-static {v0, v3}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x25

    new-array v2, v4, [I

    .line 160
    iget-byte v3, v1, Lk0/kt;->j:B

    shl-int/2addr v3, v13

    and-int/2addr v3, v11

    iget-byte v5, v1, Lk0/kt;->k:B

    and-int/2addr v5, v15

    or-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x26

    new-array v2, v4, [I

    .line 161
    iget-byte v3, v1, Lk0/kt;->l:B

    shl-int/2addr v3, v13

    and-int/2addr v3, v11

    iget-byte v5, v1, Lk0/kt;->m:B

    and-int/2addr v5, v15

    or-int/2addr v3, v5

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    const/16 v0, 0x56

    new-array v2, v4, [I

    .line 162
    iget-byte v3, v1, Lk0/kt;->o:B

    and-int/2addr v3, v4

    aput v3, v2, v10

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_33
    const/16 v2, 0x7a

    new-array v3, v4, [I

    add-int/lit8 v4, p2, 0x1

    .line 163
    aget-byte v0, v0, v4

    aput v0, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_10

    :cond_34
    const/16 v2, 0x7b

    new-array v3, v4, [I

    add-int/lit8 v4, p2, 0x1

    .line 164
    aget-byte v5, v0, v4

    aput v5, v3, v10

    invoke-static {v2, v3}, Lk0/qt;->y0(I[I)V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainServer U_PEDESTRIAN_REMINDER    b_reminder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "accc"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_35
    add-int/lit8 v2, p2, 0xb

    .line 166
    aget-byte v2, v0, v2

    if-nez v2, :cond_36

    move v2, v10

    goto :goto_b

    :cond_36
    move v2, v4

    :goto_b
    shl-int/2addr v2, v6

    add-int/lit8 v5, p2, 0xc

    aget-byte v5, v0, v5

    if-nez v5, :cond_37

    move v5, v10

    goto :goto_c

    :cond_37
    move v5, v4

    :goto_c
    shl-int/2addr v5, v8

    or-int/2addr v2, v5

    add-int/lit8 v5, p2, 0xd

    aget-byte v5, v0, v5

    if-nez v5, :cond_38

    move v5, v10

    goto :goto_d

    :cond_38
    move v5, v4

    :goto_d
    shl-int/2addr v5, v9

    or-int/2addr v2, v5

    add-int/lit8 v5, p2, 0xe

    aget-byte v5, v0, v5

    if-nez v5, :cond_39

    move v5, v10

    goto :goto_e

    :cond_39
    move v5, v4

    :goto_e
    shl-int/2addr v5, v4

    or-int/2addr v2, v5

    add-int/lit8 v3, p2, 0xf

    aget-byte v0, v0, v3

    if-nez v0, :cond_3a

    move v0, v10

    goto :goto_f

    :cond_3a
    move v0, v4

    :goto_f
    or-int/2addr v0, v2

    new-array v2, v4, [I

    aput v0, v2, v10

    .line 167
    invoke-static {v7, v2}, Lk0/qt;->y0(I[I)V

    goto :goto_10

    :cond_3b
    add-int/lit8 v2, p2, 0x1

    .line 168
    aget-byte v3, v0, v2

    invoke-static {v0, v2, v3}, Lk0/pt;->o([BII)V

    :cond_3c
    :goto_10
    return-void

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public W2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/kt;->b:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    .line 2
    iget-object v0, p0, Lk0/kt;->z:Lk0/st;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    iget-object v1, p0, Lk0/kt;->z:Lk0/st;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lk0/kt;->G:Ljava/lang/Runnable;

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
    .locals 8

    const/16 p3, 0x8

    const/4 p4, 0x7

    const/4 v0, 0x5

    const/4 v1, 0x4

    const-string v2, "LLL"

    const/16 v3, 0xe3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x41

    aput p3, p1, v6

    .line 1
    aget p3, p2, v7

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    const/16 p1, 0x7b

    new-array p3, v6, [I

    .line 2
    aget p2, p2, v7

    aput p2, p3, v7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    goto/16 :goto_2

    :pswitch_2
    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x44

    aput p3, p1, v6

    .line 3
    aget p2, p2, v7

    if-ne p2, v6, :cond_0

    const/16 p2, 0xaa

    goto :goto_0

    :cond_0
    const/16 p2, 0x55

    :goto_0
    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 4
    :pswitch_3
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "C_CARINFO_AUTO_PARK : 0xE3, 0x38, "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v7

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p4, p2, v6

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lk0/kt;->b:Lo1/g0;

    aget p4, p2, v7

    invoke-virtual {p1, p3, p4}, Lo1/g0;->e(II)V

    new-array p1, v1, [I

    aput v3, p1, v7

    const/16 p3, 0x38

    aput p3, p1, v6

    .line 7
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v6

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_4
    if-eqz p2, :cond_2

    .line 8
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x78

    new-array p3, v6, [I

    .line 9
    aget v0, p2, v7

    aput v0, p3, v7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 10
    iget-object p1, p0, Lk0/kt;->b:Lo1/g0;

    aget p3, p2, v7

    invoke-virtual {p1, p4, p3}, Lo1/g0;->e(II)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ints[0] :"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QQQQ"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 12
    :pswitch_5
    invoke-virtual {p0, p2, v5}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_HAC : 0xE3, 0x32, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v6

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v1, [I

    aput v3, p1, v7

    const/16 p3, 0x32

    aput p3, p1, v6

    .line 14
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v6

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 15
    :pswitch_6
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_HAC : 0xE3, 0x2E, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x2e

    aput p3, p1, v6

    .line 17
    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 18
    :pswitch_7
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_AUTOHOLD : 0xE3, 0x31, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x31

    aput p3, p1, v6

    .line 20
    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_8
    const/16 p1, 0x9

    .line 21
    invoke-virtual {p0, p2, p1}, Lk0/kt;->q3([II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xb

    new-array v2, v2, [I

    aput v3, v2, v7

    const/16 v3, 0x42

    aput v3, v2, v6

    .line 22
    aget v3, p2, v7

    aput v3, v2, v5

    aget v3, p2, v6

    aput v3, v2, v4

    aget v3, p2, v5

    aput v3, v2, v1

    aget v3, p2, v4

    aput v3, v2, v0

    aget v1, p2, v1

    const/4 v3, 0x6

    aput v1, v2, v3

    aget v0, p2, v0

    aput v0, v2, p4

    aget v0, p2, v3

    aput v0, v2, p3

    aget p4, p2, p4

    aput p4, v2, p1

    const/16 p1, 0xa

    aget p2, p2, p3

    aput p2, v2, p1

    invoke-static {v2}, Lz/k;->s([I)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz p2, :cond_2

    .line 23
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x6b

    new-array p3, v6, [I

    .line 24
    aget p4, p2, v7

    aput p4, p3, v7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 25
    iget-object p1, p0, Lk0/kt;->b:Lo1/g0;

    aget p3, p2, v7

    invoke-virtual {p1, v4, p3}, Lo1/g0;->e(II)V

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x2c

    aput p3, p1, v6

    .line 26
    aget p3, p2, v7

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_INCAR_AUTOLOCK : 0xE3, 0x2C, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_a
    if-eqz p2, :cond_2

    .line 28
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x68

    new-array p3, v6, [I

    .line 29
    aget p4, p2, v7

    aput p4, p3, v7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 30
    iget-object p1, p0, Lk0/kt;->b:Lo1/g0;

    aget p3, p2, v7

    invoke-virtual {p1, v6, p3}, Lo1/g0;->e(II)V

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x2b

    aput p3, p1, v6

    .line 31
    aget p3, p2, v7

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_INCAR_AUTOVENTILATION : 0xE3, 0x2B, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_b
    if-eqz p2, :cond_2

    .line 33
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x67

    new-array p3, v6, [I

    .line 34
    aget p4, p2, v7

    aput p4, p3, v7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 35
    iget-object p1, p0, Lk0/kt;->b:Lo1/g0;

    aget p3, p2, v7

    invoke-virtual {p1, v0, p3}, Lo1/g0;->e(II)V

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x2a

    aput p3, p1, v6

    .line 36
    aget p3, p2, v7

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_AIR_AUTOClEAN : 0xE3, 0x2A, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_c
    if-eqz p2, :cond_2

    .line 38
    array-length p1, p2

    if-lez p1, :cond_2

    const/16 p1, 0x63

    new-array p3, v6, [I

    .line 39
    aget p4, p2, v7

    aput p4, p3, v7

    invoke-static {p1, p3}, Lk0/qt;->y0(I[I)V

    .line 40
    iget-object p1, p0, Lk0/kt;->b:Lo1/g0;

    aget p2, p2, v7

    invoke-virtual {p1, v5, p2}, Lo1/g0;->e(II)V

    goto/16 :goto_2

    :pswitch_d
    if-eqz p2, :cond_2

    .line 41
    array-length p1, p2

    if-lez p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x2d

    aput p3, p1, v6

    .line 42
    aget p3, p2, v7

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_DRIVE_NONSLIP : 0xE3, 0x2D, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 44
    :pswitch_e
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x29

    aput p3, p1, v6

    .line 45
    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 46
    :pswitch_f
    invoke-virtual {p0, p2, v5}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v0, [I

    aput v3, p1, v7

    const/16 p3, 0x24

    aput p3, p1, v6

    .line 47
    aget p3, p2, v7

    aput p3, p1, v5

    aget p3, p2, v6

    aput p3, p1, v4

    aput v7, p1, v1

    invoke-static {p1}, Lz/k;->s([I)V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_TIME_SETTINGS : 0xE3, 0x24, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p3, p2, v7

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ,"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 49
    :pswitch_10
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x28

    aput p3, p1, v6

    .line 50
    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 51
    :pswitch_11
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x27

    aput p3, p1, v6

    .line 52
    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto/16 :goto_2

    .line 53
    :pswitch_12
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x26

    aput p3, p1, v6

    .line 54
    aget p2, p2, v7

    aput p2, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 55
    :pswitch_13
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v1, [I

    aput v3, p1, v7

    const/16 p3, 0x25

    aput p3, p1, v6

    .line 56
    aget p3, p2, v7

    aput p3, p1, v5

    aget p2, p2, v6

    aput p2, p1, v4

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 57
    :pswitch_14
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x23

    aput p3, p1, v6

    .line 58
    aget p2, p2, v7

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :goto_1
    aput v6, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_2

    .line 59
    :pswitch_15
    invoke-virtual {p0, p2, v6}, Lk0/kt;->q3([II)Z

    move-result p1

    if-eqz p1, :cond_2

    new-array p1, v4, [I

    aput v3, p1, v7

    const/16 p3, 0x20

    aput p3, p1, v6

    .line 60
    aget p3, p2, v7

    aput p3, p1, v5

    invoke-static {p1}, Lz/k;->s([I)V

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "C_CMD_BATTERY : 0xE3, 0x20, "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, p2, v7

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final l3(II)V
    .locals 4

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/4 v2, 0x1

    add-int/2addr p2, v2

    .line 2
    aput p2, v1, p1

    const/16 p1, 0xb

    new-array p1, p1, [I

    const/16 p2, 0xe3

    const/4 v3, 0x0

    aput p2, p1, v3

    const/16 p2, 0x42

    aput p2, p1, v2

    .line 3
    aget p2, v1, v3

    const/4 v3, 0x2

    aput p2, p1, v3

    aget p2, v1, v2

    const/4 v2, 0x3

    aput p2, p1, v2

    aget p2, v1, v3

    const/4 v3, 0x4

    aput p2, p1, v3

    aget p2, v1, v2

    const/4 v2, 0x5

    aput p2, p1, v2

    aget p2, v1, v3

    const/4 v3, 0x6

    aput p2, p1, v3

    aget p2, v1, v2

    const/4 v2, 0x7

    aput p2, p1, v2

    aget p2, v1, v3

    const/16 v3, 0x8

    aput p2, p1, v3

    aget p2, v1, v2

    aput p2, p1, v0

    aget p2, v1, v3

    const/16 v0, 0xa

    aput p2, p1, v0

    invoke-static {p1}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public final o3(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.execute_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "raw_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.syu.voice"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public p3()Z
    .locals 4

    .line 1
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.syu.home2"

    const-string v3, "com.syu.home.AirActivity"

    .line 3
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.category.DEFAULT"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    return v1
.end method

.method public final q3([II)Z
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

.method public r3()Z
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

.method public v3()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.syu.cancle_tts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.syu.voice"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public z1([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lk0/kt;->U2([BII)V

    return-void
.end method

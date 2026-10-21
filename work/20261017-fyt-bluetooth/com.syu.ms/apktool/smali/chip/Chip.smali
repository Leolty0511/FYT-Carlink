.class public Lchip/Chip;
.super Landroid/os/UEventObserver;
.source "SourceFile"

# interfaces
.implements Lg/g;
.implements Lo1/s;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchip/Chip$e0;,
        Lchip/Chip$d0;,
        Lchip/Chip$UEventName;,
        Lchip/Chip$UEventKey;
    }
.end annotation


# static fields
.field public static d0:I = 0x12c


# instance fields
.field public A:I

.field public B:Z

.field public C:[I

.field public D:I

.field public E:Z

.field public final F:Ljava/lang/Runnable;

.field public final G:Ljava/lang/Runnable;

.field public final H:Ljava/lang/Runnable;

.field public final I:Ljava/lang/Runnable;

.field public J:Landroid/os/Looper;

.field public K:Landroid/os/Handler;

.field public L:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final M:Ljava/lang/Runnable;

.field public N:Ljava/lang/Runnable;

.field public O:Ljava/lang/Runnable;

.field public P:Ljava/lang/Runnable;

.field public Q:Ljava/lang/Runnable;

.field public final R:Ljava/lang/Runnable;

.field public final S:Ljava/lang/Runnable;

.field public final T:Ljava/lang/Runnable;

.field public final U:Ljava/lang/Runnable;

.field public final V:Ljava/lang/Runnable;

.field public final W:Ljava/lang/Runnable;

.field public final X:Ljava/lang/Runnable;

.field public Y:Landroid/media/MediaPlayer;

.field public Z:Lchip/Chip$d0;

.field public a:Lo1/h0;

.field public final a0:Ljava/lang/Runnable;

.field public b:Ljava/lang/Integer;

.field public final b0:Lo1/p;

.field public c:Ljava/lang/String;

.field public final c0:Ljava/lang/Runnable;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lb/c;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Li1/b0;",
            ">;"
        }
    .end annotation
.end field

.field public q:I

.field public r:I

.field public s:Landroid/os/Handler;

.field public t:Landroid/os/Looper;

.field public u:I

.field public v:Lo1/y;

.field public w:I

.field public x:Z

.field public y:Lchip/Chip$e0;

.field public z:Lf1/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lchip/Chip;->b:Ljava/lang/Integer;

    const-string v1, "/dev/i2c-0"

    .line 3
    iput-object v1, p0, Lchip/Chip;->c:Ljava/lang/String;

    const-string v1, "/dev/i2c-4"

    .line 4
    iput-object v1, p0, Lchip/Chip;->d:Ljava/lang/String;

    const-string v1, "/dev/ttyS1"

    .line 5
    iput-object v1, p0, Lchip/Chip;->e:Ljava/lang/String;

    const-string v2, "/dev/ttyS0"

    .line 6
    iput-object v2, p0, Lchip/Chip;->f:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lchip/Chip;->g:Ljava/lang/String;

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lchip/Chip;->h:Ljava/lang/String;

    const-string v3, "/dev/ttyS2"

    .line 9
    iput-object v3, p0, Lchip/Chip;->i:Ljava/lang/String;

    .line 10
    iput-object v1, p0, Lchip/Chip;->j:Ljava/lang/String;

    const-string v1, "2850"

    .line 11
    iput-object v1, p0, Lchip/Chip;->k:Ljava/lang/String;

    .line 12
    iput-object v2, p0, Lchip/Chip;->l:Ljava/lang/String;

    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lchip/Chip;->m:Z

    const/4 v3, 0x0

    .line 14
    iput-boolean v3, p0, Lchip/Chip;->n:Z

    .line 15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lchip/Chip;->o:Ljava/util/HashMap;

    .line 16
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lchip/Chip;->p:Ljava/util/HashMap;

    const/16 v4, 0x44

    .line 17
    iput v4, p0, Lchip/Chip;->q:I

    const/16 v4, 0x40

    iput v4, p0, Lchip/Chip;->r:I

    .line 18
    iput-object v0, p0, Lchip/Chip;->s:Landroid/os/Handler;

    .line 19
    iput-object v0, p0, Lchip/Chip;->t:Landroid/os/Looper;

    .line 20
    iput v3, p0, Lchip/Chip;->u:I

    .line 21
    new-instance v4, Lo1/y;

    invoke-direct {v4}, Lo1/y;-><init>()V

    iput-object v4, p0, Lchip/Chip;->v:Lo1/y;

    .line 22
    iput v3, p0, Lchip/Chip;->w:I

    .line 23
    iput-boolean v1, p0, Lchip/Chip;->x:Z

    .line 24
    new-instance v4, Lchip/Chip$e0;

    invoke-direct {v4, p0}, Lchip/Chip$e0;-><init>(Lchip/Chip;)V

    iput-object v4, p0, Lchip/Chip;->y:Lchip/Chip$e0;

    .line 25
    iput-object v0, p0, Lchip/Chip;->z:Lf1/o;

    .line 26
    iput v3, p0, Lchip/Chip;->A:I

    .line 27
    iput-boolean v3, p0, Lchip/Chip;->B:Z

    const/4 v4, 0x2

    new-array v5, v4, [I

    .line 28
    fill-array-data v5, :array_0

    iput-object v5, p0, Lchip/Chip;->C:[I

    const/4 v5, -0x1

    .line 29
    iput v5, p0, Lchip/Chip;->D:I

    .line 30
    iput-boolean v3, p0, Lchip/Chip;->E:Z

    .line 31
    new-instance v5, Lchip/Chip$k;

    invoke-direct {v5, p0}, Lchip/Chip$k;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->F:Ljava/lang/Runnable;

    .line 32
    new-instance v5, Lchip/Chip$v;

    invoke-direct {v5, p0}, Lchip/Chip$v;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->G:Ljava/lang/Runnable;

    .line 33
    new-instance v5, Lchip/Chip$w;

    invoke-direct {v5, p0}, Lchip/Chip$w;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->H:Ljava/lang/Runnable;

    .line 34
    new-instance v5, Lchip/Chip$x;

    invoke-direct {v5, p0}, Lchip/Chip$x;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->I:Ljava/lang/Runnable;

    .line 35
    iput-object v0, p0, Lchip/Chip;->J:Landroid/os/Looper;

    .line 36
    iput-object v0, p0, Lchip/Chip;->K:Landroid/os/Handler;

    .line 37
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v5, p0, Lchip/Chip;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    new-instance v5, Lchip/Chip$y;

    invoke-direct {v5, p0}, Lchip/Chip$y;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->M:Ljava/lang/Runnable;

    .line 39
    new-instance v5, Lchip/Chip$z;

    invoke-direct {v5, p0}, Lchip/Chip$z;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->N:Ljava/lang/Runnable;

    .line 40
    new-instance v5, Lchip/Chip$a0;

    invoke-direct {v5, p0}, Lchip/Chip$a0;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    .line 41
    new-instance v5, Lchip/Chip$b0;

    invoke-direct {v5, p0}, Lchip/Chip$b0;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->P:Ljava/lang/Runnable;

    .line 42
    new-instance v5, Lchip/Chip$c0;

    invoke-direct {v5, p0}, Lchip/Chip$c0;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->Q:Ljava/lang/Runnable;

    .line 43
    new-instance v5, Lchip/Chip$a;

    invoke-direct {v5, p0}, Lchip/Chip$a;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->R:Ljava/lang/Runnable;

    .line 44
    new-instance v5, Lchip/Chip$b;

    invoke-direct {v5, p0}, Lchip/Chip$b;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->S:Ljava/lang/Runnable;

    .line 45
    new-instance v5, Lchip/Chip$c;

    invoke-direct {v5, p0}, Lchip/Chip$c;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->T:Ljava/lang/Runnable;

    .line 46
    new-instance v5, Lchip/Chip$e;

    invoke-direct {v5, p0}, Lchip/Chip$e;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->U:Ljava/lang/Runnable;

    .line 47
    new-instance v5, Lchip/Chip$f;

    invoke-direct {v5, p0}, Lchip/Chip$f;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->V:Ljava/lang/Runnable;

    .line 48
    new-instance v5, Lchip/Chip$g;

    invoke-direct {v5, p0}, Lchip/Chip$g;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->W:Ljava/lang/Runnable;

    .line 49
    new-instance v5, Lchip/Chip$h;

    invoke-direct {v5, p0}, Lchip/Chip$h;-><init>(Lchip/Chip;)V

    iput-object v5, p0, Lchip/Chip;->X:Ljava/lang/Runnable;

    .line 50
    iput-object v0, p0, Lchip/Chip;->Z:Lchip/Chip$d0;

    .line 51
    new-instance v0, Lchip/Chip$m;

    invoke-direct {v0, p0}, Lchip/Chip$m;-><init>(Lchip/Chip;)V

    iput-object v0, p0, Lchip/Chip;->a0:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lchip/Chip$n;

    invoke-direct {v0, p0}, Lchip/Chip$n;-><init>(Lchip/Chip;)V

    iput-object v0, p0, Lchip/Chip;->b0:Lo1/p;

    .line 53
    new-instance v0, Lchip/Chip$o;

    invoke-direct {v0, p0}, Lchip/Chip$o;-><init>(Lchip/Chip;)V

    iput-object v0, p0, Lchip/Chip;->c0:Ljava/lang/Runnable;

    new-array v0, v4, [I

    .line 54
    fill-array-data v0, :array_1

    iput-object v0, p0, Lchip/Chip;->C:[I

    :try_start_0
    const-string v0, "GPIO_NAME=car-reverse GPIO_STATE=on"

    .line 55
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "GPIO_NAME=car-reverse GPIO_STATE=over"

    .line 56
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "Gsensor=wakeup"

    .line 57
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "FYT_TW9992_RESET=COMPLETE"

    .line 58
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "TA-NAME=fmta-event TA_STATE=RADIOTAEXIT"

    .line 59
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "TA-NAME=fmta-event TA_STATE=RADIOTAENTER"

    .line 60
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "SENSOR_NAME=lsec-orientation SENSOR_STATE=0"

    .line 61
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "SENSOR_NAME=lsec-orientation SENSOR_STATE=1"

    .line 62
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "SENSOR_NAME=lsec-orientation SENSOR_STATE=2"

    .line 63
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "SENSOR_NAME=lsec-orientation SENSOR_STATE=3"

    .line 64
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "REPORT_EVENT=lt6911 IIC_STATE=enable"

    .line 65
    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 66
    sget-object v0, Lchip/Chip$UEventName;->o:Lchip/Chip$UEventName;

    iget-object v0, v0, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string/jumbo v0, "ro.fyt.platform"

    .line 68
    invoke-static {v0, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lchip/Chip;->l:Ljava/lang/String;

    .line 69
    invoke-virtual {p0}, Lchip/Chip;->V()V

    .line 70
    new-instance v0, Lo1/h0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lo1/h0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lchip/Chip;->a:Lo1/h0;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "image_check_thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lchip/Chip;->J:Landroid/os/Looper;

    .line 74
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lchip/Chip;->K:Landroid/os/Handler;

    .line 75
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v2, 0x3d

    .line 76
    invoke-static {v2}, Lg/e;->j(I)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lbase/Configure$Property;->f:Lbase/Configure$Property;

    invoke-virtual {v2, v1}, Lbase/Configure$Property;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lu0/i;->E3(Z)V

    .line 77
    invoke-virtual {v0}, Lu0/i;->c3()V

    .line 78
    :cond_1
    invoke-virtual {p0}, Lchip/Chip;->i()V

    return-void

    nop

    :array_0
    .array-data 4
        0x55
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x55
        0x5a
    .end array-data
.end method

.method public static synthetic f(Lchip/Chip;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lchip/Chip;->O()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, ""

    if-lez v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p1, p2

    move-object p2, v1

    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_3

    aget-char v2, v0, p1

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3

    .line 5
    aget-char v2, v0, p1

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char p2, v0, p1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move-object p2, v1

    :cond_3
    const-string p1, " "

    .line 7
    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public B()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->C:[I

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->k:Ljava/lang/String;

    return-object v0
.end method

.method public D()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    const/4 v2, 0x2

    const/16 v3, 0xaa

    .line 2
    invoke-static {v2, v3}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    .line 3
    sget-boolean v4, Lu0/b;->a:Z

    const-string v5, " hasLocalMemory: "

    const/16 v6, 0x40d

    const/16 v7, 0xa2

    const-string v8, " len : "

    const/4 v9, 0x3

    const-string v10, "MCU"

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez v4, :cond_2

    const/16 v4, 0x3f9

    .line 4
    invoke-static {v4}, Lm1/c;->i(I)V

    .line 5
    invoke-static {v9, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    aget-byte v13, v4, v12

    and-int/lit16 v13, v13, 0xff

    if-ne v3, v13, :cond_0

    aget-byte v3, v4, v11

    and-int/lit16 v3, v3, 0xff

    aget-byte v13, v4, v2

    and-int/lit16 v13, v13, 0xff

    invoke-static {v3, v13}, Lo1/s0;->x(II)I

    move-result v3

    if-ne v3, v7, :cond_0

    move v3, v11

    goto :goto_0

    :cond_0
    move v3, v12

    .line 7
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mem Data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v14, v4

    invoke-static {v4, v12, v14}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, "No Mem Data!!"

    .line 8
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v12

    goto :goto_1

    :cond_2
    move v3, v11

    :goto_1
    const/16 v4, 0x30

    const/16 v13, 0x46

    if-eqz v3, :cond_6

    const/16 v14, 0xe

    .line 9
    invoke-static {v11, v14}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v14

    if-eqz v14, :cond_5

    .line 10
    array-length v15, v14

    if-lez v15, :cond_5

    .line 11
    invoke-static {}, Lg/e;->p()I

    move-result v15

    if-eq v15, v4, :cond_4

    const/16 v15, 0x41

    .line 12
    invoke-static {v15}, Lg/e;->j(I)Z

    move-result v15

    if-nez v15, :cond_4

    const/16 v15, 0x42

    .line 13
    invoke-static {v15}, Lg/e;->j(I)Z

    move-result v15

    if-nez v15, :cond_4

    const/16 v15, 0x47

    .line 14
    invoke-static {v15}, Lg/e;->j(I)Z

    move-result v15

    if-nez v15, :cond_4

    const/16 v15, 0x43

    .line 15
    invoke-static {v15}, Lg/e;->j(I)Z

    move-result v15

    if-nez v15, :cond_4

    .line 16
    invoke-static {v13}, Lg/e;->j(I)Z

    move-result v15

    if-nez v15, :cond_4

    const-string/jumbo v15, "ro.fyt.realplatform"

    const-string v6, ""

    .line 17
    invoke-static {v15, v6}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v15, "813CM"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    aget-byte v6, v14, v12

    sput v6, Lu0/b;->i1:I

    goto :goto_3

    .line 19
    :cond_4
    :goto_2
    aget-byte v6, v14, v12

    invoke-static {v6}, Lu0/d;->e(I)V

    :cond_5
    :goto_3
    const/16 v6, 0xd

    .line 20
    invoke-static {v11, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v6

    if-eqz v6, :cond_6

    .line 21
    array-length v14, v6

    if-lez v14, :cond_6

    .line 22
    aget-byte v6, v6, v12

    sput v6, Lu0/b;->h1:I

    .line 23
    :cond_6
    iget-object v6, v1, Lu0/i;->a0:Lo1/z;

    new-instance v14, Lchip/Chip$p;

    invoke-direct {v14, v0}, Lchip/Chip$p;-><init>(Lchip/Chip;)V

    invoke-virtual {v6, v14}, Lo1/z;->a(Lo1/p;)V

    .line 24
    iget-object v6, v1, Lu0/i;->Z:Lo1/z;

    new-instance v14, Lchip/Chip$q;

    invoke-direct {v14, v0}, Lchip/Chip$q;-><init>(Lchip/Chip;)V

    invoke-virtual {v6, v14}, Lo1/z;->a(Lo1/p;)V

    .line 25
    sget-boolean v6, Lu0/b;->a:Z

    const/16 v14, 0x13

    const/16 v15, 0x92

    if-nez v6, :cond_9

    if-eqz v3, :cond_8

    const/16 v6, 0xa5

    .line 26
    invoke-static {v2, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v6

    .line 27
    aget-byte v7, v6, v12

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v11

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v1, v12, v7, v6}, Lu0/i;->L3(III)V

    const/16 v6, 0xa7

    .line 28
    invoke-static {v2, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v6

    .line 29
    aget-byte v7, v6, v12

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v11

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {v1, v11, v7, v6}, Lu0/i;->L3(III)V

    const/16 v6, 0xac

    .line 30
    invoke-static {v11, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v6

    .line 31
    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Lu0/d;->w3(I)V

    const/16 v6, 0xad

    .line 32
    invoke-static {v11, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v6

    .line 33
    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v15, :cond_7

    move v6, v11

    goto :goto_4

    :cond_7
    move v6, v12

    :goto_4
    invoke-virtual {v1, v6}, Lu0/i;->G3(Z)V

    goto :goto_5

    .line 34
    :cond_8
    invoke-virtual {v1, v12, v14, v12}, Lu0/i;->L3(III)V

    const/4 v6, 0x7

    .line 35
    invoke-virtual {v1, v12, v6, v12}, Lu0/i;->L3(III)V

    :cond_9
    :goto_5
    const/16 v6, 0x88

    .line 36
    new-instance v7, Lchip/Chip$r;

    invoke-direct {v7, v0}, Lchip/Chip$r;-><init>(Lchip/Chip;)V

    invoke-virtual {v1, v6, v7}, Lbase/b;->K2(ILo1/p;)V

    const/16 v6, 0x58

    .line 37
    new-instance v7, Lchip/Chip$s;

    invoke-direct {v7, v0}, Lchip/Chip$s;-><init>(Lchip/Chip;)V

    invoke-virtual {v1, v6, v7}, Lbase/b;->K2(ILo1/p;)V

    const/16 v6, 0xbd

    .line 38
    new-instance v7, Lchip/Chip$t;

    invoke-direct {v7, v0}, Lchip/Chip$t;-><init>(Lchip/Chip;)V

    invoke-virtual {v1, v6, v7}, Lbase/b;->K2(ILo1/p;)V

    .line 39
    invoke-static {v13}, Lg/e;->j(I)Z

    move-result v6

    if-eqz v6, :cond_b

    const/16 v6, 0xc4

    .line 40
    new-instance v7, Lchip/Chip$u;

    invoke-direct {v7, v0}, Lchip/Chip$u;-><init>(Lchip/Chip;)V

    invoke-virtual {v1, v6, v7}, Lbase/b;->K2(ILo1/p;)V

    if-eqz v3, :cond_a

    const/16 v6, 0xae

    .line 41
    invoke-static {v11, v6}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v6

    if-eqz v6, :cond_b

    .line 42
    array-length v7, v6

    if-lez v7, :cond_b

    .line 43
    aget-byte v6, v6, v12

    and-int/2addr v6, v11

    invoke-virtual {v1, v6}, Lu0/i;->D3(I)V

    goto :goto_6

    .line 44
    :cond_a
    sget-object v6, Lbase/Configure$Property;->w:Lbase/Configure$Property;

    invoke-virtual {v6, v11}, Lbase/Configure$Property;->b(Z)Z

    move-result v6

    .line 45
    invoke-virtual {v1, v6}, Lu0/i;->D3(I)V

    .line 46
    :cond_b
    :goto_6
    sget-object v1, Lk0/ot;->a:Lo1/y;

    iget-object v6, v0, Lchip/Chip;->a0:Ljava/lang/Runnable;

    invoke-virtual {v1, v6, v12}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 47
    invoke-static {}, Lg/e;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    const/16 v1, 0xf

    const/4 v6, 0x4

    .line 48
    invoke-static {v6, v1}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v1

    if-eqz v1, :cond_c

    .line 49
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "canbus mem Data: "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v1

    invoke-static {v1, v12, v13}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v13, v1

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz v1, :cond_d

    .line 50
    array-length v7, v1

    if-ne v7, v6, :cond_d

    .line 51
    aget-byte v6, v1, v12

    aget-byte v7, v1, v11

    aget-byte v13, v1, v2

    aget-byte v1, v1, v9

    invoke-static {v6, v7, v13, v1}, Lo1/s0;->z(IIII)I

    move-result v1

    goto :goto_7

    :cond_d
    move v1, v12

    :goto_7
    if-nez v1, :cond_e

    .line 52
    iget-object v1, v0, Lchip/Chip;->a:Lo1/h0;

    const/16 v6, 0xd3

    invoke-virtual {v1, v6, v12}, Lo1/h0;->h(II)I

    move-result v1

    .line 53
    :cond_e
    invoke-static {v1}, Lk0/qt;->J(I)V

    :cond_f
    if-eqz v3, :cond_16

    .line 54
    sget-object v1, Lu0/c;->Q:Lo1/z;

    iget-object v6, v0, Lchip/Chip;->b0:Lo1/p;

    invoke-virtual {v1, v6}, Lo1/z;->a(Lo1/p;)V

    .line 55
    invoke-static {v15, v14}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v1

    .line 56
    iget-object v6, v0, Lchip/Chip;->a:Lo1/h0;

    const/16 v7, 0xd4

    invoke-virtual {v6, v7}, Lo1/h0;->i(I)[I

    move-result-object v6

    if-nez v6, :cond_10

    move v13, v12

    goto :goto_8

    .line 57
    :cond_10
    array-length v13, v6

    :goto_8
    const/16 v2, 0x91

    if-ne v13, v15, :cond_12

    move v4, v12

    move v9, v4

    :goto_9
    if-ge v9, v2, :cond_11

    .line 58
    aget-byte v16, v1, v9

    add-int v4, v4, v16

    int-to-byte v4, v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_11
    and-int/lit16 v4, v4, 0xff

    .line 59
    aget-byte v9, v1, v2

    and-int/lit16 v9, v9, 0xff

    if-eq v4, v9, :cond_12

    .line 60
    invoke-static {v6}, Lo1/s0;->r([I)[B

    move-result-object v1

    .line 61
    invoke-static {v1, v14}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    :cond_12
    if-eqz v1, :cond_13

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read steer mem Data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-static {v1, v12, v6}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    if-eqz v1, :cond_16

    .line 63
    array-length v4, v1

    if-ne v4, v15, :cond_16

    if-eq v13, v15, :cond_14

    .line 64
    iget-object v4, v0, Lchip/Chip;->a:Lo1/h0;

    invoke-static {v1}, Lo1/s0;->e([B)[I

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lo1/h0;->r(I[I)V

    .line 65
    iget-object v4, v0, Lchip/Chip;->a:Lo1/h0;

    invoke-virtual {v4, v7}, Lo1/h0;->e(I)V

    :cond_14
    new-array v4, v15, [I

    const/16 v6, 0x31

    aput v6, v4, v12

    .line 66
    invoke-static {v1}, Lo1/s0;->e([B)[I

    move-result-object v1

    invoke-static {v1, v12, v4, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x30

    .line 67
    invoke-static {v1}, Lg/e;->j(I)Z

    move-result v1

    if-nez v1, :cond_15

    aget v1, v4, v2

    if-eqz v1, :cond_15

    aput v12, v4, v2

    .line 68
    :cond_15
    invoke-static {v4}, Lz/k;->s([I)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send to mcu steer mem Data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v12, v15}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_16
    sget-boolean v1, Lu0/b;->a:Z

    if-nez v1, :cond_17

    if-nez v3, :cond_17

    const/4 v1, 0x3

    new-array v2, v1, [B

    const/16 v1, -0x56

    aput-byte v1, v2, v12

    const/16 v1, 0xa2

    .line 71
    invoke-static {v1, v11}, Lo1/s0;->c(II)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v11

    .line 72
    invoke-static {v1, v12}, Lo1/s0;->c(II)I

    move-result v1

    int-to-byte v1, v1

    const/4 v4, 0x2

    aput-byte v1, v2, v4

    const/16 v1, 0x40d

    .line 73
    invoke-static {v2, v1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    .line 74
    iget v1, v0, Lchip/Chip;->w:I

    invoke-static {v1}, Lk0/qt;->J(I)V

    :cond_17
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 75
    sget v2, Lu0/b;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    sget v2, Ly0/f;->r:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    sget v2, Ly0/f;->H:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    const-string v2, "812 DataMain.sHandbrakeEnable: %d; DataSound.sBeep: %d; DataSound.sAmp: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget v1, Lu0/b;->m:I

    if-ltz v1, :cond_18

    .line 77
    invoke-static {v1}, Lu0/d;->z0(I)V

    .line 78
    :cond_18
    sget v1, Ly0/f;->r:I

    if-ltz v1, :cond_19

    .line 79
    invoke-static {v1}, Ly0/h;->r(I)V

    .line 80
    :cond_19
    sget v1, Ly0/f;->H:I

    if-ltz v1, :cond_1a

    .line 81
    invoke-static {v1}, Ly0/h;->k(I)V

    .line 82
    :cond_1a
    sget v1, Lw0/d;->C:I

    if-ltz v1, :cond_1b

    .line 83
    sget-object v1, Lw0/d;->b:Lw0/g;

    sget v2, Lw0/d;->C:I

    invoke-interface {v1, v2}, Lw0/g;->C(I)V

    .line 84
    :cond_1b
    sget-boolean v1, Lu0/b;->a:Z

    if-nez v1, :cond_1d

    const/16 v1, 0xce

    invoke-static {v1}, Lm1/c;->k(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/16 v1, 0xa9

    .line 85
    invoke-static {v11, v1}, Lcom/syu/jni/ToolsJni;->cmd_148_read_data(II)[B

    move-result-object v1

    .line 86
    invoke-static {v1, v12}, Lo1/s0;->f([BI)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Read MCU_OPTIONS Data = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-static {v1, v12, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_1c

    .line 88
    sget-object v1, Lbase/Configure$Property;->A:Lbase/Configure$Property;

    invoke-virtual {v1, v11}, Lbase/Configure$Property;->d(I)I

    move-result v1

    goto :goto_a

    :cond_1c
    aget-byte v1, v1, v12

    and-int/lit16 v1, v1, 0xff

    and-int/2addr v1, v11

    .line 89
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fixed MCU_OPTIONS Data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget v2, Lu0/b;->X:I

    if-eq v2, v1, :cond_1d

    .line 91
    invoke-static {v1}, Lu0/d;->W1(I)V

    :cond_1d
    return-void
.end method

.method public E(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public F()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v1, "817"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lchip/Chip;->l:Ljava/lang/String;

    const-string v1, "602"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public G()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Extra_Work_Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lchip/Chip;->t:Landroid/os/Looper;

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lchip/Chip;->s:Landroid/os/Handler;

    return-void
.end method

.method public H(Z)V
    .locals 2

    const-string/jumbo v0, "sys.fyt.systemobd"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lchip/Chip;->n:Z

    return v0
.end method

.method public J(Z)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {}, La/f;->g()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, La/f;->g()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v1, "location_mode"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method public K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lchip/Chip;->L:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    invoke-virtual {p0}, Lchip/Chip;->F()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v2, Lu0/c;->j:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->Q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    :cond_0
    iget-object v2, p0, Lchip/Chip;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    iget-object v0, p0, Lchip/Chip;->v:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public L()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>>>>   playNotificationSound2 \uff1a  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "wake"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f030021

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 5
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 6
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    new-instance v1, Lchip/Chip$l;

    invoke-direct {v1, p0}, Lchip/Chip$l;-><init>(Lchip/Chip;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 7
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 8
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public M()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public N()V
    .locals 4

    .line 1
    iget-object v0, p0, Lchip/Chip;->Z:Lchip/Chip$d0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lchip/Chip$d0;->a()V

    .line 3
    :cond_0
    sget-object v0, Lh0/c;->b:Lh0/f;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lh0/f;->reset()V

    .line 4
    :cond_1
    invoke-static {}, Lg/e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3a

    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x91

    const/16 v1, 0xff

    .line 5
    invoke-static {v0, v1}, Lo1/s0;->q(II)[I

    move-result-object v0

    const/16 v1, 0x90

    const/4 v2, 0x0

    .line 6
    aput v2, v0, v1

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reStartFactorySetting write mem Data: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-static {v0, v2, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " len : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MCU"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {v0}, Lo1/s0;->r([I)[B

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_149_write_data([BI)I

    :cond_2
    return-void
.end method

.method public final O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lchip/Chip;->Y:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public P(Z)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reserving   to Enable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   tatkOver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sys.car.reverse"

    const-string v2, "0"

    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "chip"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "2"

    if-eqz p1, :cond_3

    .line 2
    invoke-static {}, Lcom/syu/jni/ToolsJni;->cmd_32_get_boot_reverse_status()I

    move-result v4

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reserving  to Enable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "   status: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne v4, p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-static {v1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf1/o;->q(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    sget-object v0, Le1/a;->b:Le1/l;

    instance-of v1, v0, Le1/c;

    if-eqz v1, :cond_6

    .line 8
    check-cast v0, Le1/c;

    invoke-virtual {v0, p1}, Le1/c;->x(Z)V

    goto :goto_0

    .line 9
    :cond_3
    invoke-static {v1, v2}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf1/o;->q(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 11
    :cond_5
    sget-object p1, Le1/a;->b:Le1/l;

    instance-of v1, p1, Le1/c;

    if-eqz v1, :cond_6

    .line 12
    check-cast p1, Le1/c;

    invoke-virtual {p1, v0}, Le1/c;->x(Z)V

    :cond_6
    :goto_0
    return-void
.end method

.method public Q(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lchip/Chip;->n:Z

    return-void
.end method

.method public R(Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo p1, "sys.syu.radio.ta"

    const-string v0, "false"

    .line 1
    invoke-static {p1, v0}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public S(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    sput-object p1, La/c;->a:Lbase/a;

    return-void
.end method

.method public T(Lchip/Chip$d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lchip/Chip;->Z:Lchip/Chip$d0;

    return-void
.end method

.method public U(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/16 v0, 0xd2

    .line 1
    invoke-static {v0}, Lm1/c;->i(I)V

    .line 2
    :cond_0
    iput-boolean p1, p0, Lchip/Chip;->x:Z

    return-void
.end method

.method public V()V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v1, Lu0/c;->h:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->H:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v2, Lw0/e;->f:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->M:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v2, Lu0/c;->f:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->Q:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v2, p0, Lchip/Chip;->R:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lchip/Chip;->R:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lu0/c;->j:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->Q:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lchip/Chip;->T:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 9
    sget-object v0, Lu0/c;->M:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 10
    sget-object v0, La/d;->a:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 11
    iget-object v2, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 13
    sget-object v0, Lu0/c;->e:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    .line 15
    sget-object v1, La/b;->d:Lo1/d;

    if-eqz v0, :cond_0

    sget-object v2, La/b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v2, La/b;->p:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Lo1/d;->i(Ljava/lang/Comparable;)V

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lchip/Chip;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 5

    const/16 v0, 0xc6

    .line 1
    invoke-static {v0}, Lm1/c;->k(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->h:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->H:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    :cond_0
    sget-object v0, Lu0/c;->M:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->N:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lu0/c;->A:Lo1/y;

    new-instance v3, Lchip/Chip$d;

    invoke-direct {v3, p0}, Lchip/Chip$d;-><init>(Lchip/Chip;)V

    invoke-virtual {v0, v3, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->f:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->M:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, La/d;->a:Lo1/y;

    iget-object v3, p0, Lchip/Chip;->P:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    sget-object v3, Lu0/c;->h:Lo1/y;

    iget-object v4, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 9
    sget-object v3, Lu0/c;->e:Lo1/y;

    iget-object v4, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 10
    iget-object v3, p0, Lchip/Chip;->O:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    invoke-static {}, Lo1/u;->Q()Z

    move-result v0

    .line 12
    sget-object v2, La/b;->d:Lo1/d;

    if-eqz v0, :cond_1

    sget-object v3, La/b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v3, La/b;->p:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3, p0}, Lo1/d;->a(Ljava/lang/Comparable;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v2, p0, Lchip/Chip;->I:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    :cond_2
    return-void
.end method

.method public e()Z
    .locals 3

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public g(I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==============================>>>>   airPlaneMode value\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wake"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    const-string v6, "airplane_mode_on"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x20000000

    .line 4
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    const-string/jumbo v4, "state"

    .line 5
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==============================>>>>   end airPlaneMode value\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public h(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lchip/Chip;->u:I

    if-eqz p2, :cond_0

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    and-int/lit16 v1, p1, 0xff

    not-int v1, v1

    and-int/2addr v0, v1

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "========== applayReversingFlag falg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " applay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "chip"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== applayReversingFlag reversingFlag: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lchip/Chip;->u:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lchip/Chip;->y:Lchip/Chip$e0;

    invoke-virtual {v1, v0}, Lchip/Chip$e0;->a(I)V

    .line 5
    iget-object v0, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->y:Lchip/Chip$e0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-boolean v0, p0, Lchip/Chip;->x:Z

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 7
    sget p1, Lchip/Chip;->d0:I

    invoke-virtual {p0, p1}, Lchip/Chip;->r(I)I

    move-result v3

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "========== applayReversingFlag delayTime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " imageH : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lchip/Chip;->K:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object p2, p0, Lchip/Chip;->y:Lchip/Chip$e0;

    int-to-long v0, v3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(Lmodule/sound/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public k(Lf1/o$c;)V
    .locals 0

    return-void
.end method

.method public l()I
    .locals 3

    .line 1
    iget v0, p0, Lchip/Chip;->D:I

    invoke-static {v0}, Lo1/q0;->n(I)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Lo1/o0;->a(III)I

    move-result v0

    return v0
.end method

.method public m(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->o:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->t:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lchip/Chip;->t:Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method public o(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lchip/Chip;->n:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/16 v1, 0x7c

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/16 v2, 0xff

    :cond_0
    aput v2, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lcom/syu/jni/ToolsJni;->cmd_31_fan_en(I)V

    :goto_0
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 10

    const-string v0, "chip"

    const-string v1, "=== onUEvent start!! ==="

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v2, Lutil/log/LogType;->a:Lutil/log/LogType;

    invoke-virtual {v1, v2, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Chip --------------->>  onUEvent   msg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    \nDataVideo.sVideo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Le1/a;->b:Le1/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-virtual {p0, p1}, Lchip/Chip;->E(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 6
    :cond_0
    sget-object v1, Lchip/Chip$UEventName;->b:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 7
    sget-object v1, Lchip/Chip$UEventKey;->b:Lchip/Chip$UEventKey;

    iget-object v1, v1, Lchip/Chip$UEventKey;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lchip/Chip;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget v1, Lu0/b;->r0:I

    const-string v4, "over"

    const-string v5, "on"

    if-eq v1, v3, :cond_3

    .line 9
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    invoke-static {v3}, Lk0/qt;->u0(I)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-static {v2}, Lk0/qt;->u0(I)V

    :cond_2
    :goto_0
    return-void

    .line 13
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onUEvent   Reversing : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   tatkOver: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "sys.car.reverse"

    const-string v7, "0"

    invoke-static {v6, v7}, Lo1/s0;->o(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {p0, v3, v3}, Lchip/Chip;->h(IZ)V

    goto/16 :goto_5

    .line 16
    :cond_4
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 17
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object p1

    invoke-virtual {p1}, Lu0/i;->s3()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    sget p1, Lu0/b;->o:I

    if-eqz p1, :cond_5

    const-string p1, "/sys/fytver/bl_en"

    .line 19
    invoke-static {p1, v7}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lchip/Chip;->s:Landroid/os/Handler;

    new-instance v1, Lchip/Chip$i;

    invoke-direct {v1, p0}, Lchip/Chip$i;-><init>(Lchip/Chip;)V

    const-wide/16 v4, 0x258

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    :cond_5
    invoke-virtual {p0, v3, v2}, Lchip/Chip;->h(IZ)V

    goto/16 :goto_5

    .line 22
    :cond_6
    sget-object v1, Lchip/Chip$UEventName;->g:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 23
    invoke-static {v3}, Lu0/d;->n0(I)V

    .line 24
    invoke-static {v3}, Ls0/d;->c(I)V

    goto/16 :goto_5

    .line 25
    :cond_7
    sget-object v1, Lchip/Chip$UEventName;->c:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 26
    sget-object p1, Le1/a;->b:Le1/l;

    if-eqz p1, :cond_1f

    instance-of p1, p1, Le1/c;

    if-eqz p1, :cond_1f

    .line 27
    sget p1, Lu0/b;->n4:I

    if-nez p1, :cond_8

    return-void

    .line 28
    :cond_8
    invoke-static {v2}, Lu0/d;->o3(I)V

    .line 29
    sget-object p1, Le1/a;->b:Le1/l;

    check-cast p1, Le1/c;

    invoke-virtual {p1}, Le1/c;->q()V

    goto/16 :goto_5

    .line 30
    :cond_9
    sget-object v1, Lchip/Chip$UEventName;->e:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x2

    const-wide/16 v5, 0x12c

    if-eqz v1, :cond_a

    .line 31
    sget p1, Lu0/b;->n4:I

    if-ne p1, v3, :cond_1f

    .line 32
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lf1/o;->p(ZI)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 33
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->W:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->W:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 35
    :cond_a
    sget-object v1, Lchip/Chip$UEventName;->f:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 36
    sget p1, Lu0/b;->n4:I

    if-ne p1, v3, :cond_1f

    .line 37
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lf1/o;->p(ZI)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 38
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->U:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 39
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->U:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 40
    :cond_b
    sget-object v1, Lchip/Chip$UEventName;->d:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v7, 0x4

    if-eqz v1, :cond_d

    const/16 p1, 0x2d

    new-array v1, v3, [I

    aput v7, v1, v2

    const/4 v2, 0x0

    const-string v4, "FYT_TW9992_RESET=COMPLETE BSP \u8981\u6c42\u91cd\u5237\u53c2\u6570"

    .line 41
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v2, v4}, Lu0/d;->J3(I[I[F[Ljava/lang/String;)V

    .line 42
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    const-string v1, "9992\u590d\u4f4d\u6210\u529f \u91cd\u5237\u53c2\u6570 "

    invoke-virtual {p1, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 43
    sget p1, Lu0/b;->n4:I

    if-ne p1, v3, :cond_1f

    .line 44
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object p1

    invoke-virtual {p1, v3, v3}, Lf1/o;->p(ZI)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 45
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->V:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 46
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->V:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 47
    :cond_c
    sget-object p1, Le1/a;->b:Le1/l;

    if-eqz p1, :cond_1f

    instance-of v1, p1, Le1/c;

    if-eqz v1, :cond_1f

    .line 48
    check-cast p1, Le1/c;

    invoke-virtual {p1, v3}, Le1/c;->y(Z)V

    .line 49
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->X:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    iget-object p1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    iget-object v1, p0, Lchip/Chip;->X:Ljava/lang/Runnable;

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 51
    :cond_d
    sget-object v1, Lchip/Chip$UEventName;->h:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x7

    const/16 v6, 0x8

    const/4 v8, 0x3

    const-string/jumbo v9, "sys.syu.radio.ta"

    if-eqz v1, :cond_11

    .line 52
    invoke-static {}, Lo1/u;->n0()Z

    move-result p1

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TA Enter Radio -- radioIsTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1f

    .line 54
    invoke-static {}, Lo1/u;->Q()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 55
    sget p1, Lu0/b;->D:I

    if-eq p1, v8, :cond_e

    if-eq p1, v6, :cond_e

    if-ne p1, v5, :cond_f

    .line 56
    :cond_e
    iput p1, p0, Lchip/Chip;->A:I

    .line 57
    :cond_f
    sget-object p1, La/b;->j:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lchip/Chip;->B:Z

    .line 58
    :cond_10
    invoke-static {}, Lo1/u;->x0()V

    const-string/jumbo p1, "true"

    .line 59
    invoke-static {v9, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 60
    :cond_11
    sget-object v1, Lchip/Chip$UEventName;->i:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 61
    invoke-static {}, Lo1/u;->Q()Z

    move-result p1

    .line 62
    invoke-static {}, Lo1/u;->n0()Z

    move-result v1

    .line 63
    invoke-static {v9, v2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TA Exit Radio -- radioIsTop:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " toDo: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_17

    if-eqz v3, :cond_17

    if-eqz p1, :cond_16

    const/16 p1, 0x64

    .line 65
    iget v1, p0, Lchip/Chip;->A:I

    if-lez v1, :cond_15

    const/16 p1, 0x320

    if-eq v1, v8, :cond_14

    if-eq v1, v5, :cond_13

    if-eq v1, v6, :cond_12

    goto :goto_1

    .line 66
    :cond_12
    invoke-static {}, Lo1/u;->i()I

    goto :goto_1

    .line 67
    :cond_13
    invoke-static {}, Lo1/u;->w0()I

    goto :goto_1

    .line 68
    :cond_14
    invoke-static {}, Lo1/u;->q()V

    .line 69
    :goto_1
    iput v2, p0, Lchip/Chip;->A:I

    .line 70
    :cond_15
    iget-boolean v1, p0, Lchip/Chip;->B:Z

    if-nez v1, :cond_17

    .line 71
    iget-object v1, p0, Lchip/Chip;->K:Landroid/os/Handler;

    new-instance v2, Lchip/Chip$j;

    invoke-direct {v2, p0}, Lchip/Chip$j;-><init>(Lchip/Chip;)V

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 72
    :cond_16
    invoke-static {}, Lo1/u;->k()V

    :cond_17
    :goto_2
    const-string p1, "false"

    .line 73
    invoke-static {v9, p1}, Lo1/s0;->F(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_18
    const-string v1, "SENSOR_NAME=lsec-orientation"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 75
    sget-object v1, Lchip/Chip$UEventName;->k:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3

    .line 76
    :cond_19
    sget-object v1, Lchip/Chip$UEventName;->l:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move v3, v4

    goto :goto_3

    .line 77
    :cond_1a
    sget-object v1, Lchip/Chip$UEventName;->m:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    move v3, v8

    goto :goto_3

    :cond_1b
    move v3, v2

    :goto_3
    const-string/jumbo p1, "ro.sf.swrotation"

    .line 78
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    div-int/lit8 p1, p1, 0x5a

    rem-int/2addr p1, v7

    sub-int p1, v3, p1

    add-int/2addr p1, v7

    .line 79
    rem-int/2addr p1, v7

    const/16 v1, 0xa

    .line 80
    invoke-static {v1, v3}, Lcom/syu/jni/ToolsJni;->cmd_147_7026_control_write(II)I

    .line 81
    :try_start_0
    invoke-static {}, La/f;->j()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 83
    :cond_1c
    sget-object v1, Lchip/Chip$UEventName;->n:Lchip/Chip$UEventName;

    iget-object v2, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 84
    sget-object p1, Lbase/Configure$Property;->a0:Lbase/Configure$Property;

    const-string v2, ""

    invoke-virtual {p1, v2}, Lbase/Configure$Property;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "HDMI-RV"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 85
    invoke-static {}, Lf1/o;->g()Lf1/o;

    move-result-object v2

    if-eqz p1, :cond_1d

    const/16 p1, 0xd

    goto :goto_4

    :cond_1d
    const/16 p1, 0x9

    :goto_4
    invoke-virtual {v2, p1}, Lf1/o;->e(I)Lf1/q;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 86
    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lf1/q;->x(Ljava/lang/String;)Z

    goto :goto_5

    .line 87
    :cond_1e
    sget-object v1, Lchip/Chip$UEventName;->o:Lchip/Chip$UEventName;

    iget-object v1, v1, Lchip/Chip$UEventName;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 88
    invoke-static {}, Lx0/c;->X2()Lx0/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lx0/c;->Y2(Ljava/lang/String;)V

    :cond_1f
    :goto_5
    const-string p1, "=== onUEvent end!! =="

    .line 89
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public p(Ljava/lang/String;I)Lb/c;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lchip/Chip;->m(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lb/c;

    invoke-direct {v0, p1, p2}, Lb/c;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-object p2, p0, Lchip/Chip;->o:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p2, p0, Lchip/Chip;->o:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/c;

    return-object p1
.end method

.method public q(Ljava/lang/String;I)Li1/b0;
    .locals 3

    .line 1
    iget-object v0, p0, Lchip/Chip;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lchip/Chip;->p(Ljava/lang/String;I)Lb/c;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lchip/Chip;->p:Ljava/util/HashMap;

    new-instance v2, Li1/b0;

    invoke-direct {v2, v0}, Li1/b0;-><init>(Lb/c;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lchip/Chip;->p:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li1/b0;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Li1/b0;->h(I)V

    const/4 p2, 0x1

    const-string/jumbo v0, "sys.syu.serial.mcuOn_delay"

    .line 6
    invoke-static {v0, p2}, Lo1/s0;->l(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lb/c$b;->c(Z)V

    :cond_1
    return-object p1
.end method

.method public final r(I)I
    .locals 1

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lu0/i;->k3()I

    move-result p1

    :cond_0
    return p1
.end method

.method public declared-synchronized s([I)V
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lchip/Chip;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Le1/a;->b:Le1/l;

    if-eqz v0, :cond_1

    instance-of v1, v0, Le1/c;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Le1/c;

    .line 4
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x1

    .line 5
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 6
    iget-object v5, p0, Lchip/Chip;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget v3, p1, v3

    aget v4, p1, v4

    invoke-virtual {v0, v5, v3, v4}, Le1/c;->E(III)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public t(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lchip/Chip;->d:Ljava/lang/String;

    return-object p1
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->h:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->j:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->c:Ljava/lang/String;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lchip/Chip;->g:Ljava/lang/String;

    return-object v0
.end method

.method public y(I)I
    .locals 0

    .line 1
    iget p1, p0, Lchip/Chip;->r:I

    return p1
.end method

.method public z()I
    .locals 1

    .line 1
    iget v0, p0, Lchip/Chip;->q:I

    return v0
.end method

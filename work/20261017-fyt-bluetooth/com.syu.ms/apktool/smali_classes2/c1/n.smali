.class public Lc1/n;
.super Lc1/p;
.source "SourceFile"

# interfaces
.implements Lo1/q;


# static fields
.field public static j:I = 0x0

.field public static k:I = 0x5

.field public static l:I


# instance fields
.field public final b:[B

.field public final c:[I

.field public d:I

.field public e:I

.field public f:I

.field public g:Lo1/l0;

.field public final h:Ljava/lang/Runnable;

.field public i:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc1/p;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Lc1/n;->b:[B

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lc1/n;->c:[I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lc1/n;->d:I

    .line 5
    iput v0, p0, Lc1/n;->e:I

    .line 6
    iput v0, p0, Lc1/n;->f:I

    .line 7
    new-instance v0, Lo1/l0;

    invoke-direct {v0}, Lo1/l0;-><init>()V

    iput-object v0, p0, Lc1/n;->g:Lo1/l0;

    .line 8
    new-instance v0, Lc1/n$a;

    invoke-direct {v0, p0}, Lc1/n$a;-><init>(Lc1/n;)V

    iput-object v0, p0, Lc1/n;->h:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lc1/n$c;

    invoke-direct {v0, p0}, Lc1/n$c;-><init>(Lc1/n;)V

    iput-object v0, p0, Lc1/n;->i:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic O2()I
    .locals 1

    .line 1
    sget v0, Lc1/n;->k:I

    return v0
.end method

.method public static synthetic P2(I)I
    .locals 0

    .line 1
    sput p0, Lc1/n;->k:I

    return p0
.end method

.method public static synthetic Q2()I
    .locals 2

    .line 1
    sget v0, Lc1/n;->k:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lc1/n;->k:I

    return v0
.end method

.method public static synthetic R2(Lc1/n;[I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc1/n;->Y2([I)V

    return-void
.end method

.method public static synthetic S2()I
    .locals 1

    .line 1
    sget v0, Lc1/n;->j:I

    return v0
.end method

.method public static synthetic T2(I)I
    .locals 0

    .line 1
    sput p0, Lc1/n;->j:I

    return p0
.end method

.method public static synthetic U2()I
    .locals 2

    .line 1
    sget v0, Lc1/n;->j:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lc1/n;->j:I

    return v0
.end method

.method public static V2(I)V
    .locals 2

    const-string v0, "LG"

    const-string v1, "controlwindowscontrolwindows"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 2
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 3
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 4
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    .line 5
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    .line 6
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    if-ne p0, v0, :cond_5

    .line 7
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x7

    if-ne p0, v0, :cond_6

    .line 8
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x8

    if-ne p0, v0, :cond_7

    .line 9
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_7
    const/16 v0, 0x9

    if-ne p0, v0, :cond_8

    .line 10
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    if-ne p0, v0, :cond_9

    .line 11
    invoke-static {v0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_9
    const/16 v0, 0xb

    if-ne p0, v0, :cond_a

    const/16 p0, 0xf

    .line 12
    invoke-static {p0}, Lc1/n;->Z2(I)V

    goto :goto_0

    :cond_a
    const/16 v0, 0xc

    if-ne p0, v0, :cond_b

    const/16 p0, 0x10

    .line 13
    invoke-static {p0}, Lc1/n;->Z2(I)V

    :cond_b
    :goto_0
    return-void
.end method

.method public static W2()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, La/f;->d()Landroid/app/ActivityManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Z2(I)V
    .locals 5

    const/4 v0, 0x6

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-byte v3, v1, v2

    const/16 v2, -0x67

    const/4 v3, 0x1

    aput-byte v2, v1, v3

    const/4 v2, 0x2

    aput-byte v2, v1, v2

    int-to-byte p0, p0

    const/4 v2, 0x3

    aput-byte p0, v1, v2

    const/4 p0, 0x4

    const/4 v2, -0x1

    aput-byte v2, v1, p0

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 p0, 0x5

    .line 1
    aget-byte v2, v1, p0

    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v1, p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "LG"

    const-string v0, "sendCmdobdsendCmdobd ="

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p0, Lz/a;->f:Lo1/e0;

    invoke-virtual {p0, v1}, Lo1/e0;->i([B)V

    return-void
.end method

.method public static a3(I)V
    .locals 4

    const-string v0, "com.syu.driver.DriverActivity"

    .line 1
    sput p0, Lc1/n;->l:I

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " 333    \u52a8\u529b\u6f8e\u6e43    setMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ln1/b;->v(Ljava/lang/String;)V

    .line 3
    :try_start_0
    invoke-static {}, Lc1/n;->W2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 4
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.syu.driver"

    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.DEFAULT"

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    :cond_0
    :goto_0
    invoke-static {}, Lo1/k;->a()Lo1/k;

    move-result-object p0

    new-instance v0, Lc1/n$b;

    invoke-direct {v0}, Lc1/n$b;-><init>()V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public L2()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0, v1, v1, v1}, Lc1/n;->Z0(I[I[F[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public M1(I[I[F[Ljava/lang/String;)Ly/f;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public N2()V
    .locals 2

    .line 1
    sget-object v0, Lz/a;->p:Lo1/f0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo1/f0;->e(Lo1/q;)V

    return-void
.end method

.method public final X2([BII)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc1/n;->g:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    aget-byte v2, p1, p2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1}, Lc1/b;->i(I[I)V

    new-array v1, v0, [I

    add-int/lit8 v2, p2, 0x1

    .line 3
    aget-byte v2, p1, v2

    aput v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lc1/b;->i(I[I)V

    new-array v1, v0, [I

    add-int/lit8 v2, p2, 0x2

    .line 4
    aget-byte v2, p1, v2

    aput v2, v1, v3

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lc1/b;->i(I[I)V

    new-array v1, v0, [I

    add-int/lit8 v2, p2, 0x3

    .line 5
    aget-byte v2, p1, v2

    aput v2, v1, v3

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lc1/b;->i(I[I)V

    new-array v1, v0, [I

    add-int/lit8 v2, p2, 0x4

    .line 6
    aget-byte v2, p1, v2

    aput v2, v1, v3

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lc1/b;->i(I[I)V

    new-array v0, v0, [I

    aput v3, v0, v3

    const/4 v1, 0x6

    .line 7
    invoke-static {v1, v0}, Lc1/b;->i(I[I)V

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "  \u670d\u52a1\u53d1\u9001  Mode Data :"

    invoke-virtual {v0, v1, p1, p2, p3}, Ln1/b;->x(Ljava/lang/String;[BII)V

    return-void
.end method

.method public Y1(Ly/b;II)V
    .locals 2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

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

.method public final varargs Y2([I)V
    .locals 8

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    .line 2
    new-array v1, v0, [B

    const/16 v2, 0x55

    const/4 v3, 0x0

    .line 3
    aput-byte v2, v1, v3

    const/16 v2, -0x56

    const/4 v4, 0x1

    .line 4
    aput-byte v2, v1, v4

    move v2, v3

    .line 5
    :goto_0
    array-length v5, p1

    const/4 v6, 0x2

    if-ge v2, v5, :cond_0

    add-int/2addr v6, v2

    .line 6
    aget v5, p1, v2

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    .line 7
    aput-byte v3, v1, v2

    :goto_1
    if-ge v6, v2, :cond_1

    .line 8
    aget-byte v5, v1, v2

    aget-byte v7, v1, v6

    add-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " server send dlpp cmds = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "dlpp"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    sget-object v2, Lz/a;->f:Lo1/e0;

    invoke-virtual {v2, v1}, Lo1/e0;->i([B)V

    .line 11
    aget p1, p1, v3

    const/16 v2, 0x3f

    if-ne p1, v2, :cond_2

    .line 12
    sput v4, Lc1/n;->j:I

    .line 13
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v2, p0, Lc1/n;->i:Ljava/lang/Runnable;

    invoke-static {p1, v2}, Lo1/j;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 14
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object p1

    iget-object v2, p0, Lc1/n;->i:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    invoke-static {p1, v2, v4, v5}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "00000  sendCmd  standby_time = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lc1/n;->j:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\u53d1\u9001 \u6570\u636e \uff1a"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1, v3, v0}, Ln1/b;->x(Ljava/lang/String;[BII)V

    :cond_2
    return-void
.end method

.method public Z0(I[I[F[Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "CMD   cmdCode"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "dlpp"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lc1/n;->Y2([I)V

    :cond_0
    return-void
.end method

.method public b([B)V
    .locals 8

    if-eqz p1, :cond_e

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    array-length v1, p1

    const-string v2, "\u670d\u52a1\u6536\u5230\u76d2\u5b50\u6570\u636e   **  "

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Ln1/b;->x(Ljava/lang/String;[BII)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " server recv dlpp data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dlpp"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lc1/n;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/16 v1, 0x400

    if-le v0, v1, :cond_1

    .line 5
    iput v3, p0, Lc1/n;->d:I

    .line 6
    iput v3, p0, Lc1/n;->e:I

    .line 7
    iput v3, p0, Lc1/n;->f:I

    .line 8
    :cond_1
    iget-object v0, p0, Lc1/n;->b:[B

    iget v1, p0, Lc1/n;->d:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v0, p0, Lc1/n;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lc1/n;->d:I

    .line 10
    iget p1, p0, Lc1/n;->f:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_2

    return-void

    .line 11
    :cond_2
    iget-object p1, p0, Lc1/n;->b:[B

    aget-byte p1, p1, v3

    move v0, v2

    .line 12
    :goto_0
    iget v4, p0, Lc1/n;->f:I

    if-ge v0, v4, :cond_3

    .line 13
    iget-object v4, p0, Lc1/n;->b:[B

    aget-byte v4, v4, v0

    add-int/2addr p1, v4

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object v0, p0, Lc1/n;->b:[B

    aget-byte v5, v0, v4

    if-ne p1, v5, :cond_4

    const/4 p1, 0x4

    sub-int/2addr v4, p1

    .line 15
    invoke-virtual {p0, v0, p1, v4}, Lc1/n;->X2([BII)V

    .line 16
    iget p1, p0, Lc1/n;->f:I

    add-int/2addr p1, v2

    iput p1, p0, Lc1/n;->e:I

    goto :goto_1

    .line 17
    :cond_4
    iput v1, p0, Lc1/n;->e:I

    .line 18
    :goto_1
    iput v3, p0, Lc1/n;->f:I

    .line 19
    :cond_5
    iget p1, p0, Lc1/n;->d:I

    sub-int/2addr p1, v1

    :goto_2
    iget v0, p0, Lc1/n;->e:I

    if-ge v0, p1, :cond_b

    .line 20
    iget-object v4, p0, Lc1/n;->b:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x55

    if-ne v5, v6, :cond_a

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, v4, v5

    const/16 v6, -0x56

    if-ne v5, v6, :cond_a

    const/16 v5, 0x8

    .line 21
    iput v5, p0, Lc1/n;->f:I

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    .line 22
    iput v5, p0, Lc1/n;->f:I

    .line 23
    iget v6, p0, Lc1/n;->d:I

    if-lt v5, v6, :cond_6

    sub-int/2addr v5, v0

    .line 24
    iput v5, p0, Lc1/n;->f:I

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, 0x2

    .line 25
    aget-byte v4, v4, v5

    add-int/lit8 v0, v0, 0x3

    .line 26
    :goto_3
    iget v5, p0, Lc1/n;->f:I

    if-ge v0, v5, :cond_7

    .line 27
    iget-object v5, p0, Lc1/n;->b:[B

    aget-byte v5, v5, v0

    add-int/2addr v4, v5

    int-to-byte v4, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 28
    :cond_7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checksum :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,  DATA[mChecksumIndex] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lc1/n;->b:[B

    iget v7, p0, Lc1/n;->f:I

    aget-byte v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ln1/b;->s(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lc1/n;->b:[B

    iget v5, p0, Lc1/n;->f:I

    aget-byte v6, v0, v5

    if-ne v4, v6, :cond_8

    .line 30
    iget v4, p0, Lc1/n;->e:I

    add-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v4

    sub-int/2addr v5, v1

    invoke-virtual {p0, v0, v6, v5}, Lc1/n;->X2([BII)V

    .line 31
    iget v0, p0, Lc1/n;->f:I

    iput v0, p0, Lc1/n;->e:I

    .line 32
    sget v0, Lc1/n;->j:I

    if-lez v0, :cond_9

    .line 33
    sput v3, Lc1/n;->j:I

    goto :goto_4

    .line 34
    :cond_8
    iget v0, p0, Lc1/n;->e:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc1/n;->e:I

    .line 35
    :cond_9
    :goto_4
    iput v3, p0, Lc1/n;->f:I

    .line 36
    :cond_a
    iget v0, p0, Lc1/n;->e:I

    add-int/2addr v0, v2

    iput v0, p0, Lc1/n;->e:I

    goto/16 :goto_2

    :cond_b
    :goto_5
    if-eqz v0, :cond_d

    .line 37
    iget p1, p0, Lc1/n;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Lc1/n;->d:I

    if-eqz p1, :cond_c

    .line 38
    iget-object v1, p0, Lc1/n;->b:[B

    invoke-static {v1, v0, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    :cond_c
    iput v3, p0, Lc1/n;->e:I

    :cond_d
    return-void

    :cond_e
    :goto_6
    const-wide/16 v0, 0x64

    .line 40
    invoke-static {v0, v1}, La/i;->a0(J)V

    return-void
.end method

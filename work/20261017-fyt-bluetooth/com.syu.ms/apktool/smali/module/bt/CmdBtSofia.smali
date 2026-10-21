.class public Lmodule/bt/CmdBtSofia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh0/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/bt/CmdBtSofia$d;,
        Lmodule/bt/CmdBtSofia$mNetworkChangeListener;
    }
.end annotation


# static fields
.field public static h:Ljava/lang/String; = ""

.field public static i:Z = false

.field public static j:I = -0x1


# instance fields
.field public a:Lo1/g0;

.field public b:Ld0/a;

.field public c:Z

.field public d:Ljava/lang/Runnable;

.field public e:Ljava/lang/Runnable;

.field public f:I

.field public g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo1/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo1/g0;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lmodule/bt/CmdBtSofia;->a:Lo1/g0;

    .line 3
    new-instance v0, Lmodule/bt/CmdBtSofia$d;

    invoke-direct {v0, p0}, Lmodule/bt/CmdBtSofia$d;-><init>(Lmodule/bt/CmdBtSofia;)V

    iput-object v0, p0, Lmodule/bt/CmdBtSofia;->b:Ld0/a;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lmodule/bt/CmdBtSofia;->c:Z

    .line 5
    new-instance v0, Lmodule/bt/CmdBtSofia$a;

    invoke-direct {v0, p0}, Lmodule/bt/CmdBtSofia$a;-><init>(Lmodule/bt/CmdBtSofia;)V

    iput-object v0, p0, Lmodule/bt/CmdBtSofia;->d:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lmodule/bt/CmdBtSofia$b;

    invoke-direct {v0, p0}, Lmodule/bt/CmdBtSofia$b;-><init>(Lmodule/bt/CmdBtSofia;)V

    iput-object v0, p0, Lmodule/bt/CmdBtSofia;->e:Ljava/lang/Runnable;

    .line 7
    new-instance v0, Lmodule/bt/CmdBtSofia$c;

    invoke-direct {v0, p0}, Lmodule/bt/CmdBtSofia$c;-><init>(Lmodule/bt/CmdBtSofia;)V

    iput-object v0, p0, Lmodule/bt/CmdBtSofia;->g:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic R(Lmodule/bt/CmdBtSofia;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lmodule/bt/CmdBtSofia;->c:Z

    return p1
.end method

.method public static synthetic X(Lmodule/bt/CmdBtSofia;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->g0(I)V

    return-void
.end method

.method public static synthetic Y(Lmodule/bt/CmdBtSofia;)Lo1/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/bt/CmdBtSofia;->a:Lo1/g0;

    return-object p0
.end method

.method public static synthetic Z(Lmodule/bt/CmdBtSofia;)I
    .locals 0

    .line 1
    iget p0, p0, Lmodule/bt/CmdBtSofia;->f:I

    return p0
.end method

.method public static synthetic a0(Lmodule/bt/CmdBtSofia;I)I
    .locals 0

    .line 1
    iput p1, p0, Lmodule/bt/CmdBtSofia;->f:I

    return p1
.end method

.method public static synthetic b0(Lmodule/bt/CmdBtSofia;)I
    .locals 2

    .line 1
    iget v0, p0, Lmodule/bt/CmdBtSofia;->f:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lmodule/bt/CmdBtSofia;->f:I

    return v0
.end method

.method public static synthetic c0()Z
    .locals 1

    .line 1
    sget-boolean v0, Lmodule/bt/CmdBtSofia;->i:Z

    return v0
.end method

.method public static synthetic d0(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lmodule/bt/CmdBtSofia;->i:Z

    return p0
.end method

.method public static synthetic e0()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lmodule/bt/CmdBtSofia;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic f0(Lmodule/bt/CmdBtSofia;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lmodule/bt/CmdBtSofia;->g:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 5

    const-string v0, "0"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "persist.audio.mic.senstivity"

    if-eqz v1, :cond_1

    .line 2
    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {v3, v0}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {v2}, Lh0/e;->G(I)V

    goto :goto_0

    :cond_1
    const-string v1, "1"

    .line 5
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-static {v3, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 7
    invoke-static {v3, v1}, La/i;->Z(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {v0}, Lh0/e;->G(I)V

    goto :goto_0

    :cond_3
    const-string v2, "2"

    .line 9
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    sget p1, Lh0/c;->S:I

    if-nez p1, :cond_4

    .line 11
    invoke-virtual {p0, v1}, Lmodule/bt/CmdBtSofia;->A(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_4
    invoke-virtual {p0, v0}, Lmodule/bt/CmdBtSofia;->A(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public B()V
    .locals 0

    return-void
.end method

.method public C(I)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 1
    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    sget-object p1, Lh0/c;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public D(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x15

    invoke-virtual {v0, v1, p1}, Ly/g;->N2(ILjava/lang/String;)V

    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public F()V
    .locals 0

    return-void
.end method

.method public G()V
    .locals 0

    return-void
.end method

.method public H(I)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public I(I)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public J(I)V
    .locals 0

    return-void
.end method

.method public K(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public L(I)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public M()V
    .locals 0

    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Ly/g;->N2(ILjava/lang/String;)V

    return-void
.end method

.method public O()V
    .locals 0

    return-void
.end method

.method public P(I)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    return-void
.end method

.method public Q()V
    .locals 0

    return-void
.end method

.method public S()V
    .locals 0

    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public U(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Ly/g;->N2(ILjava/lang/String;)V

    return-void
.end method

.method public V()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public W(I)V
    .locals 0

    return-void
.end method

.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmodule/bt/CmdBtSofia;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->a()V

    .line 2
    iget-object v0, p0, Lmodule/bt/CmdBtSofia;->a:Lo1/g0;

    sget v1, Lh0/c;->R:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo1/g0;->b(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lmodule/bt/CmdBtSofia;->x(I)V

    .line 3
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v0

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->b:Ld0/a;

    invoke-virtual {v0, v1}, Ld0/b;->e(Ld0/a;)V

    .line 4
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v0

    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Ld0/b;->f(Landroid/content/Context;)V

    .line 5
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->d:Ljava/lang/Runnable;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    :try_start_0
    invoke-static {}, La/f;->q()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh0/e;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "persist.audio.mic.senstivity"

    .line 9
    invoke-static {v0, v2}, La/i;->k(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lh0/e;->G(I)V

    .line 10
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 11
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Ld0/b;->h()Ld0/b;

    move-result-object v0

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->b:Ld0/a;

    invoke-virtual {v0, v1}, Ld0/b;->j(Ld0/a;)V

    .line 2
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lu0/c;->c:Lo1/y;

    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lmodule/bt/CmdBtSofia;->a:Lo1/g0;

    invoke-virtual {v0}, Lo1/g0;->j()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lh0/e;->q(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Ly/g;->N2(ILjava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    .line 2
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    sput-object v0, Lmodule/bt/CmdBtSofia;->h:Ljava/lang/String;

    .line 3
    sget v0, Lh0/c;->G:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/bt/CmdBtSofia;->g:Ljava/lang/Runnable;

    monitor-enter v0

    .line 5
    :try_start_0
    iget v2, p0, Lmodule/bt/CmdBtSofia;->f:I

    if-gtz v2, :cond_0

    .line 6
    iput v1, p0, Lmodule/bt/CmdBtSofia;->f:I

    .line 7
    iget-object v1, p0, Lmodule/bt/CmdBtSofia;->g:Ljava/lang/Runnable;

    invoke-static {v1}, Lh0/e;->d(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    .line 8
    sput-boolean v1, Lmodule/bt/CmdBtSofia;->i:Z

    .line 9
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Ly/g;->N2(ILjava/lang/String;)V

    return-void
.end method

.method public final g0(I)V
    .locals 2

    .line 1
    sget v0, Lmodule/bt/CmdBtSofia;->j:I

    if-eq v0, p1, :cond_0

    .line 2
    sput p1, Lmodule/bt/CmdBtSofia;->j:I

    .line 3
    invoke-static {}, Lg/e;->g()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p1}, Ly/g;->L2(II)V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 2

    const/4 v0, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/16 p1, 0x23

    .line 1
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto/16 :goto_1

    :pswitch_1
    const/16 p1, 0x2a

    .line 2
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto/16 :goto_1

    :pswitch_2
    const/16 p1, 0x2b

    .line 3
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto/16 :goto_1

    :pswitch_3
    const/16 p1, 0x39

    .line 4
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto/16 :goto_1

    :pswitch_4
    const/16 p1, 0x38

    .line 5
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto/16 :goto_1

    :pswitch_5
    const/16 p1, 0x37

    .line 6
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_6
    const/16 p1, 0x36

    .line 7
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_7
    const/16 p1, 0x35

    .line 8
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_8
    const/16 p1, 0x34

    .line 9
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_9
    const/16 p1, 0x33

    .line 10
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_a
    const/16 p1, 0x32

    .line 11
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_b
    const/16 p1, 0x31

    .line 12
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    :pswitch_c
    const/16 p1, 0x30

    .line 13
    invoke-virtual {p0, p1}, Lmodule/bt/CmdBtSofia;->h0(C)V

    goto :goto_1

    .line 14
    :pswitch_d
    sget p1, Lh0/c;->E:I

    if-ne p1, v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lmodule/bt/CmdBtSofia;->z()V

    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p0}, Lmodule/bt/CmdBtSofia;->e()V

    goto :goto_1

    .line 17
    :pswitch_e
    sget p1, Lh0/c;->E:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 18
    sget-object p1, Lh0/c;->h:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    sget-object p1, Lh0/c;->c:Ly/g;

    const/4 v0, 0x7

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ly/g;->N2(ILjava/lang/String;)V

    goto :goto_1

    .line 20
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmodule/bt/CmdBtSofia;->T()V

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    .line 21
    invoke-virtual {p0}, Lmodule/bt/CmdBtSofia;->n()V

    :cond_4
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final h0(C)V
    .locals 5

    .line 1
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    sput-object v1, Lh0/c;->h:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x400

    if-ne v0, v2, :cond_1

    .line 4
    sput-object v1, Lh0/c;->h:Ljava/lang/String;

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lh0/c;->h:Ljava/lang/String;

    const/16 v2, 0x8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 6
    invoke-static {v2, v3}, Lh0/e;->Y(I[Ljava/lang/String;)V

    .line 7
    sget v0, Lh0/c;->E:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    .line 8
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v2, 0x1d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ly/g;->N2(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public q(I)V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Ly/g;->N2(ILjava/lang/String;)V

    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

.method public x(I)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    .line 1
    sget p1, Lh0/c;->Q:I

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 2
    :cond_2
    :goto_0
    sget v0, Lh0/c;->Q:I

    if-eq v0, p1, :cond_3

    .line 3
    sput p1, Lh0/c;->Q:I

    const/16 v0, 0x1f

    new-array v1, v1, [I

    aput p1, v1, v2

    .line 4
    invoke-static {v0, v1}, Lh0/e;->W(I[I)V

    .line 5
    iget-object v0, p0, Lmodule/bt/CmdBtSofia;->a:Lo1/g0;

    invoke-virtual {v0, v2, p1}, Lo1/g0;->g(II)V

    .line 6
    sget-object p1, Lh0/c;->c:Ly/g;

    const/16 v0, 0x1e

    sget v1, Lh0/c;->Q:I

    invoke-virtual {p1, v0, v1}, Ly/g;->L2(II)V

    :cond_3
    return-void
.end method

.method public y(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    sget-object v0, Lh0/c;->c:Ly/g;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ly/g;->K2(I)V

    return-void
.end method

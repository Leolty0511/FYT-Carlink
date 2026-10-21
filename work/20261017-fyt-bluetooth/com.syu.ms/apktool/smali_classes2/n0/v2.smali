.class public Ln0/v2;
.super Ln0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln0/v2$g;
    }
.end annotation


# instance fields
.field public A:Landroid/content/ClipboardManager;

.field public B:Ln0/v2$g;

.field public C:Ljava/lang/Runnable;

.field public final D:Ljava/lang/Runnable;

.field public final E:Ljava/lang/Runnable;

.field public final F:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln0/a;-><init>()V

    .line 2
    new-instance v0, Ln0/v2$a;

    invoke-direct {v0, p0}, Ln0/v2$a;-><init>(Ln0/v2;)V

    iput-object v0, p0, Ln0/v2;->C:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ln0/v2$b;

    invoke-direct {v0, p0}, Ln0/v2$b;-><init>(Ln0/v2;)V

    iput-object v0, p0, Ln0/v2;->D:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ln0/v2$c;

    invoke-direct {v0, p0}, Ln0/v2$c;-><init>(Ln0/v2;)V

    iput-object v0, p0, Ln0/v2;->E:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Ln0/v2$d;

    invoke-direct {v0, p0}, Ln0/v2$d;-><init>(Ln0/v2;)V

    iput-object v0, p0, Ln0/v2;->F:Ljava/lang/Runnable;

    .line 6
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    iput-object v0, p0, Ln0/v2;->A:Landroid/content/ClipboardManager;

    return-void
.end method


# virtual methods
.method public C3()V
    .locals 2

    .line 1
    sget-object v0, Lu0/c;->k:Lo1/y;

    iget-object v1, p0, Ln0/v2;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Ln0/v2;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lz/c;->b:Lo1/y;

    iget-object v1, p0, Ln0/v2;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 4
    sget-object v0, Lz/c;->a:Lo1/y;

    iget-object v1, p0, Ln0/v2;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {p0}, Ln0/v2;->T3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Ln0/v2;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 7
    sget-object v0, Lw0/e;->c:Lo1/y;

    iget-object v1, p0, Ln0/v2;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    invoke-super {p0}, Ln0/c4;->C3()V

    return-void
.end method

.method public L3()V
    .locals 1

    const-string v0, "STL"

    .line 1
    sput-object v0, Ln0/j4;->c:Ljava/lang/String;

    const/16 v0, 0x100

    .line 2
    sput v0, Lm1/a;->d:I

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lu0/b;->h2:Z

    return-void
.end method

.method public T3()Z
    .locals 2

    .line 1
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.ava.car"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.ava.acessbilityapplication"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

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

.method public final U3()V
    .locals 3

    .line 1
    new-instance v0, Ln0/v2$g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln0/v2$g;-><init>(Ln0/v2;Ln0/v2$a;)V

    iput-object v0, p0, Ln0/v2;->B:Ln0/v2$g;

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.syu.Turkey_Va"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    iget-object v2, p0, Ln0/v2;->B:Ln0/v2$g;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public X2()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/a;->X2()V

    .line 2
    invoke-virtual {p0}, Ln0/v2;->T3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ln0/v2;->U3()V

    .line 4
    invoke-static {}, Lc/f;->b()Lc/f;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Ln0/v2$e;

    invoke-direct {v2, p0}, Ln0/v2$e;-><init>(Ln0/v2;)V

    invoke-virtual {v0, v1, v2}, Lc/f;->h(ILc/f$a;)V

    .line 5
    sget-object v0, Lw0/e;->a:Lo1/y;

    iget-object v1, p0, Ln0/v2;->C:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 6
    sget-object v0, Lw0/e;->c:Lo1/y;

    iget-object v1, p0, Ln0/v2;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    :cond_0
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x24d

    new-instance v2, Ln0/v2$f;

    invoke-direct {v2, p0}, Ln0/v2$f;-><init>(Ln0/v2;)V

    invoke-virtual {v0, v1, v2}, Lc/e;->i(ILc/d;)V

    return-void
.end method

.method public j3()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln0/a;->j3()V

    .line 2
    sget-object v0, Lu0/c;->k:Lo1/y;

    iget-object v1, p0, Ln0/v2;->F:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Ln0/v2;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 4
    sget-object v0, Lz/c;->b:Lo1/y;

    iget-object v1, p0, Ln0/v2;->D:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 5
    sget-object v0, Lz/c;->a:Lo1/y;

    iget-object v1, p0, Ln0/v2;->E:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.class public Lplugins/DabDev;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static g:Lplugins/DabDev;


# instance fields
.field public a:I

.field public b:I

.field public final c:Ljava/lang/Runnable;

.field public final d:Lc/d;

.field public e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lplugins/DabDev;->f:Ljava/util/ArrayList;

    const-string v1, "com.ex.dabplayer.pad"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v0, Lplugins/DabDev;->f:Ljava/util/ArrayList;

    const-string v1, "com.ex.yhxdabw8.pad"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v0, Lplugins/DabDev;->f:Ljava/util/ArrayList;

    const-string v1, "com.ex.dabplayer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v0, Lplugins/DabDev;->f:Ljava/util/ArrayList;

    const-string v1, "com.zoulou.dab"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/16 v0, 0x2d

    .line 2
    iput v0, p0, Lplugins/DabDev;->a:I

    const/16 v0, 0x2e

    .line 3
    iput v0, p0, Lplugins/DabDev;->b:I

    .line 4
    new-instance v0, Lplugins/DabDev$a;

    invoke-direct {v0, p0}, Lplugins/DabDev$a;-><init>(Lplugins/DabDev;)V

    iput-object v0, p0, Lplugins/DabDev;->c:Ljava/lang/Runnable;

    .line 5
    new-instance v0, Lplugins/DabDev$b;

    invoke-direct {v0, p0}, Lplugins/DabDev$b;-><init>(Lplugins/DabDev;)V

    iput-object v0, p0, Lplugins/DabDev;->d:Lc/d;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lplugins/DabDev;->e:Z

    return-void
.end method

.method public static X()Lplugins/DabDev;
    .locals 1

    .line 1
    sget-object v0, Lplugins/DabDev;->g:Lplugins/DabDev;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lplugins/DabDev;

    invoke-direct {v0}, Lplugins/DabDev;-><init>()V

    sput-object v0, Lplugins/DabDev;->g:Lplugins/DabDev;

    .line 3
    :cond_0
    sget-object v0, Lplugins/DabDev;->g:Lplugins/DabDev;

    return-object v0
.end method

.method public static Y(Ljava/lang/String;)Z
    .locals 1

    .line 1
    sget-object v0, Lplugins/DabDev;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static Z()Z
    .locals 3

    .line 1
    sget-object v0, Lplugins/DabDev;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    invoke-static {v2, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return v1
.end method


# virtual methods
.method public a0(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.ex.dabplayer.pad"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.ex.yhxdabw8.pad"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lplugins/DabDev;->e:Z

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    sget-object v1, La/b;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Lu0/c;->m:Lo1/y;

    iget-object v1, p0, Lplugins/DabDev;->c:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 7
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lplugins/DabDev;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 8
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x57

    iget-object v1, p0, Lplugins/DabDev;->d:Lc/d;

    invoke-virtual {p1, v0, v1}, Lc/e;->i(ILc/d;)V

    .line 9
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object p1

    const/16 v0, 0x58

    iget-object v1, p0, Lplugins/DabDev;->d:Lc/d;

    invoke-virtual {p1, v0, v1}, Lc/e;->i(ILc/d;)V

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    const-string p1, " "

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string v0, "com.ex.dabplayer.pad"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.ex.yhxdabw8.pad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "state"

    .line 4
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "enter"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lu0/b;->c:Lu0/h;

    const/4 p2, 0x4

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    :cond_2
    return-void
.end method

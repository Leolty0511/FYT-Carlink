.class public Lplugins/BusKtv;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# static fields
.field public static g:Z = false

.field public static h:Lplugins/BusKtv;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lplugins/BusKtv;

    invoke-direct {v0}, Lplugins/BusKtv;-><init>()V

    sput-object v0, Lplugins/BusKtv;->h:Lplugins/BusKtv;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.action.ACTION_OPEN_RADIO"

    .line 2
    iput-object v0, p0, Lplugins/BusKtv;->a:Ljava/lang/String;

    const-string v0, "com.action.ACTION_ClOSE_RADIO"

    .line 3
    iput-object v0, p0, Lplugins/BusKtv;->b:Ljava/lang/String;

    const-string v0, "com.action.ACTION_SET_RADIO_FREQUENCE"

    .line 4
    iput-object v0, p0, Lplugins/BusKtv;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lplugins/BusKtv;->d:Z

    .line 6
    iput-boolean v0, p0, Lplugins/BusKtv;->e:Z

    .line 7
    iput v0, p0, Lplugins/BusKtv;->f:I

    .line 8
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.nwd.radio.my"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    .line 10
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const-string v1, "com.aske.carktv.xz"

    invoke-static {v0, v1}, Lo1/u;->k0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Ly0/j;->l3(Ljava/lang/String;)V

    .line 12
    sget-object v0, La/b;->d:Lo1/d;

    invoke-virtual {v0, v1, p0}, Lo1/d;->a(Ljava/lang/Comparable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static X()Lplugins/BusKtv;
    .locals 1

    .line 1
    sget-object v0, Lplugins/BusKtv;->h:Lplugins/BusKtv;

    return-object v0
.end method


# virtual methods
.method public R(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lplugins/BusKtv;->e:Z

    if-eq v0, p1, :cond_2

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lu0/b;->D:I

    if-ne v0, v1, :cond_0

    sget v0, Lu0/b;->C:I

    iget v1, p0, Lplugins/BusKtv;->f:I

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lplugins/BusKtv;->g:Z

    .line 5
    iput v0, p0, Lplugins/BusKtv;->f:I

    goto :goto_0

    .line 6
    :cond_1
    sget v0, Lu0/b;->D:I

    iput v0, p0, Lplugins/BusKtv;->f:I

    .line 7
    sput-boolean v1, Lplugins/BusKtv;->g:Z

    .line 8
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    .line 9
    sget-object v0, Lw0/d;->b:Lw0/g;

    const/16 v2, 0x21fc

    invoke-interface {v0, v1, v2}, Lw0/g;->l(II)V

    .line 10
    :goto_0
    iput-boolean p1, p0, Lplugins/BusKtv;->e:Z

    :cond_2
    return-void
.end method

.method public Y(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lplugins/BusKtv;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.action.ACTION_OPEN_RADIO"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.action.ACTION_SET_RADIO_FREQUENCE"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lplugins/BusKtv;->d:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.action.ACTION_OPEN_RADIO"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const-string v2, "extra_radio_frequence"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 3
    sget-boolean p1, Lplugins/BusKtv;->g:Z

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    sget p1, Lu0/b;->D:I

    iput p1, p0, Lplugins/BusKtv;->f:I

    .line 5
    sput-boolean v3, Lplugins/BusKtv;->g:Z

    .line 6
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v3}, Lu0/h;->c(I)V

    .line 7
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    .line 8
    sget-object p2, Lw0/d;->b:Lw0/g;

    invoke-interface {p2, v3, p1}, Lw0/g;->l(II)V

    goto :goto_0

    :cond_1
    const-string v0, "com.action.ACTION_SET_RADIO_FREQUENCE"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    sget-boolean p1, Lplugins/BusKtv;->g:Z

    if-eqz p1, :cond_2

    return-void

    .line 11
    :cond_2
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_5

    .line 12
    sget-object p2, Lw0/d;->b:Lw0/g;

    invoke-interface {p2, v3, p1}, Lw0/g;->l(II)V

    goto :goto_0

    :cond_3
    const-string p2, "com.action.ACTION_ClOSE_RADIO"

    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 14
    sget p1, Lu0/b;->D:I

    if-ne p1, v3, :cond_4

    sget p1, Lu0/b;->C:I

    iget p2, p0, Lplugins/BusKtv;->f:I

    if-ne p1, p2, :cond_4

    .line 15
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    :cond_4
    const/4 p1, 0x0

    .line 16
    sput-boolean p1, Lplugins/BusKtv;->g:Z

    .line 17
    iput p1, p0, Lplugins/BusKtv;->f:I

    :cond_5
    :goto_0
    return-void
.end method

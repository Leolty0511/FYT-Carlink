.class public Lplugins/Wenet;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static d:Lplugins/Wenet;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "com.wedrive.android.action.WENET_SHOW"

    .line 2
    iput-object v0, p0, Lplugins/Wenet;->a:Ljava/lang/String;

    const-string v0, "com.wedrive.android.action.WENET_HIDE"

    .line 3
    iput-object v0, p0, Lplugins/Wenet;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lplugins/Wenet;->c:Z

    return-void
.end method

.method public static Y()Lplugins/Wenet;
    .locals 1

    .line 1
    sget-object v0, Lplugins/Wenet;->d:Lplugins/Wenet;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lplugins/Wenet;

    invoke-direct {v0}, Lplugins/Wenet;-><init>()V

    sput-object v0, Lplugins/Wenet;->d:Lplugins/Wenet;

    .line 3
    :cond_0
    sget-object v0, Lplugins/Wenet;->d:Lplugins/Wenet;

    return-object v0
.end method


# virtual methods
.method public X(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lplugins/Wenet;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public Z(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.wedrive.android.action.WENET_SHOW"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.wedrive.android.action.WENET_HIDE"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lplugins/Wenet;->c:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    const-string p1, " "

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "com.wedrive.android.action.WENET_SHOW"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    sget-object p1, Lu0/b;->c:Lu0/h;

    const/4 p2, 0x3

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    goto :goto_1

    :cond_1
    const-string p2, "com.wedrive.android.action.WENET_HIDE"

    .line 4
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    sget-object p1, Lu0/b;->c:Lu0/h;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    :cond_2
    :goto_1
    return-void
.end method

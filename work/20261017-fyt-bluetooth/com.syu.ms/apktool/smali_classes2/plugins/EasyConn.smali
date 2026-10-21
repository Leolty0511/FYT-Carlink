.class public Lplugins/EasyConn;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static i:Lplugins/EasyConn;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/lang/Runnable;

.field public h:Lo1/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lplugins/EasyConn;->a:Z

    .line 3
    iput-boolean v0, p0, Lplugins/EasyConn;->b:Z

    .line 4
    iput-boolean v0, p0, Lplugins/EasyConn;->c:Z

    .line 5
    iput-boolean v0, p0, Lplugins/EasyConn;->d:Z

    .line 6
    iput-boolean v0, p0, Lplugins/EasyConn;->e:Z

    .line 7
    new-instance v0, Lplugins/EasyConn$a;

    invoke-direct {v0, p0}, Lplugins/EasyConn$a;-><init>(Lplugins/EasyConn;)V

    iput-object v0, p0, Lplugins/EasyConn;->f:Ljava/lang/Runnable;

    .line 8
    new-instance v0, Lplugins/EasyConn$b;

    invoke-direct {v0, p0}, Lplugins/EasyConn$b;-><init>(Lplugins/EasyConn;)V

    iput-object v0, p0, Lplugins/EasyConn;->g:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lplugins/EasyConn$c;

    invoke-direct {v0, p0}, Lplugins/EasyConn$c;-><init>(Lplugins/EasyConn;)V

    iput-object v0, p0, Lplugins/EasyConn;->h:Lo1/p;

    return-void
.end method

.method public static synthetic X(Lplugins/EasyConn;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lplugins/EasyConn;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic Y(Lplugins/EasyConn;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lplugins/EasyConn;->e0(Z)V

    return-void
.end method

.method public static Z()Lplugins/EasyConn;
    .locals 1

    .line 1
    sget-object v0, Lplugins/EasyConn;->i:Lplugins/EasyConn;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lplugins/EasyConn;

    invoke-direct {v0}, Lplugins/EasyConn;-><init>()V

    sput-object v0, Lplugins/EasyConn;->i:Lplugins/EasyConn;

    .line 3
    :cond_0
    sget-object v0, Lplugins/EasyConn;->i:Lplugins/EasyConn;

    return-object v0
.end method


# virtual methods
.method public final a0(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "phoneNum"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneName"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "bluetoothName"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    sget-object p1, Lh0/c;->b:Lh0/f;

    if-eqz p1, :cond_0

    invoke-static {v0}, Lo1/s0;->t(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v0}, Lh0/f;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b0(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lu0/c;->a:Lo1/y;

    iget-object v1, p0, Lplugins/EasyConn;->f:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lu0/c;->f:Lo1/y;

    iget-object v1, p0, Lplugins/EasyConn;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Le/e;->c:Lo1/z;

    iget-object v1, p0, Lplugins/EasyConn;->h:Lo1/p;

    invoke-virtual {v0, v1}, Lo1/z;->a(Lo1/p;)V

    .line 4
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "net.easyconn.app.open"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.quit"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.link.in"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.link.out"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.resume"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.app.pause"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.bt.checkstatus"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.a2dp.acquire"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.a2dp.release"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.mirror.in"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.mirror.out"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.resume"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.iphone.pause"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.bluetooth.call"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "net.easyconn.bt.setting"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    iput-boolean v2, p0, Lplugins/EasyConn;->d:Z

    .line 21
    invoke-static {}, Ly0/j;->a3()Ly0/j;

    move-result-object p1

    const-string v0, "net.easyconn"

    invoke-virtual {p1, v0}, Ly0/j;->l3(Ljava/lang/String;)V

    .line 22
    new-instance p1, Lplugins/EasyConn$d;

    invoke-direct {p1, p0}, Lplugins/EasyConn$d;-><init>(Lplugins/EasyConn;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p1, v0, v1}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public final c0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " send action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyConn-"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "net.easyconn"

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public d0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lplugins/EasyConn;->a:Z

    return-void
.end method

.method public final e0(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lplugins/EasyConn;->b:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lplugins/EasyConn;->b:Z

    const/4 v0, 0x3

    if-eqz p1, :cond_1

    .line 3
    sget v1, Lu0/b;->D:I

    if-eq v1, v0, :cond_1

    .line 4
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 5
    sget p1, Lu0/b;->D:I

    if-ne p1, v0, :cond_2

    .line 6
    sget-object p1, Lu0/b;->c:Lu0/h;

    const/4 v0, -0x1

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f0()V
    .locals 2

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "net.easyconn.bt.connected"

    .line 2
    invoke-virtual {p0, v0}, Lplugins/EasyConn;->c0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "net.easyconn.bt.opened"

    .line 3
    invoke-virtual {p0, v0}, Lplugins/EasyConn;->c0(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final g0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lplugins/EasyConn;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lplugins/EasyConn;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lplugins/EasyConn;->b:Z

    if-nez v0, :cond_1

    sget v0, Lu0/b;->D:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 3
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 4
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lu0/b;->c:Lu0/h;

    invoke-interface {v0, v1}, Lu0/h;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EasyConn-"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "net.easyconn.bluetooth.call"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "net.easyconn.link.in"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "net.easyconn.iphone.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "net.easyconn.a2dp.acquire"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "net.easyconn.link.out"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "net.easyconn.app.resume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "net.easyconn.app.quit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "net.easyconn.bt.setting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "net.easyconn.a2dp.release"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "net.easyconn.bt.checkstatus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v3, v2

    goto :goto_0

    :sswitch_a
    const-string v0, "net.easyconn.app.pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 4
    :pswitch_0
    invoke-virtual {p0, p2}, Lplugins/EasyConn;->a0(Landroid/content/Intent;)V

    goto :goto_1

    .line 5
    :pswitch_1
    iput-boolean v2, p0, Lplugins/EasyConn;->c:Z

    goto :goto_1

    .line 6
    :pswitch_2
    invoke-virtual {p0}, Lplugins/EasyConn;->g0()V

    goto :goto_1

    .line 7
    :pswitch_3
    invoke-virtual {p0, v2}, Lplugins/EasyConn;->e0(Z)V

    goto :goto_1

    .line 8
    :pswitch_4
    iput-boolean v2, p0, Lplugins/EasyConn;->e:Z

    .line 9
    sget p1, Lh0/c;->N:I

    if-ne p1, v2, :cond_b

    iget-boolean p1, p0, Lplugins/EasyConn;->b:Z

    if-eqz p1, :cond_b

    .line 10
    invoke-virtual {p0, v2}, Lplugins/EasyConn;->e0(Z)V

    goto :goto_1

    .line 11
    :pswitch_5
    iput-boolean v1, p0, Lplugins/EasyConn;->c:Z

    .line 12
    invoke-virtual {p0, v1}, Lplugins/EasyConn;->e0(Z)V

    goto :goto_1

    .line 13
    :pswitch_6
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.syu.bt.act.ActBtPairDevices"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.syu.bt"

    .line 14
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    invoke-static {p1}, Lo1/u;->e(Landroid/content/Intent;)I

    goto :goto_1

    .line 16
    :pswitch_7
    invoke-virtual {p0, v1}, Lplugins/EasyConn;->e0(Z)V

    goto :goto_1

    .line 17
    :pswitch_8
    invoke-virtual {p0}, Lplugins/EasyConn;->f0()V

    goto :goto_1

    .line 18
    :pswitch_9
    iput-boolean v1, p0, Lplugins/EasyConn;->e:Z

    :cond_b
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x59b35be6 -> :sswitch_a
        -0x43fe5633 -> :sswitch_9
        -0x38d5a27b -> :sswitch_8
        -0x2f16b55d -> :sswitch_7
        0x26664fab -> :sswitch_6
        0x26e90e89 -> :sswitch_5
        0x2a9afd09 -> :sswitch_4
        0x40c49654 -> :sswitch_3
        0x4603f747 -> :sswitch_2
        0x64789c0a -> :sswitch_1
        0x761c700d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

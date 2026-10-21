.class public Lapp/Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lapp/Receiver$b;
    }
.end annotation


# static fields
.field public static final b:Lo1/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo1/c<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:I


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lo1/c;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lo1/c;-><init>(I)V

    sput-object v0, Lapp/Receiver;->b:Lo1/c;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const/4 v2, 0x2

    .line 2
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "android.intent.action.SCREEN_ON"

    const/4 v3, 0x3

    .line 5
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "android.intent.action.SCREEN_OFF"

    const/16 v3, 0x67

    .line 6
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.carnet.vt.a2dp.start"

    const/4 v3, 0x5

    .line 7
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.carnet.vt.a2dp.stop"

    const/4 v4, 0x6

    .line 8
    invoke-virtual {v0, v1, v4}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.eryanet.a2dp.acquire"

    .line 9
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.eryanet.a2dp.release"

    .line 10
    invoke-virtual {v0, v1, v4}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.fyt.systemui.remove"

    const/4 v3, 0x7

    .line 11
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.autonavi.action.TELE_NAVIGATION"

    const/16 v3, 0x8

    .line 12
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.android.SYSOBD"

    const/16 v3, 0x9

    .line 13
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.android.ecar.send"

    const/16 v3, 0xa

    .line 14
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    const-string v1, "com.glsx.navi.voip"

    const/16 v3, 0xb

    .line 15
    invoke-virtual {v0, v1, v3}, Lo1/c;->f(Ljava/lang/Comparable;I)I

    .line 16
    sput v2, Lapp/Receiver;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lapp/Receiver;->a:Ljava/lang/String;

    return-void
.end method

.method public static X()V
    .locals 4

    .line 1
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 2
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lc0/a;->a:Z

    .line 4
    sget-object v1, Lc0/b;->a:Lo1/s;

    invoke-interface {v1, v0}, Lo1/s;->R(Z)V

    .line 5
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lapp/Receiver$a;

    invoke-direct {v1}, Lapp/Receiver$a;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static Y()V
    .locals 3

    .line 1
    sget-object v0, Lf/b;->d:Lf/b;

    iget-object v0, v0, Lf/b;->c:Lf/c;

    .line 2
    invoke-virtual {v0}, Lf/c;->h()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lc0/a;->a:Z

    .line 4
    sget-boolean v1, Lu0/b;->Z3:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "com.tima.carnet.vt"

    .line 5
    invoke-static {v1}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    sget-object v0, Lu0/b;->c:Lu0/h;

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lu0/h;->c(I)V

    .line 7
    sget-object v0, Lu0/b;->c:Lu0/h;

    instance-of v2, v0, Lu0/a;

    if-eqz v2, :cond_4

    .line 8
    check-cast v0, Lu0/a;

    invoke-virtual {v0, v1}, Lu0/a;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_2
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 10
    sget-object v1, Lu0/b;->c:Lu0/h;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lu0/h;->c(I)V

    .line 11
    :cond_3
    sget-object v1, Lc0/b;->a:Lo1/s;

    invoke-interface {v1, v0}, Lo1/s;->R(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static Z()V
    .locals 3

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.easyconn.bt.connected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.easyconn.bt.opened"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static a0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "HideCallUI"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Lh0/c;->k0:Z

    goto :goto_0

    :cond_1
    const-string v0, "BluetoothMakeCall"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 5
    sput-boolean p0, Lh0/c;->k0:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static b0(I)V
    .locals 1

    .line 1
    sget v0, Lapp/Receiver;->c:I

    if-eq v0, p0, :cond_1

    .line 2
    sput p0, Lapp/Receiver;->c:I

    if-eqz p0, :cond_0

    .line 3
    sget-object p0, Lu0/b;->c:Lu0/h;

    const/16 v0, 0x10

    invoke-interface {p0, v0}, Lu0/h;->c(I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lu0/b;->c:Lu0/h;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lu0/h;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static c0(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.eryanet.a2dp.acquire"

    .line 5
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.eryanet.a2dp.release"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.carnet.vt.a2dp.start"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.carnet.vt.a2dp.stop"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.fyt.systemui.remove"

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.SYSOBD"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.ecar.send"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.glsx.navi.voip"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zjinnova.zlink"

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.RADIOTAENTER"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.RADIOTAEXIT"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.autonavi.action.TELE_NAVIGATION"

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 19
    new-instance v1, Lapp/Receiver;

    invoke-direct {v1}, Lapp/Receiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 20
    invoke-static {}, La/f;->r()Landroid/os/PowerManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    invoke-static {p0}, Lu0/d;->k3(I)V

    return-void
.end method

.method public static d0(Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "pkg"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======================>>>>>   systemUiRemove pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C7729"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    new-instance v1, Lapp/Receiver$b;

    invoke-direct {v1, p0}, Lapp/Receiver$b;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lo1/j;->b(Landroid/os/Handler;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=======================>>>>>   action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C7729"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.RADIOTAENTER"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lg1/c;->b()Lg1/c;

    move-result-object p1

    invoke-virtual {p1}, Lg1/c;->f()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lapp/Receiver;->a:Ljava/lang/String;

    .line 5
    invoke-static {}, Lo1/u;->x0()V

    return-void

    :cond_0
    const-string v0, "android.intent.action.RADIOTAEXIT"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p1, p0, Lapp/Receiver;->a:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 8
    invoke-static {}, La/i;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {}, La/i;->A()V

    .line 10
    sget-object p1, Lu0/b;->c:Lu0/h;

    sget p2, Lu0/b;->C:I

    invoke-interface {p1, p2}, Lu0/h;->c(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object p1, p0, Lapp/Receiver;->a:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->g(Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 13
    sget-object p1, Lbase/Configure$Property;->T:Lbase/Configure$Property;

    invoke-virtual {p1, v1}, Lbase/Configure$Property;->d(I)I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 14
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 15
    invoke-static {}, Ly0/h;->M()V

    :cond_4
    return-void

    .line 16
    :cond_5
    sget-object v0, Lapp/Receiver;->b:Lo1/c;

    invoke-virtual {v0, p1, v1}, Lo1/c;->d(Ljava/lang/Comparable;I)I

    move-result p1

    const-string v0, "DBG"

    if-eqz p1, :cond_9

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/16 v0, 0x67

    if-eq p1, v0, :cond_7

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 17
    :pswitch_0
    sget p1, Lu0/b;->D:I

    const/4 p2, 0x3

    if-eq p1, p2, :cond_6

    const/16 p2, 0xa

    if-ne p1, p2, :cond_a

    .line 18
    :cond_6
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v2}, Lu0/h;->c(I)V

    goto :goto_1

    :pswitch_1
    const-string/jumbo p1, "status"

    .line 19
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lapp/Receiver;->b0(I)V

    goto :goto_1

    :pswitch_2
    const-string p1, "ecarSendKey"

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapp/Receiver;->a0(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string/jumbo p1, "sys.obd"

    const-string p2, "ddh"

    .line 21
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :pswitch_4
    invoke-static {}, Lo1/u;->t0()V

    goto :goto_1

    .line 23
    :pswitch_5
    invoke-static {p2}, Lapp/Receiver;->d0(Landroid/content/Intent;)V

    goto :goto_1

    .line 24
    :pswitch_6
    invoke-static {}, Lapp/Receiver;->Y()V

    goto :goto_1

    .line 25
    :pswitch_7
    invoke-static {}, Lapp/Receiver;->X()V

    goto :goto_1

    .line 26
    :pswitch_8
    invoke-static {}, Lapp/Receiver;->Z()V

    goto :goto_1

    .line 27
    :pswitch_9
    invoke-static {v1}, Lu0/d;->k3(I)V

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {v2}, Lu0/d;->k3(I)V

    goto :goto_1

    :cond_8
    const-string p1, "ACTION_MEDIA_UNMOUNTED"

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const-string p1, "ACTION_MEDIA_MOUNTED"

    .line 30
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
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

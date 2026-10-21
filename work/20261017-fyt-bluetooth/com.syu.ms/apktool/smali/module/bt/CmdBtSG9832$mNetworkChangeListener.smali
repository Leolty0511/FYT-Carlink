.class public Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/bt/CmdBtSG9832;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mNetworkChangeListener"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/bt/CmdBtSG9832;


# direct methods
.method public constructor <init>(Lmodule/bt/CmdBtSG9832;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_5

    .line 2
    sget-boolean p1, Lmodule/bt/CmdBtSG9832;->u:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo p1, "wifi_state"

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    if-eq p1, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_1
    sput v1, Lu0/b;->L3:I

    .line 5
    invoke-static {}, Ly0/h;->M()V

    :cond_2
    move v2, v0

    goto :goto_0

    .line 6
    :cond_3
    sput v1, Lu0/b;->L3:I

    .line 7
    invoke-static {}, Ly0/h;->M()V

    .line 8
    :goto_0
    sget p1, Lmodule/bt/CmdBtSG9832;->v:I

    if-nez p1, :cond_4

    .line 9
    iget-object p1, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {p1}, Lmodule/bt/CmdBtSG9832;->X(Lmodule/bt/CmdBtSG9832;)Z

    move-result p2

    iget-object v0, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {v0}, Lmodule/bt/CmdBtSG9832;->f0(Lmodule/bt/CmdBtSG9832;)Z

    move-result v0

    invoke-static {p1, p2, v0, v2}, Lmodule/bt/CmdBtSG9832;->Z(Lmodule/bt/CmdBtSG9832;ZZZ)V

    goto/16 :goto_5

    :cond_4
    if-ne p1, v0, :cond_d

    .line 10
    iget-object p1, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-virtual {p1}, Lmodule/bt/CmdBtSG9832;->k0()V

    goto/16 :goto_5

    .line 11
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 12
    sget-boolean p1, Lmodule/bt/CmdBtSG9832;->u:Z

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string p1, "networkInfo"

    .line 13
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 14
    check-cast p1, Landroid/net/NetworkInfo;

    .line 15
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    .line 16
    sget p2, Lmodule/bt/CmdBtSG9832;->v:I

    const v2, 0xffff

    if-nez p2, :cond_9

    .line 17
    iget-object p2, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {p2}, Lmodule/bt/CmdBtSG9832;->f0(Lmodule/bt/CmdBtSG9832;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 18
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq p1, p2, :cond_8

    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_7

    goto :goto_1

    .line 19
    :cond_7
    sput v1, Lu0/b;->L3:I

    goto :goto_2

    .line 20
    :cond_8
    :goto_1
    sput v2, Lu0/b;->L3:I

    .line 21
    :goto_2
    invoke-static {}, Ly0/h;->M()V

    goto :goto_5

    :cond_9
    if-ne p2, v0, :cond_d

    .line 22
    iget-object p2, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {p2}, Lmodule/bt/CmdBtSG9832;->g0(Lmodule/bt/CmdBtSG9832;)I

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-static {p2}, Lmodule/bt/CmdBtSG9832;->g0(Lmodule/bt/CmdBtSG9832;)I

    move-result p2

    const/4 v0, 0x6

    if-eq p2, v0, :cond_c

    .line 23
    sget-object p2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq p1, p2, :cond_b

    sget-object p2, Landroid/net/NetworkInfo$State;->DISCONNECTING:Landroid/net/NetworkInfo$State;

    if-ne p1, p2, :cond_a

    goto :goto_3

    .line 24
    :cond_a
    sput v1, Lu0/b;->L3:I

    goto :goto_4

    .line 25
    :cond_b
    :goto_3
    sput v2, Lu0/b;->L3:I

    .line 26
    :goto_4
    invoke-static {}, Ly0/h;->M()V

    .line 27
    :cond_c
    iget-object p1, p0, Lmodule/bt/CmdBtSG9832$mNetworkChangeListener;->a:Lmodule/bt/CmdBtSG9832;

    invoke-virtual {p1}, Lmodule/bt/CmdBtSG9832;->k0()V

    :cond_d
    :goto_5
    return-void
.end method

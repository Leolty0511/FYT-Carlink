.class public Landroid/net/DhcpStateMachine;
.super Lu/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;,
        Landroid/net/DhcpStateMachine$RunningState;,
        Landroid/net/DhcpStateMachine$WaitBeforeStartState;,
        Landroid/net/DhcpStateMachine$StoppedState;,
        Landroid/net/DhcpStateMachine$DefaultState;,
        Landroid/net/DhcpStateMachine$DhcpAction;
    }
.end annotation


# static fields
.field private static final ACTION_DHCP_RENEW:Ljava/lang/String; = "android.net.wifi.DHCP_RENEW"

.field private static final BASE:I = 0x30000

.field public static final CMD_ON_QUIT:I = 0x30006

.field public static final CMD_POST_DHCP_ACTION:I = 0x30005

.field public static final CMD_PRE_DHCP_ACTION:I = 0x30004

.field public static final CMD_PRE_DHCP_ACTION_COMPLETE:I = 0x30007

.field public static final CMD_RENEW_DHCP:I = 0x30003

.field public static final CMD_START_DHCP:I = 0x30001

.field public static final CMD_STOP_DHCP:I = 0x30002

.field private static final DBG:Z = false

.field public static final DHCP_FAILURE:I = 0x2

.field private static final DHCP_RENEW:I = 0x0

.field public static final DHCP_SUCCESS:I = 0x1

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "DhcpStateMachine"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "DHCP"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mController:Lu/m;

.field private mDefaultState:Lu/l;

.field private mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDhcpRenewalIntent:Landroid/app/PendingIntent;

.field private mDhcpResults:Landroid/net/DhcpResults;

.field private final mInterfaceName:Ljava/lang/String;

.field private mRegisteredForPreDhcpNotification:Z

.field private mRunningState:Lu/l;

.field private mStoppedState:Lu/l;

.field private mWaitBeforeRenewalState:Lu/l;

.field private mWaitBeforeStartState:Lu/l;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lu/m;Ljava/lang/String;)V
    .locals 2

    const-string v0, "DhcpStateMachine"

    .line 1
    invoke-direct {p0, v0}, Lu/m;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    .line 3
    new-instance v1, Landroid/net/DhcpStateMachine$DefaultState;

    invoke-direct {v1, p0}, Landroid/net/DhcpStateMachine$DefaultState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lu/l;

    .line 4
    new-instance v1, Landroid/net/DhcpStateMachine$StoppedState;

    invoke-direct {v1, p0}, Landroid/net/DhcpStateMachine$StoppedState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lu/l;

    .line 5
    new-instance v1, Landroid/net/DhcpStateMachine$WaitBeforeStartState;

    invoke-direct {v1, p0}, Landroid/net/DhcpStateMachine$WaitBeforeStartState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lu/l;

    .line 6
    new-instance v1, Landroid/net/DhcpStateMachine$RunningState;

    invoke-direct {v1, p0}, Landroid/net/DhcpStateMachine$RunningState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lu/l;

    .line 7
    new-instance v1, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;

    invoke-direct {v1, p0}, Landroid/net/DhcpStateMachine$WaitBeforeRenewalState;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object v1, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lu/l;

    .line 8
    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    .line 9
    iput-object p2, p0, Landroid/net/DhcpStateMachine;->mController:Lu/m;

    .line 10
    iput-object p3, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    const-string p2, "alarm"

    .line 11
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 12
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.net.wifi.DHCP_RENEW"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 13
    iget-object p3, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p3, v0, p1, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    .line 14
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p3, 0x1

    const-string v1, "DHCP"

    .line 15
    invoke-virtual {p1, p3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 17
    new-instance p1, Landroid/net/DhcpStateMachine$1;

    invoke-direct {p1, p0}, Landroid/net/DhcpStateMachine$1;-><init>(Landroid/net/DhcpStateMachine;)V

    iput-object p1, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 18
    iget-object p3, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->addState(Lu/l;)V

    .line 20
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lu/l;

    iget-object p2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 21
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lu/l;

    iget-object p2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 22
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lu/l;

    iget-object p2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 23
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lu/l;

    iget-object p2, p0, Landroid/net/DhcpStateMachine;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 24
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/DhcpStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/net/DhcpStateMachine;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1100(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1200(Landroid/net/DhcpStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mStoppedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$1300(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1400(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1500(Landroid/net/DhcpStateMachine;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static synthetic access$1600(Landroid/net/DhcpStateMachine;)Landroid/app/AlarmManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static synthetic access$1700(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$1800(Landroid/net/DhcpStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeRenewalState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$1900(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/net/DhcpStateMachine;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$2000(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2100(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2200(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$300(Landroid/net/DhcpStateMachine;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/net/DhcpStateMachine;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return p0
.end method

.method public static synthetic access$500(Landroid/net/DhcpStateMachine;)Lu/m;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mController:Lu/m;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/net/DhcpStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mWaitBeforeStartState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/net/DhcpStateMachine;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$800(Landroid/net/DhcpStateMachine;Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/DhcpStateMachine;->runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Landroid/net/DhcpStateMachine;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/DhcpStateMachine;->mRunningState:Lu/l;

    return-object p0
.end method

.method public static makeDhcpStateMachine(Landroid/content/Context;Lu/m;Ljava/lang/String;)Landroid/net/DhcpStateMachine;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/DhcpStateMachine;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/DhcpStateMachine;-><init>(Landroid/content/Context;Lu/m;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lu/m;->start()V

    return-object v0
.end method

.method private runDhcp(Landroid/net/DhcpStateMachine$DhcpAction;)Z
    .locals 11

    .line 1
    new-instance v0, Landroid/net/DhcpResults;

    invoke-direct {v0}, Landroid/net/DhcpResults;-><init>()V

    .line 2
    sget-object v1, Landroid/net/DhcpStateMachine$DhcpAction;->START:Landroid/net/DhcpStateMachine$DhcpAction;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 4
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->runDhcp(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Landroid/net/DhcpStateMachine$DhcpAction;->RENEW:Landroid/net/DhcpStateMachine$DhcpAction;

    if-ne p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/net/NetworkUtils;->runDhcpRenew(Ljava/lang/String;Landroid/net/DhcpResults;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    invoke-virtual {v0, v1}, Landroid/net/DhcpResults;->updateFromDhcpRequest(Landroid/net/DhcpResults;)V

    goto :goto_0

    :cond_1
    move p1, v2

    :cond_2
    :goto_0
    const/4 v1, 0x2

    const v3, 0x30005

    if-eqz p1, :cond_5

    .line 8
    iget v4, v0, Landroid/net/DhcpResults;->leaseDuration:I

    int-to-long v4, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_4

    const-wide/16 v6, 0x12c

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    move-wide v4, v6

    .line 9
    :cond_3
    iget-object v6, p0, Landroid/net/DhcpStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x1e0

    mul-long/2addr v4, v9

    add-long/2addr v7, v4

    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mDhcpRenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v1, v7, v8, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 10
    :cond_4
    iput-object v0, p0, Landroid/net/DhcpStateMachine;->mDhcpResults:Landroid/net/DhcpResults;

    .line 11
    iget-object v1, p0, Landroid/net/DhcpStateMachine;->mController:Lu/m;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2, v0}, Lu/m;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 12
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DHCP failed on "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/net/NetworkUtils;->getDhcpError()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DhcpStateMachine"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    .line 14
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lu/m;

    invoke-virtual {v0, v3, v1, v2}, Lu/m;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    return p1
.end method


# virtual methods
.method public doQuit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->quit()V

    return-void
.end method

.method public onQuitting()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/net/DhcpStateMachine;->mController:Lu/m;

    const v1, 0x30006

    invoke-virtual {v0, v1}, Lu/m;->sendMessage(I)V

    return-void
.end method

.method public registerForPreDhcpNotification()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/net/DhcpStateMachine;->mRegisteredForPreDhcpNotification:Z

    return-void
.end method

.class Landroid/net/wifi/SupplicantStateTracker;
.super Lu/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SupplicantStateTracker$DormantState;,
        Landroid/net/wifi/SupplicantStateTracker$CompletedState;,
        Landroid/net/wifi/SupplicantStateTracker$HandshakeState;,
        Landroid/net/wifi/SupplicantStateTracker$ScanState;,
        Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;,
        Landroid/net/wifi/SupplicantStateTracker$InactiveState;,
        Landroid/net/wifi/SupplicantStateTracker$UninitializedState;,
        Landroid/net/wifi/SupplicantStateTracker$DefaultState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAX_RETRIES_ON_ASSOCIATION_REJECT:I = 0x10

.field private static final MAX_RETRIES_ON_AUTHENTICATION_FAILURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SupplicantStateTracker"


# instance fields
.field private mAssociationRejectCount:I

.field private mAuthFailureInSupplicantBroadcast:Z

.field private mAuthenticationFailuresCount:I

.field private mCompletedState:Lu/l;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lu/l;

.field private mDisconnectState:Lu/l;

.field private mDormantState:Lu/l;

.field private mHandshakeState:Lu/l;

.field private mInactiveState:Lu/l;

.field private mNetworksDisabledDuringConnect:Z

.field private mScanState:Lu/l;

.field private mUninitializedState:Lu/l;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    const-string v0, "SupplicantStateTracker"

    invoke-direct {p0, v0, p4}, Lu/m;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p4, 0x0

    .line 2
    iput p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    .line 3
    iput p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    .line 4
    iput-boolean p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    .line 5
    iput-boolean p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 6
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$UninitializedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lu/l;

    .line 7
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$DefaultState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$DefaultState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    .line 8
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$InactiveState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$InactiveState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lu/l;

    .line 9
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$DisconnectedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lu/l;

    .line 10
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$ScanState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$ScanState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lu/l;

    .line 11
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$HandshakeState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lu/l;

    .line 12
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$CompletedState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$CompletedState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lu/l;

    .line 13
    new-instance p4, Landroid/net/wifi/SupplicantStateTracker$DormantState;

    invoke-direct {p4, p0}, Landroid/net/wifi/SupplicantStateTracker$DormantState;-><init>(Landroid/net/wifi/SupplicantStateTracker;)V

    iput-object p4, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lu/l;

    .line 14
    iput-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    .line 15
    iput-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 16
    iput-object p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 17
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->addState(Lu/l;)V

    .line 18
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 19
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 20
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 21
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 22
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 23
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 24
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lu/l;

    iget-object p2, p0, Landroid/net/wifi/SupplicantStateTracker;->mDefaultState:Lu/l;

    invoke-virtual {p0, p1, p2}, Lu/m;->addState(Lu/l;Lu/l;)V

    .line 25
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->setInitialState(Lu/l;)V

    const/16 p1, 0x32

    .line 26
    invoke-virtual {p0, p1}, Lu/m;->setLogRecSize(I)V

    const/4 p1, 0x1

    .line 27
    invoke-virtual {p0, p1}, Lu/m;->setLogOnlyTransitions(Z)V

    .line 28
    invoke-virtual {p0}, Lu/m;->start()V

    return-void
.end method

.method public static synthetic access$000(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p0
.end method

.method public static synthetic access$002(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return p1
.end method

.method public static synthetic access$008(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    return v0
.end method

.method public static synthetic access$100(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p0
.end method

.method public static synthetic access$1000(Landroid/net/wifi/SupplicantStateTracker;)Landroid/net/wifi/WifiConfigStore;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object p0
.end method

.method public static synthetic access$102(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    return p1
.end method

.method public static synthetic access$1100(Landroid/net/wifi/SupplicantStateTracker;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$200(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/SupplicantState;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V

    return-void
.end method

.method public static synthetic access$300(Landroid/net/wifi/SupplicantStateTracker;Landroid/net/wifi/StateChangeResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/net/wifi/SupplicantStateTracker;->transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V

    return-void
.end method

.method public static synthetic access$400(Landroid/net/wifi/SupplicantStateTracker;)Lu/l;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lu/l;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/net/wifi/SupplicantStateTracker;Lu/g;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    return-void
.end method

.method public static synthetic access$600(Landroid/net/wifi/SupplicantStateTracker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p0
.end method

.method public static synthetic access$602(Landroid/net/wifi/SupplicantStateTracker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    return p1
.end method

.method public static synthetic access$700(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return p0
.end method

.method public static synthetic access$702(Landroid/net/wifi/SupplicantStateTracker;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return p1
.end method

.method public static synthetic access$708(Landroid/net/wifi/SupplicantStateTracker;)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/SupplicantStateTracker;->mAssociationRejectCount:I

    return v0
.end method

.method public static synthetic access$800(Landroid/net/wifi/SupplicantStateTracker;)Landroid/os/Message;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lu/m;->getCurrentMessage()Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Landroid/net/wifi/SupplicantStateTracker;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/SupplicantStateTracker;->handleNetworkConnectionFailure(II)V

    return-void
.end method

.method private handleNetworkConnectionFailure(II)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->enableAllNetworks()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/SupplicantStateTracker;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    return-void
.end method

.method private sendSupplicantStateChangedBroadcast(Landroid/net/wifi/SupplicantState;Z)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x24000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "newState"

    .line 3
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    const-string/jumbo p2, "supplicantError"

    .line 4
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    :cond_0
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mContext:Landroid/content/Context;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private transitionOnSupplicantStateChange(Landroid/net/wifi/StateChangeResult;)V
    .locals 2

    .line 1
    iget-object p1, p1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 2
    sget-object v0, Landroid/net/wifi/SupplicantStateTracker$1;->$SwitchMap$android$net$wifi$SupplicantState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown supplicant state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SupplicantStateTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :pswitch_0
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mUninitializedState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    goto :goto_0

    .line 5
    :pswitch_1
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mInactiveState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    goto :goto_0

    .line 6
    :pswitch_2
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDormantState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mCompletedState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    goto :goto_0

    .line 8
    :pswitch_4
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mHandshakeState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    goto :goto_0

    .line 9
    :pswitch_5
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mScanState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    goto :goto_0

    .line 10
    :pswitch_6
    iget-object p1, p0, Landroid/net/wifi/SupplicantStateTracker;->mDisconnectState:Lu/l;

    invoke-virtual {p0, p1}, Lu/m;->transitionTo(Lu/g;)V

    :goto_0
    :pswitch_7
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lu/m;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAuthenticationFailuresCount "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthenticationFailuresCount:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAuthFailureInSupplicantBroadcast "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mAuthFailureInSupplicantBroadcast:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNetworksDisabledDuringConnect "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Landroid/net/wifi/SupplicantStateTracker;->mNetworksDisabledDuringConnect:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

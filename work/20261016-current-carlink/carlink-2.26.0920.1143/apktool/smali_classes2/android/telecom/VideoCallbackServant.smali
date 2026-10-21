.class final Landroid/telecom/VideoCallbackServant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MSG_CHANGE_CALL_DATA_USAGE:I = 0x4

.field private static final MSG_CHANGE_CAMERA_CAPABILITIES:I = 0x5

.field private static final MSG_CHANGE_PEER_DIMENSIONS:I = 0x3

.field private static final MSG_CHANGE_VIDEO_QUALITY:I = 0x6

.field private static final MSG_HANDLE_CALL_SESSION_EVENT:I = 0x2

.field private static final MSG_RECEIVE_SESSION_MODIFY_REQUEST:I = 0x0

.field private static final MSG_RECEIVE_SESSION_MODIFY_RESPONSE:I = 0x1


# instance fields
.field private final mDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mHandler:Landroid/os/Handler;

.field private final mStub:Lcom/android/internal/telecom/IVideoCallback;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IVideoCallback;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/telecom/VideoCallbackServant$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/telecom/VideoCallbackServant$1;-><init>(Landroid/telecom/VideoCallbackServant;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;

    .line 10
    .line 11
    new-instance v0, Landroid/telecom/VideoCallbackServant$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/telecom/VideoCallbackServant$2;-><init>(Landroid/telecom/VideoCallbackServant;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/telecom/VideoCallbackServant;->mStub:Lcom/android/internal/telecom/IVideoCallback;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 19
    .line 20
    return-void
.end method

.method public static synthetic access$000(Landroid/telecom/VideoCallbackServant;)Lcom/android/internal/telecom/IVideoCallback;
    .locals 0

    iget-object p0, p0, Landroid/telecom/VideoCallbackServant;->mDelegate:Lcom/android/internal/telecom/IVideoCallback;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/telecom/VideoCallbackServant;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/telecom/VideoCallbackServant;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public getStub()Lcom/android/internal/telecom/IVideoCallback;
    .locals 1

    iget-object v0, p0, Landroid/telecom/VideoCallbackServant;->mStub:Lcom/android/internal/telecom/IVideoCallback;

    return-object v0
.end method

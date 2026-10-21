.class public Landroid/media/JetPlayer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/JetPlayer$OnJetEventListener;,
        Landroid/media/JetPlayer$NativeEventHandler;
    }
.end annotation


# static fields
.field private static final JET_EVENT:I = 0x1

.field private static final JET_EVENT_CHAN_MASK:I = 0x3c000

.field private static final JET_EVENT_CHAN_SHIFT:I = 0xe

.field private static final JET_EVENT_CTRL_MASK:I = 0x3f80

.field private static final JET_EVENT_CTRL_SHIFT:I = 0x7

.field private static final JET_EVENT_SEG_MASK:I = -0x1000000

.field private static final JET_EVENT_SEG_SHIFT:I = 0x18

.field private static final JET_EVENT_TRACK_MASK:I = 0xfc0000

.field private static final JET_EVENT_TRACK_SHIFT:I = 0x12

.field private static final JET_EVENT_VAL_MASK:I = 0x7f

.field private static final JET_NUMQUEUEDSEGMENT_UPDATE:I = 0x3

.field private static final JET_OUTPUT_CHANNEL_CONFIG:I = 0xc

.field private static final JET_OUTPUT_RATE:I = 0x5622

.field private static final JET_PAUSE_UPDATE:I = 0x4

.field private static final JET_USERID_UPDATE:I = 0x2

.field private static MAXTRACKS:I = 0x20

.field private static final TAG:Ljava/lang/String; = "JetPlayer-J"

.field private static singletonRef:Landroid/media/JetPlayer;


# instance fields
.field private mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

.field private final mEventListenerLock:Ljava/lang/Object;

.field private mInitializationLooper:Landroid/os/Looper;

.field private mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

.field private mNativePlayerInJavaObj:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 3
    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    :cond_0
    const/16 v0, 0x5622

    const/16 v1, 0xc

    const/4 v2, 0x2

    .line 8
    invoke-static {v0, v1, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    .line 9
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v2

    const/16 v3, 0x4b0

    div-int/lit8 v0, v0, 0x4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v1, v2, v0}, Landroid/media/JetPlayer;->native_setup(Ljava/lang/Object;II)Z

    :cond_1
    return-void
.end method

.method public static synthetic access$000(Landroid/media/JetPlayer;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/JetPlayer;)Landroid/media/JetPlayer$OnJetEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    return-object p0
.end method

.method public static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/media/JetPlayer;->loge(Ljava/lang/String;)V

    return-void
.end method

.method public static getJetPlayer()Landroid/media/JetPlayer;
    .locals 1

    .line 1
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/media/JetPlayer;

    invoke-direct {v0}, Landroid/media/JetPlayer;-><init>()V

    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    .line 3
    :cond_0
    sget-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    return-object v0
.end method

.method public static getMaxTracks()I
    .locals 1

    .line 1
    sget v0, Landroid/media/JetPlayer;->MAXTRACKS:I

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ android.media.JetPlayer ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JetPlayer-J"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ android.media.JetPlayer ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JetPlayer-J"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final native native_clearQueue()Z
.end method

.method private final native native_closeJetFile()Z
.end method

.method private final native native_finalize()V
.end method

.method private final native native_loadJetFromFile(Ljava/lang/String;)Z
.end method

.method private final native native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z
.end method

.method private final native native_pauseJet()Z
.end method

.method private final native native_playJet()Z
.end method

.method private final native native_queueJetSegment(IIIIIB)Z
.end method

.method private final native native_queueJetSegmentMuteArray(IIII[ZB)Z
.end method

.method private final native native_release()V
.end method

.method private final native native_setMuteArray([ZZ)Z
.end method

.method private final native native_setMuteFlag(IZZ)Z
.end method

.method private final native native_setMuteFlags(IZ)Z
.end method

.method private final native native_setup(Ljava/lang/Object;II)Z
.end method

.method private final native native_triggerClip(I)Z
.end method

.method private static postEventFromNative(Ljava/lang/Object;III)V
    .locals 2

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/JetPlayer;

    if-eqz p0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    iget-object p0, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public clearQueue()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_clearQueue()Z

    move-result v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public closeJetFile()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_closeJetFile()Z

    move-result v0

    return v0
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_finalize()V

    return-void
.end method

.method public loadJetFile(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 6

    .line 2
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/JetPlayer;->native_loadJetFromFileD(Ljava/io/FileDescriptor;JJ)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "no length for fd"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadJetFile(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_loadJetFromFile(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pause()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_pauseJet()Z

    move-result v0

    return v0
.end method

.method public play()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_playJet()Z

    move-result v0

    return v0
.end method

.method public queueJetSegment(IIIIIB)Z
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegment(IIIIIB)Z

    move-result p1

    return p1
.end method

.method public queueJetSegmentMuteArray(IIII[ZB)Z
    .locals 2

    .line 1
    array-length v0, p5

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct/range {p0 .. p6}, Landroid/media/JetPlayer;->native_queueJetSegmentMuteArray(IIII[ZB)Z

    move-result p1

    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/JetPlayer;->native_release()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Landroid/media/JetPlayer;->singletonRef:Landroid/media/JetPlayer;

    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/media/JetPlayer;->setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setEventListener(Landroid/media/JetPlayer$OnJetEventListener;Landroid/os/Handler;)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/media/JetPlayer;->mEventListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Landroid/media/JetPlayer;->mJetEventListener:Landroid/media/JetPlayer$OnJetEventListener;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Landroid/media/JetPlayer$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p0, p2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Landroid/media/JetPlayer$NativeEventHandler;

    iget-object p2, p0, Landroid/media/JetPlayer;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p1, p0, p0, p2}, Landroid/media/JetPlayer$NativeEventHandler;-><init>(Landroid/media/JetPlayer;Landroid/media/JetPlayer;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Landroid/media/JetPlayer;->mEventHandler:Landroid/media/JetPlayer$NativeEventHandler;

    .line 7
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMuteArray([ZZ)Z
    .locals 2

    .line 1
    array-length v0, p1

    invoke-static {}, Landroid/media/JetPlayer;->getMaxTracks()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteArray([ZZ)Z

    move-result p1

    return p1
.end method

.method public setMuteFlag(IZZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/JetPlayer;->native_setMuteFlag(IZZ)Z

    move-result p1

    return p1
.end method

.method public setMuteFlags(IZ)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/JetPlayer;->native_setMuteFlags(IZ)Z

    move-result p1

    return p1
.end method

.method public triggerClip(I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/JetPlayer;->native_triggerClip(I)Z

    move-result p1

    return p1
.end method

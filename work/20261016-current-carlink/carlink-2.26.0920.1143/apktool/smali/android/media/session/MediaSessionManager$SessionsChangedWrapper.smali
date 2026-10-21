.class final Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SessionsChangedWrapper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private final mStub:Landroid/media/session/IActiveSessionsListener$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;-><init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    .line 10
    .line 11
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 14
    .line 15
    iput-object p3, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mHandler:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic access$000(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/IActiveSessionsListener$Stub;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mStub:Landroid/media/session/IActiveSessionsListener$Stub;

    return-object p0
.end method

.method public static synthetic access$100(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->release()V

    return-void
.end method

.method public static synthetic access$200(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    return-object p0
.end method

.method private release()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 3
    .line 4
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    return-void
.end method

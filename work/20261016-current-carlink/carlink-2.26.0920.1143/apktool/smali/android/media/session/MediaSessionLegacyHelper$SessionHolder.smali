.class Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionLegacyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SessionHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;
    }
.end annotation


# instance fields
.field public mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

.field public mFlags:I

.field public mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

.field public final mPi:Landroid/app/PendingIntent;

.field public mRccListener:Landroid/media/session/MediaSession$Callback;

.field public final mSession:Landroid/media/session/MediaSession;

.field final synthetic this$0:Landroid/media/session/MediaSessionLegacyHelper;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionLegacyHelper;Landroid/media/session/MediaSession;Landroid/app/PendingIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mMediaButtonListener:Landroid/media/session/MediaSessionLegacyHelper$MediaButtonListener;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mRccListener:Landroid/media/session/MediaSession$Callback;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/session/MediaSession;->release()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 21
    .line 22
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->this$0:Landroid/media/session/MediaSessionLegacyHelper;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->access$200(Landroid/media/session/MediaSessionLegacyHelper;)Landroid/util/ArrayMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mPi:Landroid/app/PendingIntent;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 39
    .line 40
    invoke-direct {v0, p0, v1}, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;-><init>(Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;Landroid/media/session/MediaSessionLegacyHelper$1;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 44
    .line 45
    new-instance v0, Landroid/os/Handler;

    .line 46
    .line 47
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mSession:Landroid/media/session/MediaSession;

    .line 55
    .line 56
    iget-object v2, p0, Landroid/media/session/MediaSessionLegacyHelper$SessionHolder;->mCb:Landroid/media/session/MediaSessionLegacyHelper$SessionHolder$SessionCallback;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.class Landroid/media/AudioTrack$NativeEventHandlerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NativeEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field public final synthetic this$0:Landroid/media/AudioTrack;


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 6

    .line 1
    iput-object p1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->this$0:Landroid/media/AudioTrack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p4

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/media/AudioTrack;->access$000(Landroid/media/AudioTrack;)Landroid/os/Looper;

    move-result-object p4

    :goto_0
    move-object v2, p4

    if-eqz v2, :cond_1

    .line 4
    new-instance p4, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;

    move-object v0, p4

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack$NativeEventHandlerDelegate$1;-><init>(Landroid/media/AudioTrack$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    iput-object p4, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    :goto_1
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioTrack$NativeEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

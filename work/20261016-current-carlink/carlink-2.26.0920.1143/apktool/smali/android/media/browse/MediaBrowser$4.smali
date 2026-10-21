.class Landroid/media/browse/MediaBrowser$4;
.super Landroid/os/ResultReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;

.field final synthetic val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

.field final synthetic val$mediaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    iput-object p4, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$4;->this$0:Landroid/media/browse/MediaBrowser;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    if-nez p1, :cond_3

    .line 11
    .line 12
    if-eqz p2, :cond_3

    .line 13
    .line 14
    const-string/jumbo p1, "media_item"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    instance-of p2, p1, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 31
    .line 32
    if-nez p2, :cond_2

    .line 33
    .line 34
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    .line 35
    .line 36
    iget-object p2, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    iget-object p2, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    .line 43
    .line 44
    check-cast p1, Landroid/media/browse/MediaBrowser$MediaItem;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/media/browse/MediaBrowser$ItemCallback;->onItemLoaded(Landroid/media/browse/MediaBrowser$MediaItem;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    :goto_0
    iget-object p1, p0, Landroid/media/browse/MediaBrowser$4;->val$cb:Landroid/media/browse/MediaBrowser$ItemCallback;

    .line 51
    .line 52
    iget-object p2, p0, Landroid/media/browse/MediaBrowser$4;->val$mediaId:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {p1, p2}, Landroid/media/browse/MediaBrowser$ItemCallback;->onError(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

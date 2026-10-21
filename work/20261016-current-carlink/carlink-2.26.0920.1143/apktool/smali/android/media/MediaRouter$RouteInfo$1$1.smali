.class Landroid/media/MediaRouter$RouteInfo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$RouteInfo$1;->dispatchRemoteVolumeUpdate(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$RouteInfo$1;

.field final synthetic val$direction:I

.field final synthetic val$value:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$RouteInfo$1;II)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    iput p2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    iput p3, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->this$1:Landroid/media/MediaRouter$RouteInfo$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo$1;->this$0:Landroid/media/MediaRouter$RouteInfo;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/media/MediaRouter$RouteInfo;->mVcb:Landroid/media/MediaRouter$VolumeCallbackInfo;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget v1, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$direction:I

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    .line 14
    .line 15
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    .line 16
    .line 17
    invoke-virtual {v2, v0, v1}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeUpdateRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->vcb:Landroid/media/MediaRouter$VolumeCallback;

    .line 22
    .line 23
    iget-object v0, v0, Landroid/media/MediaRouter$VolumeCallbackInfo;->route:Landroid/media/MediaRouter$RouteInfo;

    .line 24
    .line 25
    iget v2, p0, Landroid/media/MediaRouter$RouteInfo$1$1;->val$value:I

    .line 26
    .line 27
    invoke-virtual {v1, v0, v2}, Landroid/media/MediaRouter$VolumeCallback;->onVolumeSetRequest(Landroid/media/MediaRouter$RouteInfo;I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

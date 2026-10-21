.class Landroid/media/MediaRouter$Static$Client$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaRouter$Static$Client;->onStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/MediaRouter$Static$Client;


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$Static$Client;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/MediaRouter$Static$Client$1;->this$1:Landroid/media/MediaRouter$Static$Client;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/media/MediaRouter$Static$Client;->this$0:Landroid/media/MediaRouter$Static;

    .line 4
    .line 5
    iget-object v2, v1, Landroid/media/MediaRouter$Static;->mClient:Landroid/media/IMediaRouterClient;

    .line 6
    .line 7
    if-ne v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/media/MediaRouter$Static;->updateClientState()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

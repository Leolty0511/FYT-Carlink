.class Landroid/media/AudioService$AudioHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService$AudioHandler;->onPlaySoundEffect(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Landroid/media/AudioService$AudioHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioService$AudioHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioService$AudioHandler$2;->this$1:Landroid/media/AudioService$AudioHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/media/AudioService$AudioHandler$2;->this$1:Landroid/media/AudioService$AudioHandler;

    invoke-static {p2, p1}, Landroid/media/AudioService$AudioHandler;->access$5100(Landroid/media/AudioService$AudioHandler;Landroid/media/MediaPlayer;)V

    const/4 p1, 0x1

    return p1
.end method

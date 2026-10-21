.class Landroid/media/AudioManager$1;
.super Landroid/media/IAudioFocusDispatcher$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Landroid/media/IAudioFocusDispatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioFocusChange(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iget-object p2, p0, Landroid/media/AudioManager$1;->this$0:Landroid/media/AudioManager;

    invoke-static {p2}, Landroid/media/AudioManager;->access$200(Landroid/media/AudioManager;)Landroid/media/AudioManager$FocusEventHandlerDelegate;

    move-result-object p2

    invoke-virtual {p2}, Landroid/media/AudioManager$FocusEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

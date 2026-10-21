.class Landroid/media/MediaFocusControl$MediaEventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaEventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/MediaFocusControl;


# direct methods
.method public constructor <init>(Landroid/media/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$2200(Landroid/media/MediaFocusControl;)V

    goto/16 :goto_0

    .line 3
    :pswitch_1
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteControlDisplay;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaFocusControl;->access$2100(Landroid/media/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/Rating;

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaFocusControl;->access$1900(Landroid/media/MediaFocusControl;IILandroid/media/Rating;)V

    goto :goto_0

    .line 5
    :pswitch_3
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaFocusControl;->access$1800(Landroid/media/MediaFocusControl;IJ)V

    goto :goto_0

    .line 6
    :pswitch_4
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/MediaFocusControl$RccPlaybackState;

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaFocusControl;->access$1700(Landroid/media/MediaFocusControl;IILandroid/media/MediaFocusControl$RccPlaybackState;)V

    goto :goto_0

    .line 7
    :pswitch_5
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Landroid/media/MediaFocusControl;->access$2000(Landroid/media/MediaFocusControl;I)V

    goto :goto_0

    .line 8
    :pswitch_6
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/media/IRemoteVolumeObserver;

    invoke-static {v0, v1, p1}, Landroid/media/MediaFocusControl;->access$1600(Landroid/media/MediaFocusControl;ILandroid/media/IRemoteVolumeObserver;)V

    goto :goto_0

    .line 9
    :pswitch_7
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/media/MediaFocusControl;->access$1500(Landroid/media/MediaFocusControl;III)V

    goto :goto_0

    .line 10
    :pswitch_8
    iget-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$1400(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    .line 11
    :pswitch_9
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/MediaFocusControl$RemoteControlStackEntry;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Landroid/media/MediaFocusControl;->access$1300(Landroid/media/MediaFocusControl;Landroid/media/MediaFocusControl$RemoteControlStackEntry;I)V

    goto :goto_0

    .line 12
    :pswitch_a
    iget-object p1, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    invoke-static {p1}, Landroid/media/MediaFocusControl;->access$1200(Landroid/media/MediaFocusControl;)V

    goto :goto_0

    .line 13
    :pswitch_b
    iget-object v0, p0, Landroid/media/MediaFocusControl$MediaEventHandler;->this$0:Landroid/media/MediaFocusControl;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/media/MediaFocusControl;->access$1100(Landroid/media/MediaFocusControl;Landroid/content/ComponentName;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

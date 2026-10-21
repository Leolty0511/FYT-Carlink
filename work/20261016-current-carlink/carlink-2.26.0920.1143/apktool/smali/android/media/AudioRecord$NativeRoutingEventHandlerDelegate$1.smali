.class Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

.field final synthetic val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

.field final synthetic val$record:Landroid/media/AudioRecord;

.field final synthetic val$this$0:Landroid/media/AudioRecord;


# direct methods
.method public constructor <init>(Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;Landroid/os/Looper;Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->this$1:Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate;

    iput-object p3, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$this$0:Landroid/media/AudioRecord;

    iput-object p4, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    iput-object p5, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$record:Landroid/media/AudioRecord;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 7
    .line 8
    const/16 v2, 0x3e8

    .line 9
    .line 10
    if-eq v1, v2, :cond_1

    .line 11
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v1, "Unknown native event type: "

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/media/AudioRecord;->access$100(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Landroid/media/AudioRecord$NativeRoutingEventHandlerDelegate$1;->val$listener:Landroid/media/AudioRouting$OnRoutingChangedListener;

    .line 33
    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    invoke-interface {p1, v0}, Landroid/media/AudioRouting$OnRoutingChangedListener;->onRoutingChanged(Landroid/media/AudioRouting;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method

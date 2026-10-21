.class Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

.field final synthetic val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

.field final synthetic val$this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;


# direct methods
.method public constructor <init>(Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;Landroid/os/Looper;Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->this$1:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$this$0:Landroid/hardware/soundtrigger/SoundTriggerModule;

    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_2

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x4

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    .line 17
    .line 18
    if-eqz v0, :cond_4

    .line 19
    .line 20
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceStateChange(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    .line 27
    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    .line 39
    .line 40
    if-eqz p1, :cond_4

    .line 41
    .line 42
    invoke-interface {p1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onServiceDied()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate$1;->val$listener:Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;

    .line 47
    .line 48
    if-eqz v0, :cond_4

    .line 49
    .line 50
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;

    .line 53
    .line 54
    invoke-interface {v0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;->onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V

    .line 55
    .line 56
    .line 57
    :cond_4
    :goto_0
    return-void
.end method

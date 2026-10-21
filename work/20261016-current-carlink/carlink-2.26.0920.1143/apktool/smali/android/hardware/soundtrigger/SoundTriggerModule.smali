.class public Landroid/hardware/soundtrigger/SoundTriggerModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;
    }
.end annotation


# static fields
.field private static final EVENT_RECOGNITION:I = 0x1

.field private static final EVENT_SERVICE_DIED:I = 0x2

.field private static final EVENT_SERVICE_STATE_CHANGE:I = 0x4

.field private static final EVENT_SOUNDMODEL:I = 0x3


# instance fields
.field private mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

.field private mId:I

.field private mNativeContext:J


# direct methods
.method public constructor <init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mId:I

    .line 5
    .line 6
    new-instance p1, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2, p3}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/soundtrigger/SoundTriggerModule;Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    .line 12
    .line 13
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Landroid/hardware/soundtrigger/SoundTriggerModule;->native_setup(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Landroid/hardware/soundtrigger/SoundTriggerModule;->mEventHandlerDelegate:Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule$NativeEventHandlerDelegate;->handler()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method


# virtual methods
.method public native detach()V
.end method

.method public finalize()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/soundtrigger/SoundTriggerModule;->native_finalize()V

    return-void
.end method

.method public native loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;[I)I
.end method

.method public native startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
.end method

.method public native stopRecognition(I)I
.end method

.method public native unloadSoundModel(I)I
.end method

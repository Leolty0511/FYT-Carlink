.class public Landroid/hardware/soundtrigger/SoundTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionExtra;,
        Landroid/hardware/soundtrigger/SoundTrigger$ConfidenceLevel;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;,
        Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;,
        Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;,
        Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;,
        Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    }
.end annotation


# static fields
.field public static final RECOGNITION_MODE_USER_AUTHENTICATION:I = 0x4

.field public static final RECOGNITION_MODE_USER_IDENTIFICATION:I = 0x2

.field public static final RECOGNITION_MODE_VOICE_TRIGGER:I = 0x1

.field public static final RECOGNITION_STATUS_ABORT:I = 0x1

.field public static final RECOGNITION_STATUS_FAILURE:I = 0x2

.field public static final RECOGNITION_STATUS_SUCCESS:I = 0x0

.field public static final SERVICE_STATE_DISABLED:I = 0x1

.field public static final SERVICE_STATE_ENABLED:I = 0x0

.field public static final SOUNDMODEL_STATUS_UPDATED:I = 0x0

.field public static final STATUS_BAD_VALUE:I

.field public static final STATUS_DEAD_OBJECT:I

.field public static final STATUS_ERROR:I = -0x80000000

.field public static final STATUS_INVALID_OPERATION:I

.field public static final STATUS_NO_INIT:I

.field public static final STATUS_OK:I

.field public static final STATUS_PERMISSION_DENIED:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Landroid/system/OsConstants;->EPERM:I

    .line 2
    .line 3
    neg-int v0, v0

    .line 4
    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_PERMISSION_DENIED:I

    .line 5
    .line 6
    sget v0, Landroid/system/OsConstants;->ENODEV:I

    .line 7
    .line 8
    neg-int v0, v0

    .line 9
    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_NO_INIT:I

    .line 10
    .line 11
    sget v0, Landroid/system/OsConstants;->EINVAL:I

    .line 12
    .line 13
    neg-int v0, v0

    .line 14
    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_BAD_VALUE:I

    .line 15
    .line 16
    sget v0, Landroid/system/OsConstants;->EPIPE:I

    .line 17
    .line 18
    neg-int v0, v0

    .line 19
    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_DEAD_OBJECT:I

    .line 20
    .line 21
    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    .line 22
    .line 23
    neg-int v0, v0

    .line 24
    sput v0, Landroid/hardware/soundtrigger/SoundTrigger;->STATUS_INVALID_OPERATION:I

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attachModule(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)Landroid/hardware/soundtrigger/SoundTriggerModule;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTriggerModule;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/soundtrigger/SoundTriggerModule;-><init>(ILandroid/hardware/soundtrigger/SoundTrigger$StatusListener;Landroid/os/Handler;)V

    return-object v0
.end method

.method public static native listModules(Ljava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;)I"
        }
    .end annotation
.end method

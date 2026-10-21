.class public final Landroid/media/soundtrigger/SoundTriggerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/soundtrigger/SoundTriggerManager$Model;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final EXTRA_MESSAGE_TYPE:Ljava/lang/String; = "android.media.soundtrigger.MESSAGE_TYPE"

.field public static final EXTRA_RECOGNITION_EVENT:Ljava/lang/String; = "android.media.soundtrigger.RECOGNITION_EVENT"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.media.soundtrigger.STATUS"

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_ERROR:I = 0x1

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_EVENT:I = 0x0

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_PAUSED:I = 0x2

.field public static final FLAG_MESSAGE_TYPE_RECOGNITION_RESUMED:I = 0x3

.field public static final FLAG_MESSAGE_TYPE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SoundTriggerManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiverInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/UUID;",
            "Landroid/media/soundtrigger/SoundTriggerDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/ISoundTriggerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 5
    .line 6
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public createSoundTriggerDetector(Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)Landroid/media/soundtrigger/SoundTriggerDetector;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 12
    .line 13
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerDetector;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 16
    .line 17
    invoke-direct {v0, v1, p1, p2, p3}, Landroid/media/soundtrigger/SoundTriggerDetector;-><init>(Lcom/android/internal/app/ISoundTriggerService;Ljava/util/UUID;Landroid/media/soundtrigger/SoundTriggerDetector$Callback;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mReceiverInstanceMap:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public deleteModel(Ljava/util/UUID;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 2
    .line 3
    new-instance v1, Landroid/os/ParcelUuid;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerService;->deleteSoundModel(Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    throw p1
.end method

.method public getModel(Ljava/util/UUID;)Landroid/media/soundtrigger/SoundTriggerManager$Model;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/soundtrigger/SoundTriggerManager$Model;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 4
    .line 5
    new-instance v2, Landroid/os/ParcelUuid;

    .line 6
    .line 7
    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v1, v2}, Lcom/android/internal/app/ISoundTriggerService;->getSoundModel(Landroid/os/ParcelUuid;)Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;-><init>(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public isRecognitionActive(Ljava/util/UUID;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 6
    .line 7
    new-instance v1, Landroid/os/ParcelUuid;

    .line 8
    .line 9
    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerService;->isRecognitionActive(Landroid/os/ParcelUuid;)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    throw p1
.end method

.method public loadSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;)I
    .locals 3

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v1, v2, :cond_1

    .line 12
    .line 13
    const-string p1, "SoundTriggerManager"

    .line 14
    .line 15
    const-string v1, "Unkown model type"

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    return v0

    .line 21
    :cond_1
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 22
    .line 23
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 24
    .line 25
    invoke-interface {v0, p1}, Lcom/android/internal/app/ISoundTriggerService;->loadGenericSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1

    .line 30
    :cond_2
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 31
    .line 32
    check-cast p1, Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lcom/android/internal/app/ISoundTriggerService;->loadKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    .line 35
    .line 36
    .line 37
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return p1

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    throw p1
.end method

.method public startRecognition(Ljava/util/UUID;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    if-eqz p2, :cond_1

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 9
    .line 10
    new-instance v1, Landroid/os/ParcelUuid;

    .line 11
    .line 12
    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v1, p2, p3}, Lcom/android/internal/app/ISoundTriggerService;->startRecognitionForIntent(Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    .line 16
    .line 17
    .line 18
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    throw p1

    .line 26
    :cond_1
    :goto_0
    const/high16 p1, -0x80000000

    .line 27
    .line 28
    return p1
.end method

.method public stopRecognition(Ljava/util/UUID;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 7
    .line 8
    new-instance v1, Landroid/os/ParcelUuid;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerService;->stopRecognitionForIntent(Landroid/os/ParcelUuid;)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public unloadSoundModel(Ljava/util/UUID;)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/high16 p1, -0x80000000

    .line 4
    .line 5
    return p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 7
    .line 8
    new-instance v1, Landroid/os/ParcelUuid;

    .line 9
    .line 10
    invoke-direct {v1, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lcom/android/internal/app/ISoundTriggerService;->unloadSoundModel(Landroid/os/ParcelUuid;)I

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public updateModel(Landroid/media/soundtrigger/SoundTriggerManager$Model;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/media/soundtrigger/SoundTriggerManager;->mSoundTriggerService:Lcom/android/internal/app/ISoundTriggerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/media/soundtrigger/SoundTriggerManager$Model;->getGenericSoundModel()Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/android/internal/app/ISoundTriggerService;->updateSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$GenericSoundModel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    throw p1
.end method

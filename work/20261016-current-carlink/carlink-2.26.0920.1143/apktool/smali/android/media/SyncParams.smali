.class public final Landroid/media/SyncParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SyncParams$AudioAdjustMode;,
        Landroid/media/SyncParams$SyncSource;
    }
.end annotation


# static fields
.field public static final AUDIO_ADJUST_MODE_DEFAULT:I = 0x0

.field public static final AUDIO_ADJUST_MODE_RESAMPLE:I = 0x2

.field public static final AUDIO_ADJUST_MODE_STRETCH:I = 0x1

.field private static final SET_AUDIO_ADJUST_MODE:I = 0x2

.field private static final SET_FRAME_RATE:I = 0x8

.field private static final SET_SYNC_SOURCE:I = 0x1

.field private static final SET_TOLERANCE:I = 0x4

.field public static final SYNC_SOURCE_AUDIO:I = 0x2

.field public static final SYNC_SOURCE_DEFAULT:I = 0x0

.field public static final SYNC_SOURCE_SYSTEM_CLOCK:I = 0x1

.field public static final SYNC_SOURCE_VSYNC:I = 0x3


# instance fields
.field private mAudioAdjustMode:I

.field private mFrameRate:F

.field private mSet:I

.field private mSyncSource:I

.field private mTolerance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 6
    .line 7
    iput v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 8
    .line 9
    iput v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 13
    .line 14
    iput v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public allowDefaults()Landroid/media/SyncParams;
    .locals 1

    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    or-int/lit8 v0, v0, 0x7

    iput v0, p0, Landroid/media/SyncParams;->mSet:I

    return-object p0
.end method

.method public getAudioAdjustMode()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "audio adjust mode not set"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getFrameRate()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/SyncParams;->mFrameRate:F

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "frame rate not set"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getSyncSource()I
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/SyncParams;->mSyncSource:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string/jumbo v1, "sync source not set"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getTolerance()F
    .locals 2

    .line 1
    iget v0, p0, Landroid/media/SyncParams;->mSet:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string/jumbo v1, "tolerance not set"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public setAudioAdjustMode(I)Landroid/media/SyncParams;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/SyncParams;->mAudioAdjustMode:I

    .line 2
    .line 3
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 8
    .line 9
    return-object p0
.end method

.method public setFrameRate(F)Landroid/media/SyncParams;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/SyncParams;->mFrameRate:F

    .line 2
    .line 3
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x8

    .line 6
    .line 7
    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 8
    .line 9
    return-object p0
.end method

.method public setSyncSource(I)Landroid/media/SyncParams;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/SyncParams;->mSyncSource:I

    .line 2
    .line 3
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 4
    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 8
    .line 9
    return-object p0
.end method

.method public setTolerance(F)Landroid/media/SyncParams;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    .line 4
    if-ltz v0, :cond_0

    .line 5
    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    .line 8
    cmpl-float v0, p1, v0

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    iput p1, p0, Landroid/media/SyncParams;->mTolerance:F

    .line 13
    .line 14
    iget p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x4

    .line 17
    .line 18
    iput p1, p0, Landroid/media/SyncParams;->mSet:I

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string/jumbo v0, "tolerance must be less than one and non-negative"

    .line 24
    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

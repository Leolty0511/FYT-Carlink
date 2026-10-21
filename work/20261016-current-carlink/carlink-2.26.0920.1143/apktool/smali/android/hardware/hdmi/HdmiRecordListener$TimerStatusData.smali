.class public Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimerStatusData"
.end annotation


# instance fields
.field private mDurationHour:I

.field private mDurationMinute:I

.field private mExtraError:I

.field private mMediaInfo:I

.field private mNotProgrammedError:I

.field private mOverlapped:Z

.field private mProgrammed:Z

.field private mProgrammedInfo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bcdByteToInt(B)I
    .locals 1

    shr-int/lit8 v0, p0, 0x4

    and-int/lit8 v0, v0, 0xf

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, p0

    and-int/lit8 p0, v0, 0xf

    return p0
.end method

.method public static parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;
    .locals 4

    .line 1
    new-instance v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;-><init>()V

    .line 4
    .line 5
    .line 6
    shr-int/lit8 v1, p0, 0x1f

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    and-int/2addr v1, v2

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    move v1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v1, v3

    .line 16
    :goto_0
    iput-boolean v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    .line 17
    .line 18
    shr-int/lit8 v1, p0, 0x1d

    .line 19
    .line 20
    and-int/lit8 v1, v1, 0x3

    .line 21
    .line 22
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    .line 23
    .line 24
    shr-int/lit8 v1, p0, 0x1c

    .line 25
    .line 26
    and-int/2addr v1, v2

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v3

    .line 31
    :goto_1
    iput-boolean v2, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    shr-int/lit8 v1, p0, 0x18

    .line 36
    .line 37
    and-int/lit8 v1, v1, 0xf

    .line 38
    .line 39
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    .line 40
    .line 41
    shr-int/lit8 v1, p0, 0x10

    .line 42
    .line 43
    and-int/lit16 v1, v1, 0xff

    .line 44
    .line 45
    int-to-byte v1, v1

    .line 46
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 51
    .line 52
    shr-int/lit8 v1, p0, 0x8

    .line 53
    .line 54
    and-int/lit16 v1, v1, 0xff

    .line 55
    .line 56
    int-to-byte v1, v1

    .line 57
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    shr-int/lit8 v1, p0, 0x18

    .line 65
    .line 66
    and-int/lit8 v1, v1, 0xf

    .line 67
    .line 68
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    .line 69
    .line 70
    shr-int/lit8 v1, p0, 0x10

    .line 71
    .line 72
    and-int/lit16 v1, v1, 0xff

    .line 73
    .line 74
    int-to-byte v1, v1

    .line 75
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    .line 80
    .line 81
    shr-int/lit8 v1, p0, 0x8

    .line 82
    .line 83
    and-int/lit16 v1, v1, 0xff

    .line 84
    .line 85
    int-to-byte v1, v1

    .line 86
    invoke-static {v1}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->bcdByteToInt(B)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    .line 91
    .line 92
    :goto_2
    and-int/lit16 p0, p0, 0xff

    .line 93
    .line 94
    iput p0, v0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    .line 95
    .line 96
    return-object v0
.end method


# virtual methods
.method public getDurationHour()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationHour:I

    return v0
.end method

.method public getDurationMinute()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mDurationMinute:I

    return v0
.end method

.method public getExtraError()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mExtraError:I

    return v0
.end method

.method public getMediaInfo()I
    .locals 1

    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mMediaInfo:I

    return v0
.end method

.method public getNotProgammedError()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mNotProgrammedError:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Has no not-programmed error. Call getProgrammedInfo() instead."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getProgrammedInfo()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->isProgrammed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammedInfo:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "No programmed info. Call getNotProgammedError() instead."

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public isOverlapped()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mOverlapped:Z

    return v0
.end method

.method public isProgrammed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->mProgrammed:Z

    return v0
.end method

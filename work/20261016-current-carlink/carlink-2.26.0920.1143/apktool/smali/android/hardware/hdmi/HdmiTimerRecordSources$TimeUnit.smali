.class Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeUnit"
.end annotation


# instance fields
.field final mHour:I

.field final mMinute:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 5
    .line 6
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    .line 7
    .line 8
    return-void
.end method

.method public static toBcdByte(I)B
    .locals 1

    .line 1
    div-int/lit8 v0, p0, 0xa

    .line 2
    .line 3
    rem-int/lit8 v0, v0, 0xa

    .line 4
    .line 5
    rem-int/lit8 p0, p0, 0xa

    .line 6
    .line 7
    shl-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    or-int/2addr p0, v0

    .line 10
    int-to-byte p0, p0

    .line 11
    return p0
.end method


# virtual methods
.method public toByteArray([BI)I
    .locals 1

    .line 1
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mHour:I

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    aput-byte v0, p1, p2

    .line 8
    .line 9
    add-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->mMinute:I

    .line 12
    .line 13
    invoke-static {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimeUnit;->toBcdByte(I)B

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    aput-byte v0, p1, p2

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    return p1
.end method

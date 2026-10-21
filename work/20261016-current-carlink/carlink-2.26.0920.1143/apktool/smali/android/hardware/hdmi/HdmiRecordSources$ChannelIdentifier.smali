.class final Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChannelIdentifier"
.end annotation


# instance fields
.field private final mChannelNumberFormat:I

.field private final mMajorChannelNumber:I

.field private final mMinorChannelNumber:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mChannelNumberFormat:I

    .line 4
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    .line 5
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMinorChannelNumber:I

    return-void
.end method

.method public synthetic constructor <init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;-><init>(III)V

    return-void
.end method

.method public static synthetic access$400(Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;[BI)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->toByteArray([BI)I

    move-result p0

    return p0
.end method

.method private toByteArray([BI)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mChannelNumberFormat:I

    .line 2
    .line 3
    shl-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget v1, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMajorChannelNumber:I

    .line 6
    .line 7
    ushr-int/lit8 v2, v1, 0x8

    .line 8
    .line 9
    and-int/lit8 v2, v2, 0x3

    .line 10
    .line 11
    or-int/2addr v0, v2

    .line 12
    int-to-byte v0, v0

    .line 13
    aput-byte v0, p1, p2

    .line 14
    .line 15
    add-int/lit8 v0, p2, 0x1

    .line 16
    .line 17
    and-int/lit16 v1, v1, 0xff

    .line 18
    .line 19
    int-to-byte v1, v1

    .line 20
    aput-byte v1, p1, v0

    .line 21
    .line 22
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$ChannelIdentifier;->mMinorChannelNumber:I

    .line 23
    .line 24
    int-to-short v0, v0

    .line 25
    add-int/lit8 p2, p2, 0x2

    .line 26
    .line 27
    invoke-static {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources;->access$200(S[BI)I

    .line 28
    .line 29
    .line 30
    const/4 p1, 0x4

    .line 31
    return p1
.end method

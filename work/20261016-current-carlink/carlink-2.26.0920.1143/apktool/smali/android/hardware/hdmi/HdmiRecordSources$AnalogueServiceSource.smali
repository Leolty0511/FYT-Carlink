.class public final Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnalogueServiceSource"
.end annotation


# static fields
.field static final EXTRA_DATA_SIZE:I = 0x4


# instance fields
.field private final mBroadcastSystem:I

.field private final mBroadcastType:I

.field private final mFrequency:I


# direct methods
.method private constructor <init>(III)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x4

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 3
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastType:I

    .line 4
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mFrequency:I

    .line 5
    iput p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastSystem:I

    return-void
.end method

.method public synthetic constructor <init>(IIILandroid/hardware/hdmi/HdmiRecordSources$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;-><init>(III)V

    return-void
.end method


# virtual methods
.method public extraParamToByteArray([BI)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastType:I

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p2

    .line 5
    .line 6
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mFrequency:I

    .line 7
    .line 8
    int-to-short v0, v0

    .line 9
    add-int/lit8 v1, p2, 0x1

    .line 10
    .line 11
    invoke-static {v0, p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources;->access$200(S[BI)I

    .line 12
    .line 13
    .line 14
    add-int/lit8 p2, p2, 0x3

    .line 15
    .line 16
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$AnalogueServiceSource;->mBroadcastSystem:I

    .line 17
    .line 18
    int-to-byte v0, v0

    .line 19
    aput-byte v0, p1, p2

    .line 20
    .line 21
    const/4 p1, 0x4

    .line 22
    return p1
.end method

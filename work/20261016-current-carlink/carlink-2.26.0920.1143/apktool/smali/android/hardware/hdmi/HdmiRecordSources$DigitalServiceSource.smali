.class public final Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DigitalServiceSource"
.end annotation


# static fields
.field private static final DIGITAL_SERVICE_IDENTIFIED_BY_CHANNEL:I = 0x1

.field private static final DIGITAL_SERVICE_IDENTIFIED_BY_DIGITAL_ID:I = 0x0

.field static final EXTRA_DATA_SIZE:I = 0x7


# instance fields
.field private final mBroadcastSystem:I

.field private final mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

.field private final mIdentificationMethod:I


# direct methods
.method private constructor <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x7

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 3
    iput p1, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    .line 4
    iput p2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    .line 5
    iput-object p3, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;Landroid/hardware/hdmi/HdmiRecordSources$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;-><init>(IILandroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;)V

    return-void
.end method


# virtual methods
.method public extraParamToByteArray([BI)I
    .locals 3

    .line 1
    iget v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentificationMethod:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    shl-int/2addr v0, v1

    .line 5
    iget v2, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mBroadcastSystem:I

    .line 6
    .line 7
    and-int/lit8 v2, v2, 0x7f

    .line 8
    .line 9
    or-int/2addr v0, v2

    .line 10
    int-to-byte v0, v0

    .line 11
    aput-byte v0, p1, p2

    .line 12
    .line 13
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceSource;->mIdentification:Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;

    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x1

    .line 16
    .line 17
    invoke-interface {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$DigitalServiceIdentification;->toByteArray([BI)I

    .line 18
    .line 19
    .line 20
    return v1
.end method

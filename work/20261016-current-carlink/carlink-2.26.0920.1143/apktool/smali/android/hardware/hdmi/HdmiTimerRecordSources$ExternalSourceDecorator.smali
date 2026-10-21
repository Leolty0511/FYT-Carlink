.class Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;
.super Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExternalSourceDecorator"
.end annotation


# instance fields
.field private final mExternalSourceSpecifier:I

.field private final mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;I)V
    .locals 2

    .line 2
    iget v0, p1, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->mSourceType:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;-><init>(II)V

    .line 3
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 4
    iput p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mExternalSourceSpecifier:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;ILandroid/hardware/hdmi/HdmiTimerRecordSources$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;-><init>(Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;I)V

    return-void
.end method


# virtual methods
.method public extraParamToByteArray([BI)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mExternalSourceSpecifier:I

    .line 2
    .line 3
    int-to-byte v0, v0

    .line 4
    aput-byte v0, p1, p2

    .line 5
    .line 6
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$ExternalSourceDecorator;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 7
    .line 8
    add-int/lit8 p2, p2, 0x1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

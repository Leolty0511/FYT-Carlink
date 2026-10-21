.class public final Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/hdmi/HdmiTimerRecordSources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimerRecordSource"
.end annotation


# instance fields
.field private final mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

.field private final mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    .line 4
    iput-object p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;Landroid/hardware/hdmi/HdmiTimerRecordSources$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;-><init>(Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;)V

    return-void
.end method


# virtual methods
.method public getDataSize()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->getDataSize()I

    move-result v0

    iget-object v1, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toByteArray([BI)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mTimerInfo:Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerInfo;->toByteArray([BI)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p2

    .line 8
    iget-object p2, p0, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->mRecordSource:Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p2, v1, p1, v0}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiTimerRecordSources$TimerRecordSource;->getDataSize()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

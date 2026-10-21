.class final Landroid/hardware/hdmi/HdmiTvClient$3;
.super Landroid/hardware/hdmi/IHdmiRecordListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/hdmi/HdmiTvClient;->getListenerWrapper(Landroid/hardware/hdmi/HdmiRecordListener;)Landroid/hardware/hdmi/IHdmiRecordListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/hardware/hdmi/HdmiRecordListener;


# direct methods
.method public constructor <init>(Landroid/hardware/hdmi/HdmiRecordListener;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiRecordListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getOneTouchRecordSource(I)[B
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordSourceRequested(I)Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Llibcore/util/EmptyArray;->BYTE:[B

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    invoke-virtual {p1, v0}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->getDataSize(Z)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    new-array v1, v1, [B

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/hdmi/HdmiRecordSources$RecordSource;->toByteArray(Z[BI)I

    .line 21
    .line 22
    .line 23
    return-object v1
.end method

.method public onClearTimerRecordingResult(II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onClearTimerRecordingResult(II)V

    return-void
.end method

.method public onOneTouchRecordResult(II)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onOneTouchRecordResult(II)V

    return-void
.end method

.method public onTimerRecordingResult(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/hardware/hdmi/HdmiTvClient$3;->val$callback:Landroid/hardware/hdmi/HdmiRecordListener;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;->parseFrom(I)Landroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/hardware/hdmi/HdmiRecordListener;->onTimerRecordingResult(ILandroid/hardware/hdmi/HdmiRecordListener$TimerStatusData;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

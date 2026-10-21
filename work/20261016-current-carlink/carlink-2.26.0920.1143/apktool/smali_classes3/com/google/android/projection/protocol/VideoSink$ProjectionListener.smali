.class public abstract Lcom/google/android/projection/protocol/VideoSink$ProjectionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/VideoSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ProjectionListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionTakenNotification(Lcom/google/android/projection/proto/Protos$ActionType;)V
    .locals 0

    return-void
.end method

.method public onCodecConfig([B)V
    .locals 0

    return-void
.end method

.method public onCodecSetup(I)V
    .locals 0

    return-void
.end method

.method public onProjectionUpdate(Lcom/google/android/projection/protocol/VideoFrame;)V
    .locals 0

    return-void
.end method

.method public onSourceVideoConfigChanged(IILcom/google/android/projection/proto/Protos$VideoConfiguration;)V
    .locals 0

    return-void
.end method

.method public onUpdateUiConfigReply(Lcom/google/android/projection/proto/Protos$UiConfig;)V
    .locals 0

    return-void
.end method

.method public onVideoFocusModeChange(II)V
    .locals 0

    return-void
.end method

.method public onVideoFocusRequest(II)V
    .locals 0

    return-void
.end method

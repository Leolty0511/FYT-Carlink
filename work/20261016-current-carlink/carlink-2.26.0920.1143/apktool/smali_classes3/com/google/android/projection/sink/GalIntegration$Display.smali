.class public Lcom/google/android/projection/sink/GalIntegration$Display;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/GalIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Display"
.end annotation


# instance fields
.field private final displayId:I

.field private final displayType:Lcom/google/android/projection/proto/Protos$DisplayType;

.field private final inputSource:Lcom/google/android/projection/protocol/InputSource;

.field private keyCode:Lcom/google/android/projection/proto/Protos$KeyCode;

.field private final videoSink:Lcom/google/android/projection/protocol/VideoSink;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/proto/Protos$DisplayType;Lcom/google/android/projection/protocol/VideoSink;Lcom/google/android/projection/protocol/InputSource;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayId:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayType:Lcom/google/android/projection/proto/Protos$DisplayType;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->videoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->inputSource:Lcom/google/android/projection/protocol/InputSource;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayId:I

    return v0
.end method

.method public getDisplayType()Lcom/google/android/projection/proto/Protos$DisplayType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayType:Lcom/google/android/projection/proto/Protos$DisplayType;

    return-object v0
.end method

.method public getInputSource()Lcom/google/android/projection/protocol/InputSource;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->inputSource:Lcom/google/android/projection/protocol/InputSource;

    return-object v0
.end method

.method public getVideoSink()Lcom/google/android/projection/protocol/VideoSink;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->videoSink:Lcom/google/android/projection/protocol/VideoSink;

    return-object v0
.end method

.method public setInitialContentKeyCode(Lcom/google/android/projection/proto/Protos$KeyCode;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->keyCode:Lcom/google/android/projection/proto/Protos$KeyCode;

    return-void
.end method

.method public setUpInputSourceProperties()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->inputSource:Lcom/google/android/projection/protocol/InputSource;

    iget v1, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayId:I

    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/InputSource;->setDisplayId(I)V

    return-void
.end method

.method public setUpVideoSinkProperties()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->videoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/projection/proto/Protos$MediaCodecType;->MEDIA_CODEC_VIDEO_H264_BP:Lcom/google/android/projection/proto/Protos$MediaCodecType;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/VideoSink;->setCodecType(Lcom/google/android/projection/proto/Protos$MediaCodecType;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->videoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayId:I

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->displayType:Lcom/google/android/projection/proto/Protos$DisplayType;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/projection/protocol/VideoSink;->setDisplayIdAndType(ILcom/google/android/projection/proto/Protos$DisplayType;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->keyCode:Lcom/google/android/projection/proto/Protos$KeyCode;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/projection/sink/GalIntegration$Display;->videoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/projection/protocol/VideoSink;->setInitialContentKeyCode(Lcom/google/android/projection/proto/Protos$KeyCode;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

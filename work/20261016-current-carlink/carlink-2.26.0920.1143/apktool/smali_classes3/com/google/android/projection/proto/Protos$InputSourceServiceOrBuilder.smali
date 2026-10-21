.class public interface abstract Lcom/google/android/projection/proto/Protos$InputSourceServiceOrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/proto/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InputSourceServiceOrBuilder"
.end annotation


# virtual methods
.method public abstract getDisplayId()I
.end method

.method public abstract getFeedbackEventsSupported(I)Lcom/google/android/projection/proto/Protos$FeedbackEvent;
.end method

.method public abstract getFeedbackEventsSupportedCount()I
.end method

.method public abstract getFeedbackEventsSupportedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$FeedbackEvent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeycodesSupported(I)I
.end method

.method public abstract getKeycodesSupportedCount()I
.end method

.method public abstract getKeycodesSupportedList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchpad(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;
.end method

.method public abstract getTouchpadCount()I
.end method

.method public abstract getTouchpadList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPad;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchpadOrBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;
.end method

.method public abstract getTouchpadOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchPadOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchscreen(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;
.end method

.method public abstract getTouchscreenCount()I
.end method

.method public abstract getTouchscreenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreen;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTouchscreenOrBuilder(I)Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;
.end method

.method public abstract getTouchscreenOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$InputSourceService$TouchScreenOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDisplayId()Z
.end method

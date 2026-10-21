.class public interface abstract Lcom/google/android/projection/proto/Protos$AckOrBuilder;
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
    name = "AckOrBuilder"
.end annotation


# virtual methods
.method public abstract getAck()I
.end method

.method public abstract getReceiveTimestampNs(I)J
.end method

.method public abstract getReceiveTimestampNsCount()I
.end method

.method public abstract getReceiveTimestampNsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSessionId()I
.end method

.method public abstract hasAck()Z
.end method

.method public abstract hasSessionId()Z
.end method

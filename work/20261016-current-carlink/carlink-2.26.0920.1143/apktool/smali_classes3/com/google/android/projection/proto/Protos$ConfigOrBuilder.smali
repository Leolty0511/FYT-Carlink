.class public interface abstract Lcom/google/android/projection/proto/Protos$ConfigOrBuilder;
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
    name = "ConfigOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfigurationIndices(I)I
.end method

.method public abstract getConfigurationIndicesCount()I
.end method

.method public abstract getConfigurationIndicesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxUnacked()I
.end method

.method public abstract getStatus()Lcom/google/android/projection/proto/Protos$Config$Status;
.end method

.method public abstract hasMaxUnacked()Z
.end method

.method public abstract hasStatus()Z
.end method

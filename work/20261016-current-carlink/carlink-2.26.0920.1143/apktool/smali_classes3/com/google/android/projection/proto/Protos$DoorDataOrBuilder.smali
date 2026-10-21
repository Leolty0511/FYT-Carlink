.class public interface abstract Lcom/google/android/projection/proto/Protos$DoorDataOrBuilder;
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
    name = "DoorDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getDoorOpen(I)Z
.end method

.method public abstract getDoorOpenCount()I
.end method

.method public abstract getDoorOpenList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHoodOpen()Z
.end method

.method public abstract getTrunkOpen()Z
.end method

.method public abstract hasHoodOpen()Z
.end method

.method public abstract hasTrunkOpen()Z
.end method

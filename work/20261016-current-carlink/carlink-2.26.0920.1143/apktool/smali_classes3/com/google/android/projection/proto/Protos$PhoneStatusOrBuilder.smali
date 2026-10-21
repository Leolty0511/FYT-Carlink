.class public interface abstract Lcom/google/android/projection/proto/Protos$PhoneStatusOrBuilder;
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
    name = "PhoneStatusOrBuilder"
.end annotation


# virtual methods
.method public abstract getCalls(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;
.end method

.method public abstract getCallsCount()I
.end method

.method public abstract getCallsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$PhoneStatus$Call;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCallsOrBuilder(I)Lcom/google/android/projection/proto/Protos$PhoneStatus$CallOrBuilder;
.end method

.method public abstract getCallsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$PhoneStatus$CallOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSignalStrength()I
.end method

.method public abstract hasSignalStrength()Z
.end method

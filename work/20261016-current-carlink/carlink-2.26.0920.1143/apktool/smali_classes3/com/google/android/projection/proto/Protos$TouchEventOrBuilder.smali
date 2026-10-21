.class public interface abstract Lcom/google/android/projection/proto/Protos$TouchEventOrBuilder;
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
    name = "TouchEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getAction()Lcom/google/android/projection/proto/Protos$PointerAction;
.end method

.method public abstract getActionIndex()I
.end method

.method public abstract getPointerData(I)Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;
.end method

.method public abstract getPointerDataCount()I
.end method

.method public abstract getPointerDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$TouchEvent$Pointer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPointerDataOrBuilder(I)Lcom/google/android/projection/proto/Protos$TouchEvent$PointerOrBuilder;
.end method

.method public abstract getPointerDataOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$TouchEvent$PointerOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAction()Z
.end method

.method public abstract hasActionIndex()Z
.end method

.class public interface abstract Lcom/google/android/projection/proto/Protos$KeyEventOrBuilder;
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
    name = "KeyEventOrBuilder"
.end annotation


# virtual methods
.method public abstract getKeys(I)Lcom/google/android/projection/proto/Protos$KeyEvent$Key;
.end method

.method public abstract getKeysCount()I
.end method

.method public abstract getKeysList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$KeyEvent$Key;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKeysOrBuilder(I)Lcom/google/android/projection/proto/Protos$KeyEvent$KeyOrBuilder;
.end method

.method public abstract getKeysOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$KeyEvent$KeyOrBuilder;",
            ">;"
        }
    .end annotation
.end method

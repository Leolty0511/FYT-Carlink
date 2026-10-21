.class public interface abstract Lcom/google/android/projection/proto/Protos$UiConfigOrBuilder;
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
    name = "UiConfigOrBuilder"
.end annotation


# virtual methods
.method public abstract getActions(I)Lcom/google/android/projection/proto/Protos$Action;
.end method

.method public abstract getActionsCount()I
.end method

.method public abstract getActionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$Action;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getActionsOrBuilder(I)Lcom/google/android/projection/proto/Protos$ActionOrBuilder;
.end method

.method public abstract getActionsOrBuilderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/projection/proto/Protos$ActionOrBuilder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContentInsets()Lcom/google/android/projection/proto/Protos$Insets;
.end method

.method public abstract getContentInsetsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
.end method

.method public abstract getMargins()Lcom/google/android/projection/proto/Protos$Insets;
.end method

.method public abstract getMarginsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
.end method

.method public abstract getStableContentInsets()Lcom/google/android/projection/proto/Protos$Insets;
.end method

.method public abstract getStableContentInsetsOrBuilder()Lcom/google/android/projection/proto/Protos$InsetsOrBuilder;
.end method

.method public abstract getUiElements(I)Lcom/google/android/projection/proto/Protos$UiElement;
.end method

.method public abstract getUiElementsCount()I
.end method

.method public abstract getUiElementsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/proto/Protos$UiElement;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUiTheme()Lcom/google/android/projection/proto/Protos$UiTheme;
.end method

.method public abstract hasContentInsets()Z
.end method

.method public abstract hasMargins()Z
.end method

.method public abstract hasStableContentInsets()Z
.end method

.method public abstract hasUiTheme()Z
.end method

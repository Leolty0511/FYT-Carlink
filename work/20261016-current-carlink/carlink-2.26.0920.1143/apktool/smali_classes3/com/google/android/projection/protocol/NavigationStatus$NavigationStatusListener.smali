.class public interface abstract Lcom/google/android/projection/protocol/NavigationStatus$NavigationStatusListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/NavigationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavigationStatusListener"
.end annotation


# virtual methods
.method public abstract onNavigationCurrentPosition(Lcom/google/android/projection/proto/Protos$NavigationCurrentPosition;)V
.end method

.method public abstract onNavigationState(Lcom/google/android/projection/proto/Protos$NavigationState;)V
.end method

.method public abstract onNextTurn(Ljava/lang/String;II[BII)V
.end method

.method public abstract onNextTurnDistance(IIII)V
.end method

.method public abstract onStatus(I)V
.end method

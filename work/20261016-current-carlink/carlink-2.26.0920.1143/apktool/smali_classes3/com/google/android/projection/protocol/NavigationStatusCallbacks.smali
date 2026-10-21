.class interface abstract Lcom/google/android/projection/protocol/NavigationStatusCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/NativeCallback;


# virtual methods
.method public abstract navigationCurrentPositionCallback([B)V
.end method

.method public abstract navigationNextTurnCallback(Ljava/lang/String;II[BII)V
.end method

.method public abstract navigationNextTurnDistanceCallback(IIII)V
.end method

.method public abstract navigationStateCallback([B)V
.end method

.method public abstract navigationStatusCallback(I)V
.end method

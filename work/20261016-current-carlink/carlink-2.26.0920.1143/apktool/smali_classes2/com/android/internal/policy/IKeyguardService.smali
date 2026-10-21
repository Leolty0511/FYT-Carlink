.class public interface abstract Lcom/android/internal/policy/IKeyguardService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub;
    }
.end annotation


# virtual methods
.method public abstract addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V
.end method

.method public abstract dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
.end method

.method public abstract doKeyguardTimeout(Landroid/os/Bundle;)V
.end method

.method public abstract onBootCompleted()V
.end method

.method public abstract onDreamingStarted()V
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onFinishedGoingToSleep(IZ)V
.end method

.method public abstract onFinishedWakingUp()V
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract onScreenTurningOff()V
.end method

.method public abstract onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V
.end method

.method public abstract onShortPowerPressedGoHome()V
.end method

.method public abstract onStartedGoingToSleep(I)V
.end method

.method public abstract onStartedWakingUp()V
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract setCurrentUser(I)V
.end method

.method public abstract setKeyguardEnabled(Z)V
.end method

.method public abstract setOccluded(ZZ)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V
.end method

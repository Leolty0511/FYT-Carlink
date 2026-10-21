.class public interface abstract Landroid/app/ITaskStackListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ITaskStackListener$Stub;
    }
.end annotation


# static fields
.field public static final FORCED_RESIZEABLE_REASON_SECONDARY_DISPLAY:I = 0x2

.field public static final FORCED_RESIZEABLE_REASON_SPLIT_SCREEN:I = 0x1


# virtual methods
.method public abstract onActivityDismissingDockedStack()V
.end method

.method public abstract onActivityForcedResizable(Ljava/lang/String;II)V
.end method

.method public abstract onActivityLaunchOnSecondaryDisplayFailed()V
.end method

.method public abstract onActivityPinned(Ljava/lang/String;II)V
.end method

.method public abstract onActivityRequestedOrientationChanged(II)V
.end method

.method public abstract onActivityUnpinned()V
.end method

.method public abstract onPinnedActivityRestartAttempt(Z)V
.end method

.method public abstract onPinnedStackAnimationEnded()V
.end method

.method public abstract onPinnedStackAnimationStarted()V
.end method

.method public abstract onTaskCreated(ILandroid/content/ComponentName;)V
.end method

.method public abstract onTaskDescriptionChanged(ILandroid/app/ActivityManager$TaskDescription;)V
.end method

.method public abstract onTaskMovedToFront(I)V
.end method

.method public abstract onTaskProfileLocked(II)V
.end method

.method public abstract onTaskRemovalStarted(I)V
.end method

.method public abstract onTaskRemoved(I)V
.end method

.method public abstract onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
.end method

.method public abstract onTaskStackChanged()V
.end method

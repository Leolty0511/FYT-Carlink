package android.app;

import android.content.ComponentName;

/* JADX INFO: loaded from: classes.dex */
public abstract class TaskStackListener extends ITaskStackListener.Stub {
    @Override // android.app.ITaskStackListener
    public void onActivityDismissingDockedStack() {
    }

    @Override // android.app.ITaskStackListener
    public void onActivityForcedResizable(String str, int i2, int i3) {
    }

    @Override // android.app.ITaskStackListener
    public void onActivityLaunchOnSecondaryDisplayFailed() {
    }

    @Override // android.app.ITaskStackListener
    public void onActivityPinned(String str, int i2, int i3) {
    }

    @Override // android.app.ITaskStackListener
    public void onActivityRequestedOrientationChanged(int i2, int i3) {
    }

    @Override // android.app.ITaskStackListener
    public void onActivityUnpinned() {
    }

    @Override // android.app.ITaskStackListener
    public void onPinnedActivityRestartAttempt(boolean z2) {
    }

    @Override // android.app.ITaskStackListener
    public void onPinnedStackAnimationEnded() {
    }

    @Override // android.app.ITaskStackListener
    public void onPinnedStackAnimationStarted() {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskCreated(int i2, ComponentName componentName) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskDescriptionChanged(int i2, ActivityManager.TaskDescription taskDescription) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskMovedToFront(int i2) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskProfileLocked(int i2, int i3) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskRemovalStarted(int i2) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskRemoved(int i2) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskSnapshotChanged(int i2, ActivityManager.TaskSnapshot taskSnapshot) {
    }

    @Override // android.app.ITaskStackListener
    public void onTaskStackChanged() {
    }
}

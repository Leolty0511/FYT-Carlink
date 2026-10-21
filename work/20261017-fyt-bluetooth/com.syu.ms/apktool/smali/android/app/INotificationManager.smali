.class public interface abstract Landroid/app/INotificationManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/INotificationManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
.end method

.method public abstract cancelAllNotifications(Ljava/lang/String;I)V
.end method

.method public abstract cancelAllNotificationsFromListener(Landroid/service/notification/INotificationListener;)V
.end method

.method public abstract cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public abstract cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
.end method

.method public abstract enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
.end method

.method public abstract enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
.end method

.method public abstract getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;)[Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;
.end method

.method public abstract registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
.end method

.method public abstract setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
.end method

.method public abstract unregisterListener(Landroid/service/notification/INotificationListener;I)V
.end method

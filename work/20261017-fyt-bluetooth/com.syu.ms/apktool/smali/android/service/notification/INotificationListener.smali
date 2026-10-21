.class public interface abstract Landroid/service/notification/INotificationListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/INotificationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
.end method

.class public interface abstract Landroid/companion/ICompanionDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
.end method

.method public abstract disassociate(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNotificationAccess(Landroid/content/ComponentName;)Z
.end method

.method public abstract requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
.end method

.method public abstract stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
.end method

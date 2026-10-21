.class public interface abstract Landroid/content/IRestrictionsManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/IRestrictionsManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract createLocalApprovalIntent()Landroid/content/Intent;
.end method

.method public abstract getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
.end method

.method public abstract hasRestrictionsProvider()Z
.end method

.method public abstract notifyPermissionResponse(Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method

.method public abstract requestPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method

.class public interface abstract Landroid/app/timezone/IRulesManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/timezone/IRulesManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getRulesState()Landroid/app/timezone/RulesState;
.end method

.method public abstract requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
.end method

.method public abstract requestNothing([BZ)V
.end method

.method public abstract requestUninstall([BLandroid/app/timezone/ICallback;)I
.end method

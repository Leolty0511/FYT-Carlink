.class public interface abstract Landroid/os/storage/IMountServiceListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountServiceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onUsbMassStorageConnectionChanged(Z)V
.end method

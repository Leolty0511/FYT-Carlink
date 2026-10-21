.class public interface abstract Landroid/print/IPrinterDiscoveryObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/IPrinterDiscoveryObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
.end method

.method public abstract onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
.end method

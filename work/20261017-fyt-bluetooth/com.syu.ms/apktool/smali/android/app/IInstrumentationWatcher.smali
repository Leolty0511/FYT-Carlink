.class public interface abstract Landroid/app/IInstrumentationWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IInstrumentationWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
.end method

.method public abstract instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
.end method

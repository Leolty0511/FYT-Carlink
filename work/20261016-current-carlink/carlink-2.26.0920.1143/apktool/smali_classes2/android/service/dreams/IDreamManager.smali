.class public interface abstract Landroid/service/dreams/IDreamManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract awaken()V
.end method

.method public abstract dream()V
.end method

.method public abstract finishSelf(Landroid/os/IBinder;Z)V
.end method

.method public abstract getDefaultDreamComponent()Landroid/content/ComponentName;
.end method

.method public abstract getDreamComponents()[Landroid/content/ComponentName;
.end method

.method public abstract isDreaming()Z
.end method

.method public abstract setDreamComponents([Landroid/content/ComponentName;)V
.end method

.method public abstract startDozing(Landroid/os/IBinder;II)V
.end method

.method public abstract stopDozing(Landroid/os/IBinder;)V
.end method

.method public abstract testDream(Landroid/content/ComponentName;)V
.end method

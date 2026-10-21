.class public interface abstract Landroid/nfc/IAppCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/IAppCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract createBeamShareData()Landroid/nfc/BeamShareData;
.end method

.method public abstract onNdefPushComplete()V
.end method

.method public abstract onTagDiscovered(Landroid/nfc/Tag;)V
.end method

.class public interface abstract Landroid/nfc/INfcAdapterExtras;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapterExtras$Stub;
    }
.end annotation


# virtual methods
.method public abstract authenticate(Ljava/lang/String;[B)V
.end method

.method public abstract close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
.end method

.method public abstract getCardEmulationRoute(Ljava/lang/String;)I
.end method

.method public abstract getDriverName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
.end method

.method public abstract setCardEmulationRoute(Ljava/lang/String;I)V
.end method

.method public abstract transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
.end method

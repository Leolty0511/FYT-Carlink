.class public interface abstract Landroid/nfc/INfcFCardEmulation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcFCardEmulation$Stub;
    }
.end annotation


# virtual methods
.method public abstract disableNfcFForegroundService()Z
.end method

.method public abstract enableNfcFForegroundService(Landroid/content/ComponentName;)Z
.end method

.method public abstract getMaxNumOfRegisterableSystemCodes()I
.end method

.method public abstract getNfcFServices(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract removeSystemCodeForService(ILandroid/content/ComponentName;)Z
.end method

.method public abstract setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
.end method

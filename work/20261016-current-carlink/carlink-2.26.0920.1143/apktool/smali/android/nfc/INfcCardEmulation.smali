.class public interface abstract Landroid/nfc/INfcCardEmulation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcCardEmulation$Stub;
    }
.end annotation


# virtual methods
.method public abstract getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
.end method

.method public abstract getServices(ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
.end method

.method public abstract removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract setDefaultForNextTap(ILandroid/content/ComponentName;)Z
.end method

.method public abstract setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
.end method

.method public abstract setPreferredService(Landroid/content/ComponentName;)Z
.end method

.method public abstract supportsAidPrefixRegistration()Z
.end method

.method public abstract unsetPreferredService()Z
.end method

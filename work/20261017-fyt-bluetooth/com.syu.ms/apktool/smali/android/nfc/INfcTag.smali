.class public interface abstract Landroid/nfc/INfcTag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcTag$Stub;
    }
.end annotation


# virtual methods
.method public abstract canMakeReadOnly(I)Z
.end method

.method public abstract close(I)I
.end method

.method public abstract connect(II)I
.end method

.method public abstract formatNdef(I[B)I
.end method

.method public abstract getExtendedLengthApdusSupported()Z
.end method

.method public abstract getMaxTransceiveLength(I)I
.end method

.method public abstract getTechList(I)[I
.end method

.method public abstract getTimeout(I)I
.end method

.method public abstract isNdef(I)Z
.end method

.method public abstract isPresent(I)Z
.end method

.method public abstract ndefIsWritable(I)Z
.end method

.method public abstract ndefMakeReadOnly(I)I
.end method

.method public abstract ndefRead(I)Landroid/nfc/NdefMessage;
.end method

.method public abstract ndefWrite(ILandroid/nfc/NdefMessage;)I
.end method

.method public abstract reconnect(I)I
.end method

.method public abstract rediscover(I)Landroid/nfc/Tag;
.end method

.method public abstract resetTimeouts()V
.end method

.method public abstract setTimeout(II)I
.end method

.method public abstract transceive(I[BZ)Landroid/nfc/TransceiveResult;
.end method

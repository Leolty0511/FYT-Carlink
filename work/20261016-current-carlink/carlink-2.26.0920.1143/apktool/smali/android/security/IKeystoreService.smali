.class public interface abstract Landroid/security/IKeystoreService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IKeystoreService$Stub;
    }
.end annotation


# virtual methods
.method public abstract abort(Landroid/os/IBinder;)I
.end method

.method public abstract addAuthToken([B)I
.end method

.method public abstract addRngEntropy([B)I
.end method

.method public abstract attestDeviceIds(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
.end method

.method public abstract attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
.end method

.method public abstract begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
.end method

.method public abstract clear_uid(J)I
.end method

.method public abstract del(Ljava/lang/String;I)I
.end method

.method public abstract duplicate(Ljava/lang/String;ILjava/lang/String;I)I
.end method

.method public abstract exist(Ljava/lang/String;I)I
.end method

.method public abstract exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
.end method

.method public abstract finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
.end method

.method public abstract generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I
.end method

.method public abstract generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
.end method

.method public abstract get(Ljava/lang/String;I)[B
.end method

.method public abstract getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
.end method

.method public abstract getState(I)I
.end method

.method public abstract get_pubkey(Ljava/lang/String;)[B
.end method

.method public abstract getmtime(Ljava/lang/String;I)J
.end method

.method public abstract grant(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
.end method

.method public abstract import_key(Ljava/lang/String;[BII)I
.end method

.method public abstract insert(Ljava/lang/String;[BII)I
.end method

.method public abstract isEmpty(I)I
.end method

.method public abstract isOperationAuthorized(Landroid/os/IBinder;)Z
.end method

.method public abstract is_hardware_backed(Ljava/lang/String;)I
.end method

.method public abstract list(Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract lock(I)I
.end method

.method public abstract onDeviceOffBody()I
.end method

.method public abstract onUserAdded(II)I
.end method

.method public abstract onUserPasswordChanged(ILjava/lang/String;)I
.end method

.method public abstract onUserRemoved(I)I
.end method

.method public abstract reset()I
.end method

.method public abstract sign(Ljava/lang/String;[B)[B
.end method

.method public abstract ungrant(Ljava/lang/String;I)I
.end method

.method public abstract unlock(ILjava/lang/String;)I
.end method

.method public abstract update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
.end method

.method public abstract verify(Ljava/lang/String;[B[B)I
.end method

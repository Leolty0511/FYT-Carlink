.class public interface abstract Lcom/android/internal/widget/ILockSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ILockSettings$Stub;
    }
.end annotation


# virtual methods
.method public abstract addEscrowToken([BI)J
.end method

.method public abstract checkCredential(Ljava/lang/String;IILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
.end method

.method public abstract checkVoldPassword(I)Z
.end method

.method public abstract getBoolean(Ljava/lang/String;ZI)Z
.end method

.method public abstract getLong(Ljava/lang/String;JI)J
.end method

.method public abstract getSeparateProfileChallengeEnabled(I)Z
.end method

.method public abstract getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getStrongAuthForUser(I)I
.end method

.method public abstract havePassword(I)Z
.end method

.method public abstract havePattern(I)Z
.end method

.method public abstract isEscrowTokenActive(JI)Z
.end method

.method public abstract registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
.end method

.method public abstract removeEscrowToken(JI)Z
.end method

.method public abstract requireStrongAuth(II)V
.end method

.method public abstract resetKeyStore(I)V
.end method

.method public abstract setBoolean(Ljava/lang/String;ZI)V
.end method

.method public abstract setLockCredential(Ljava/lang/String;ILjava/lang/String;II)V
.end method

.method public abstract setLockCredentialWithToken(Ljava/lang/String;IJ[BII)Z
.end method

.method public abstract setLong(Ljava/lang/String;JI)V
.end method

.method public abstract setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V
.end method

.method public abstract setString(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract systemReady()V
.end method

.method public abstract unlockUserWithToken(J[BI)V
.end method

.method public abstract unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
.end method

.method public abstract userPresent(I)V
.end method

.method public abstract verifyCredential(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
.end method

.method public abstract verifyTiedProfileChallenge(Ljava/lang/String;IJI)Lcom/android/internal/widget/VerifyCredentialResponse;
.end method

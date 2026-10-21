.class public interface abstract Landroid/accounts/IAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/IAccountManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract addSharedAccountAsUser(Landroid/accounts/Account;I)Z
.end method

.method public abstract clearPassword(Landroid/accounts/Account;)V
.end method

.method public abstract confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
.end method

.method public abstract editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
.end method

.method public abstract getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAccountsAsUser(Ljava/lang/String;I)[Landroid/accounts/Account;
.end method

.method public abstract getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAccountsForPackage(Ljava/lang/String;I)[Landroid/accounts/Account;
.end method

.method public abstract getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end method

.method public abstract getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
.end method

.method public abstract getPassword(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract getSharedAccountsAsUser(I)[Landroid/accounts/Account;
.end method

.method public abstract getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
.end method

.method public abstract removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
.end method

.method public abstract setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
.end method

.method public abstract updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

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
.method public abstract accountAuthenticated(Landroid/accounts/Account;)Z
.end method

.method public abstract addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
.end method

.method public abstract addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
.end method

.method public abstract addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)Z
.end method

.method public abstract addSharedAccountsFromParentUser(IILjava/lang/String;)V
.end method

.method public abstract clearPassword(Landroid/accounts/Account;)V
.end method

.method public abstract confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
.end method

.method public abstract copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
.end method

.method public abstract createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
.end method

.method public abstract editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
.end method

.method public abstract finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
.end method

.method public abstract getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
.end method

.method public abstract getAccounts(Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
.end method

.method public abstract getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
.end method

.method public abstract getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
.end method

.method public abstract getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
.end method

.method public abstract getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
.end method

.method public abstract getPassword(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract getSharedAccountsAsUser(I)[Landroid/accounts/Account;
.end method

.method public abstract getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
.end method

.method public abstract hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract onAccountAccessed(Ljava/lang/String;)V
.end method

.method public abstract peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V
.end method

.method public abstract removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
.end method

.method public abstract removeAccountExplicitly(Landroid/accounts/Account;)Z
.end method

.method public abstract removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
.end method

.method public abstract renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
.end method

.method public abstract setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
.end method

.method public abstract setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
.end method

.method public abstract setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract someUserHasAccount(Landroid/accounts/Account;)Z
.end method

.method public abstract startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

.method public abstract unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
.end method

.method public abstract updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
.end method

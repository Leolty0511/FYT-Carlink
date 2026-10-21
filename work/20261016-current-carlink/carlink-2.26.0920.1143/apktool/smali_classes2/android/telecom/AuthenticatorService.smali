.class public Landroid/telecom/AuthenticatorService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/AuthenticatorService$Authenticator;
    }
.end annotation


# static fields
.field private static mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    sget-object p1, Landroid/telecom/AuthenticatorService;->mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;

    invoke-virtual {p1}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    new-instance v0, Landroid/telecom/AuthenticatorService$Authenticator;

    invoke-direct {v0, p0, p0}, Landroid/telecom/AuthenticatorService$Authenticator;-><init>(Landroid/telecom/AuthenticatorService;Landroid/content/Context;)V

    sput-object v0, Landroid/telecom/AuthenticatorService;->mAuthenticator:Landroid/telecom/AuthenticatorService$Authenticator;

    return-void
.end method

.class public final synthetic Landroid/app/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Landroid/app/RecoverableSecurityException;


# direct methods
.method public synthetic constructor <init>(Landroid/app/RecoverableSecurityException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/n;->b:Landroid/app/RecoverableSecurityException;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/n;->b:Landroid/app/RecoverableSecurityException;

    invoke-static {v0, p1, p2}, Landroid/app/RecoverableSecurityException$LocalDialog;->b(Landroid/app/RecoverableSecurityException;Landroid/content/DialogInterface;I)V

    return-void
.end method

.class public final Landroid/security/KeyStoreParameter$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/KeyStoreParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mFlags:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context == null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public build()Landroid/security/KeyStoreParameter;
    .locals 3

    .line 1
    new-instance v0, Landroid/security/KeyStoreParameter;

    iget v1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/security/KeyStoreParameter;-><init>(ILandroid/security/KeyStoreParameter$1;)V

    return-object v0
.end method

.method public setEncryptionRequired(Z)Landroid/security/KeyStoreParameter$Builder;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroid/security/KeyStoreParameter$Builder;->mFlags:I

    :goto_0
    return-object p0
.end method

.class public final Landroid/security/net/config/TrustAnchor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final certificate:Ljava/security/cert/X509Certificate;

.field public final overridesPins:Z


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Landroid/security/net/config/TrustAnchor;->certificate:Ljava/security/cert/X509Certificate;

    .line 7
    .line 8
    iput-boolean p2, p0, Landroid/security/net/config/TrustAnchor;->overridesPins:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 12
    .line 13
    const-string p2, "certificate"

    .line 14
    .line 15
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

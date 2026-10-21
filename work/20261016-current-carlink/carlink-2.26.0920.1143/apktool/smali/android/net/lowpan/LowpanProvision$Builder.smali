.class public Landroid/net/lowpan/LowpanProvision$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanProvision;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final provision:Landroid/net/lowpan/LowpanProvision;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/net/lowpan/LowpanProvision;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanProvision;-><init>(Landroid/net/lowpan/LowpanProvision$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public build()Landroid/net/lowpan/LowpanProvision;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    return-object v0
.end method

.method public setLowpanCredential(Landroid/net/lowpan/LowpanCredential;)Landroid/net/lowpan/LowpanProvision$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanProvision;->access$202(Landroid/net/lowpan/LowpanProvision;Landroid/net/lowpan/LowpanCredential;)Landroid/net/lowpan/LowpanCredential;

    return-object p0
.end method

.method public setLowpanIdentity(Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanProvision$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanProvision$Builder;->provision:Landroid/net/lowpan/LowpanProvision;

    invoke-static {v0, p1}, Landroid/net/lowpan/LowpanProvision;->access$102(Landroid/net/lowpan/LowpanProvision;Landroid/net/lowpan/LowpanIdentity;)Landroid/net/lowpan/LowpanIdentity;

    return-object p0
.end method

.class public Landroid/os/PMFactoryEx;
.super Landroid/os/PMFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/PMFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtraPowerManager(Landroid/content/Context;)Landroid/os/AbsPowerManager;
    .locals 1

    new-instance v0, Landroid/os/PowerManagerEx;

    invoke-direct {v0, p1}, Landroid/os/PowerManagerEx;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.class public Landroid/app/PowerGuruFactoryEx;
.super Landroid/app/PowerGuruFactory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/PowerGuruFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createExtraPowerGuru(Landroid/app/IPowerGuru;Landroid/content/Context;)Landroid/app/AbsPowerGuru;
    .locals 1

    new-instance v0, Landroid/app/PowerGuru;

    invoke-direct {v0, p1, p2}, Landroid/app/PowerGuru;-><init>(Landroid/app/IPowerGuru;Landroid/content/Context;)V

    return-object v0
.end method

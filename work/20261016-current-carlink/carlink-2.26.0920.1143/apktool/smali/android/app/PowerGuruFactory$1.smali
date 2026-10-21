.class Landroid/app/PowerGuruFactory$1;
.super Landroid/app/AbsPowerGuru;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/PowerGuruFactory;->createExtraPowerGuru(Landroid/app/IPowerGuru;Landroid/content/Context;)Landroid/app/AbsPowerGuru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/PowerGuruFactory;


# direct methods
.method public constructor <init>(Landroid/app/PowerGuruFactory;Landroid/app/IPowerGuru;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/app/PowerGuruFactory$1;->this$0:Landroid/app/PowerGuruFactory;

    invoke-direct {p0, p2, p3}, Landroid/app/AbsPowerGuru;-><init>(Landroid/app/IPowerGuru;Landroid/content/Context;)V

    return-void
.end method

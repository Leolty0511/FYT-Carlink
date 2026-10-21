.class Landroid/os/PMFactory$1;
.super Landroid/os/AbsPowerManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PMFactory;->createExtraPowerManager(Landroid/content/Context;)Landroid/os/AbsPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/PMFactory;


# direct methods
.method public constructor <init>(Landroid/os/PMFactory;)V
    .locals 0

    iput-object p1, p0, Landroid/os/PMFactory$1;->this$0:Landroid/os/PMFactory;

    invoke-direct {p0}, Landroid/os/AbsPowerManager;-><init>()V

    return-void
.end method

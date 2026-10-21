.class Landroid/app/SearchDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SearchDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/app/SearchDialog;


# direct methods
.method public constructor <init>(Landroid/app/SearchDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/app/SearchDialog$1;->this$0:Landroid/app/SearchDialog;

    invoke-virtual {p1}, Landroid/app/SearchDialog;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

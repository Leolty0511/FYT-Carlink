.class Landroid/service/quicksettings/TileService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/quicksettings/TileService;->showDialog(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    :try_start_0
    iget-object p1, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {p1}, Landroid/service/quicksettings/TileService;->access$100(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object p1

    iget-object v0, p0, Landroid/service/quicksettings/TileService$1;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v0}, Landroid/service/quicksettings/TileService;->access$000(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/service/quicksettings/IQSService;->onDialogHidden(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

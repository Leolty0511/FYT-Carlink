.class Lcom/syu/bt/page/Page_Set$5;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/Page_Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/Page_Set;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$5;->this$0:Lcom/syu/bt/page/Page_Set;

    .line 1336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1339
    new-instance v0, Lcom/syu/bt/page/pop/ColorPickerDialog;

    sget-object v1, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v1, v1, Lcom/syu/bt/Act_Bt;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    .line 1340
    sget v2, Lcom/syu/bt/App_Bt;->color_set:I

    .line 1341
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "bt_bt_color"

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1342
    new-instance v4, Lcom/syu/bt/page/Page_Set$5$1;

    invoke-direct {v4, p0}, Lcom/syu/bt/page/Page_Set$5$1;-><init>(Lcom/syu/bt/page/Page_Set$5;)V

    .line 1339
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/syu/bt/page/pop/ColorPickerDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;)V

    .line 1369
    .local v0, "dialog":Lcom/syu/bt/page/pop/ColorPickerDialog;
    const-string v1, "gdy7"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 22 color_set = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/syu/bt/App_Bt;->color_set:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    invoke-virtual {v0}, Lcom/syu/bt/page/pop/ColorPickerDialog;->show()V

    .line 1371
    return-void
.end method

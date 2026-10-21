.class Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;
.super Ljava/lang/Object;
.source "Page_PopSwitchPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopSwitchPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopSwitchPhone;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    iget-object v0, v0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mIconTitle:Lcom/lsec/core/frame/ctrl/JView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    iget-object v1, v0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->mIconTitle:Lcom/lsec/core/frame/ctrl/JView;

    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v2

    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    iget v0, v0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->iPhone_id:I

    if-nez v0, :cond_1

    const-string v0, "bt_phone_icon_p1"

    :goto_0
    iget-object v3, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    invoke-virtual {v3}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v3

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/syu/bt/page/pop/Page_PopSwitchPhone$1;->this$0:Lcom/syu/bt/page/pop/Page_PopSwitchPhone;

    invoke-virtual {v4}, Lcom/syu/bt/page/pop/Page_PopSwitchPhone;->getPage()Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v4

    iget-object v4, v4, Lcom/lsec/core/frame/ctrl/JPage;->mDrawables:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_0
    return-void

    .line 85
    :cond_1
    const-string v0, "bt_phone_icon_p2"

    goto :goto_0
.end method

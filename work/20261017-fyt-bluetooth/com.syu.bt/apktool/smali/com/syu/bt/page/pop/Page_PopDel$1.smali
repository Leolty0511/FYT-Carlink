.class Lcom/syu/bt/page/pop/Page_PopDel$1;
.super Ljava/lang/Object;
.source "Page_PopDel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/pop/Page_PopDel;->ResponseClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopDel;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopDel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopDel$1;->this$0:Lcom/syu/bt/page/pop/Page_PopDel;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    .line 90
    return-void
.end method

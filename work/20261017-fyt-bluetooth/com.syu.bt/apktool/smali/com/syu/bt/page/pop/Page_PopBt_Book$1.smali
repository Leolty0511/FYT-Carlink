.class Lcom/syu/bt/page/pop/Page_PopBt_Book$1;
.super Ljava/lang/Object;
.source "Page_PopBt_Book.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/page/pop/Page_PopBt_Book;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/pop/Page_PopBt_Book;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book$1;->this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/syu/bt/page/pop/Page_PopBt_Book$1;->this$0:Lcom/syu/bt/page/pop/Page_PopBt_Book;

    invoke-virtual {v0}, Lcom/syu/bt/page/pop/Page_PopBt_Book;->resetList_History()V

    .line 332
    return-void
.end method

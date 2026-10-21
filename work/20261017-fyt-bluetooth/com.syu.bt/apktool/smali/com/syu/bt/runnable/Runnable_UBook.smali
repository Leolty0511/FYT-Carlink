.class public Lcom/syu/bt/runnable/Runnable_UBook;
.super Ljava/lang/Object;
.source "Runnable_UBook.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field listContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field listContactDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field name:Ljava/lang/String;

.field number:Ljava/lang/String;

.field page_Contact:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/syu/bt/page/Page_Contact;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p5, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/syu/bt/page/Page_Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p3, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p4, "listContactDownload":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_UBook;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/syu/bt/runnable/Runnable_UBook;->number:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/syu/bt/runnable/Runnable_UBook;->listContact:Ljava/util/List;

    .line 27
    iput-object p4, p0, Lcom/syu/bt/runnable/Runnable_UBook;->listContactDownload:Ljava/util/List;

    .line 28
    iput-object p5, p0, Lcom/syu/bt/runnable/Runnable_UBook;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    .line 29
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 33
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_UBook;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/syu/bt/runnable/Runnable_UBook;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UBook;->listContactDownload:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_UBook;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_UBook;->number:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/syu/bt/App_Bt;->getNewMapContact(Ljava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 35
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v1, Lcom/syu/bt/runnable/Runnable_ContactDown;

    invoke-direct {v1, v0}, Lcom/syu/bt/runnable/Runnable_ContactDown;-><init>(Landroid/util/SparseArray;)V

    invoke-static {v5, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 36
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_UBook;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/syu/bt/runnable/Runnable_UBook;->number:Ljava/lang/String;

    iget-object v4, p0, Lcom/syu/bt/runnable/Runnable_UBook;->listContact:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v4}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/syu/bt/runnable/Runnable_ContactNew;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_UBook;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-direct {v1, v0, v2}, Lcom/syu/bt/runnable/Runnable_ContactNew;-><init>(Landroid/util/SparseArray;Lcom/syu/bt/page/Page_Contact;)V

    invoke-static {v5, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 41
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

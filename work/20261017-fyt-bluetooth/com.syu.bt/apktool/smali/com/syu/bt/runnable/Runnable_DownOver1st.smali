.class public Lcom/syu/bt/runnable/Runnable_DownOver1st;
.super Ljava/lang/Object;
.source "Runnable_DownOver1st.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field page_Contact:Lcom/syu/bt/page/Page_Contact;


# direct methods
.method public constructor <init>(Lcom/syu/bt/page/Page_Contact;)V
    .locals 0
    .param p1, "page_Contact"    # Lcom/syu/bt/page/Page_Contact;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_DownOver1st;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 15
    const/4 v0, 0x0

    new-instance v1, Lcom/syu/bt/runnable/Runnable_DownOver;

    iget-object v2, p0, Lcom/syu/bt/runnable/Runnable_DownOver1st;->page_Contact:Lcom/syu/bt/page/Page_Contact;

    invoke-direct {v1, v2}, Lcom/syu/bt/runnable/Runnable_DownOver;-><init>(Lcom/syu/bt/page/Page_Contact;)V

    invoke-static {v0, v1}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 16
    return-void
.end method

.class public Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;
.super Ljava/lang/Object;
.source "Bt_Info.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/db/Bt_Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableSaveDownloadContactsIntoFile"
.end annotation


# instance fields
.field private listSave:Ljava/util/List;
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

.field final synthetic this$0:Lcom/syu/bt/db/Bt_Info;


# direct methods
.method public constructor <init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1351
    .local p2, "listSave":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;->this$0:Lcom/syu/bt/db/Bt_Info;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1352
    iput-object p2, p0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;->listSave:Ljava/util/List;

    .line 1353
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1357
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;->listSave:Ljava/util/List;

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/syu/bt/util/BTUtil;->writeFile(Ljava/util/List;Ljava/lang/String;)V

    .line 1358
    return-void
.end method

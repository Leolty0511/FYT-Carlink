.class Lcom/syu/bt/App_Bt$47;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->CustomerConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$47;->this$0:Lcom/syu/bt/App_Bt;

    .line 2473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2476
    const-string v2, "sys.fyt.bt_version"

    const-string v3, "V2.0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/syu/bt/App_Bt;->bt_version:Ljava/lang/String;

    .line 2477
    const-string v2, "ro.fyt.2phone"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    sget-object v2, Lcom/syu/bt/App_Bt;->bt_version:Ljava/lang/String;

    const-string v3, "V3.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    .line 2478
    const-string v0, "gdy14"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 33 CustomerConfig bLinkTwoPhone="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bt_version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/syu/bt/App_Bt;->bt_version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    return-void

    :cond_0
    move v0, v1

    .line 2477
    goto :goto_0
.end method

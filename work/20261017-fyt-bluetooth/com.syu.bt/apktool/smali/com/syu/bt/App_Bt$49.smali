.class Lcom/syu/bt/App_Bt$49;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/App_Bt;->queryCallLog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3252
    const-string v0, "his2"

    const-string v1, " 000 queryCallLog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-history"

    new-instance v2, Lcom/syu/bt/App_Bt$Runnable_queryCallLog;

    invoke-direct {v2}, Lcom/syu/bt/App_Bt$Runnable_queryCallLog;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 3255
    return-void
.end method

.class Lcom/syu/app/ipc/Ipc_786$5;
.super Ljava/lang/Object;
.source "Ipc_786.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/app/ipc/Ipc_786;->phoneState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/ipc/Ipc_786;


# direct methods
.method constructor <init>(Lcom/syu/app/ipc/Ipc_786;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/ipc/Ipc_786$5;->this$0:Lcom/syu/app/ipc/Ipc_786;

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 410
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v1, "type"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 411
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    sget-object v0, Lcom/lsec/core/ipc/module/main/Bt;->values:Landroid/content/ContentValues;

    const-string v1, "number"

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    return-void
.end method

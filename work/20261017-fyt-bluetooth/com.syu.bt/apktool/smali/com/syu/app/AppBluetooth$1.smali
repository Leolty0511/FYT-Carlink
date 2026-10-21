.class Lcom/syu/app/AppBluetooth$1;
.super Ljava/lang/Object;
.source "AppBluetooth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/app/AppBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/app/AppBluetooth;


# direct methods
.method constructor <init>(Lcom/syu/app/AppBluetooth;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/app/AppBluetooth$1;->this$0:Lcom/syu/app/AppBluetooth;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/syu/app/AppBluetooth$1;->this$0:Lcom/syu/app/AppBluetooth;

    invoke-virtual {v0}, Lcom/syu/app/AppBluetooth;->initIpc()V

    .line 188
    return-void
.end method

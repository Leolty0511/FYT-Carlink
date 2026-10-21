.class Lcom/myspec/MyClass$3;
.super Ljava/lang/Object;
.source "MyClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/myspec/MyClass;->initCust()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myspec/MyClass;


# direct methods
.method constructor <init>(Lcom/myspec/MyClass;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/16 v7, -0x100

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    .local v0, "inparam":Landroid/os/Bundle;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v1, "outparam":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    invoke-static {v4, v7}, Lcom/myspec/MyClass;->access$0(Lcom/myspec/MyClass;I)V

    .line 48
    const-string v4, "areaindex"

    const/16 v5, 0x100

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    invoke-static {}, Lcom/syu/jni/SyuJniNative;->getInstance()Lcom/syu/jni/SyuJniNative;

    move-result-object v2

    .line 50
    .local v2, "syuJniNative":Lcom/syu/jni/SyuJniNative;
    if-eqz v2, :cond_0

    .line 51
    sget-boolean v4, Lcom/syu/jni/SyuJniNative;->bLoadLibOnce:Z

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    const/16 v5, 0x70

    invoke-virtual {v2, v5, v0, v1}, Lcom/syu/jni/SyuJniNative;->syu_jni_command(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/myspec/MyClass;->access$0(Lcom/myspec/MyClass;I)V

    .line 53
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    invoke-static {v4}, Lcom/myspec/MyClass;->access$1(Lcom/myspec/MyClass;)I

    move-result v4

    if-nez v4, :cond_0

    .line 54
    iget-object v4, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    const-string v5, "isactived"

    const/16 v6, 0x37

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/myspec/MyClass;->access$0(Lcom/myspec/MyClass;I)V

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    invoke-static {v4}, Lcom/myspec/MyClass;->access$1(Lcom/myspec/MyClass;)I

    move-result v4

    if-eq v4, v7, :cond_2

    .line 60
    iget-object v4, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    iget-object v5, p0, Lcom/myspec/MyClass$3;->this$0:Lcom/myspec/MyClass;

    invoke-static {v5}, Lcom/myspec/MyClass;->access$1(Lcom/myspec/MyClass;)I

    move-result v5

    if-ne v5, v3, :cond_1

    const/4 v3, 0x0

    :cond_1
    invoke-virtual {v4, v3}, Lcom/myspec/MyClass;->popTip(Z)V

    .line 62
    :cond_2
    return-void
.end method

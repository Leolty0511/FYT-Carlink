.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->onSyncLost(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

.field final synthetic val$syncHandle:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;I)V
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    iput p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$syncHandle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 4
    .line 5
    iget v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->val$syncHandle:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncLost(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$3;->this$1:Landroid/bluetooth/le/PeriodicAdvertisingManager$1;

    .line 11
    .line 12
    iget-object v1, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    .line 13
    .line 14
    iget-object v1, v1, Landroid/bluetooth/le/PeriodicAdvertisingManager;->callbackWrappers:Ljava/util/Map;

    .line 15
    .line 16
    iget-object v0, v0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    return-void
.end method

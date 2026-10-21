.class Lcom/google/android/projection/sink/ui/TestTools$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/ui/TestTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/ui/TestTools;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/TestTools;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/TestTools$15;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/sink/ui/TestTools$15;->this$0:Lcom/google/android/projection/sink/ui/TestTools;

    invoke-static {v0}, Lcom/google/android/projection/sink/ui/TestTools;->access$900(Lcom/google/android/projection/sink/ui/TestTools;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/google/android/projection/sink/R$id;->keyboard_lockout_auto:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/projection/sink/ui/TestTools;->access$600(Lcom/google/android/projection/sink/ui/TestTools;Landroid/view/View;)V

    return-void
.end method

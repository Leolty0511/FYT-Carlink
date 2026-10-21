.class Lcom/google/android/projection/sink/ui/MainActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity$4;->onPairingRequest(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/ui/MainActivity$4;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$4$1;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$4$1;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$4;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 4
    .line 5
    sget v1, Lcom/google/android/projection/sink/R$id;->bluetooth_pairing_response_button:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/Button;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$4$1;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$4;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$4;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 20
    .line 21
    sget v2, Lcom/google/android/projection/sink/R$id;->bluetooth_auth_data_button:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/widget/Button;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

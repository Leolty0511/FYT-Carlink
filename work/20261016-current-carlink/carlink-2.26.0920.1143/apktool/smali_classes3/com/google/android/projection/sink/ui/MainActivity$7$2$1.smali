.class Lcom/google/android/projection/sink/ui/MainActivity$7$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity$7$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/android/projection/sink/ui/MainActivity$7$2;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity$7$2;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2$1;->this$2:Lcom/google/android/projection/sink/ui/MainActivity$7$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2$1;->this$2:Lcom/google/android/projection/sink/ui/MainActivity$7$2;

    iget-object p1, p1, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    iget-object p1, p1, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    invoke-static {p1}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    iget-object p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2$1;->this$2:Lcom/google/android/projection/sink/ui/MainActivity$7$2;

    iget v0, p2, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->val$focus:I

    iget p2, p2, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->val$reason:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    return-void
.end method

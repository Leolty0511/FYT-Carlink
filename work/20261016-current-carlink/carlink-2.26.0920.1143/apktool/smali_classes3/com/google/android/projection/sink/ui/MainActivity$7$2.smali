.class Lcom/google/android/projection/sink/ui/MainActivity$7$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/ui/MainActivity$7;->onVideoFocusRequest(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

.field final synthetic val$focus:I

.field final synthetic val$reason:I


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/ui/MainActivity$7;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    iput p2, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->val$focus:I

    iput p3, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$900(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/settings/Settings;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/projection/sink/settings/Settings;->showVideoFocusDialog()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity$7;->access$1000(Lcom/google/android/projection/sink/ui/MainActivity$7;)Landroid/app/AlertDialog;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "Phone has requested video focus"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "Video Focus Request From Phone"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    new-instance v2, Lcom/google/android/projection/sink/ui/MainActivity$7$2$1;

    .line 45
    .line 46
    invoke-direct {v2, p0}, Lcom/google/android/projection/sink/ui/MainActivity$7$2$1;-><init>(Lcom/google/android/projection/sink/ui/MainActivity$7$2;)V

    .line 47
    .line 48
    .line 49
    const-string v3, "Grant"

    .line 50
    .line 51
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "Deny"

    .line 56
    .line 57
    const/4 v3, 0x0

    .line 58
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v1, v0}, Lcom/google/android/projection/sink/ui/MainActivity$7;->access$1002(Lcom/google/android/projection/sink/ui/MainActivity$7;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 71
    .line 72
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity$7;->access$1000(Lcom/google/android/projection/sink/ui/MainActivity$7;)Landroid/app/AlertDialog;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->this$1:Lcom/google/android/projection/sink/ui/MainActivity$7;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/google/android/projection/sink/ui/MainActivity$7;->this$0:Lcom/google/android/projection/sink/ui/MainActivity;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/google/android/projection/sink/ui/MainActivity;->access$700(Lcom/google/android/projection/sink/ui/MainActivity;)Lcom/google/android/projection/sink/GalIntegration;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 89
    .line 90
    iget v1, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->val$focus:I

    .line 91
    .line 92
    iget v2, p0, Lcom/google/android/projection/sink/ui/MainActivity$7$2;->val$reason:I

    .line 93
    .line 94
    const/4 v3, 0x0

    .line 95
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method

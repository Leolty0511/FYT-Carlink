.class public final Lf/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lf/t;


# direct methods
.method public constructor <init>(Lf/t;II)V
    .locals 0

    iput-object p1, p0, Lf/r;->d:Lf/t;

    iput p2, p0, Lf/r;->b:I

    iput p3, p0, Lf/r;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lf/r;->d:Lf/t;

    .line 2
    .line 3
    iget-object v1, v0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/syu/carlink/auto/AutoFragment;->c:Lcom/google/android/projection/sink/settings/Settings;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/projection/sink/settings/Settings;->showVideoFocusDialog()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    iget-object v1, v0, Lf/t;->a:Landroid/app/AlertDialog;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 18
    .line 19
    iget-object v2, v0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 20
    .line 21
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "Phone has requested video focus"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "Video Focus Request From Phone"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    new-instance v3, Lf/q;

    .line 41
    .line 42
    invoke-direct {v3, p0}, Lf/q;-><init>(Lf/r;)V

    .line 43
    .line 44
    .line 45
    const-string v4, "Grant"

    .line 46
    .line 47
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const-string v3, "Deny"

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lf/t;->a:Landroid/app/AlertDialog;

    .line 62
    .line 63
    :cond_0
    iget-object v0, v0, Lf/t;->a:Landroid/app/AlertDialog;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, v0, Lf/t;->b:Lcom/syu/carlink/auto/AutoFragment;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->e:Lcom/google/android/projection/sink/GalIntegration;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/google/android/projection/sink/GalIntegration;->mainDisplayVideoSink:Lcom/google/android/projection/protocol/VideoSink;

    .line 74
    .line 75
    iget v1, p0, Lf/r;->c:I

    .line 76
    .line 77
    const/4 v2, 0x0

    .line 78
    iget v3, p0, Lf/r;->b:I

    .line 79
    .line 80
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/android/projection/protocol/VideoSink;->setVideoFocus(IIZ)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method

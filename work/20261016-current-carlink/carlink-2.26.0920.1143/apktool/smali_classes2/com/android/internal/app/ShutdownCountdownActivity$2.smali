.class Lcom/android/internal/app/ShutdownCountdownActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ShutdownCountdownActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ShutdownCountdownActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ShutdownCountdownActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$510(Lcom/android/internal/app/ShutdownCountdownActivity;)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$100(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$500(Lcom/android/internal/app/ShutdownCountdownActivity;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$100(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$500(Lcom/android/internal/app/ShutdownCountdownActivity;)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x1

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 42
    .line 43
    iget-object v4, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 44
    .line 45
    invoke-static {v4}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$500(Lcom/android/internal/app/ShutdownCountdownActivity;)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    const/4 v5, 0x0

    .line 54
    aput-object v4, v3, v5

    .line 55
    .line 56
    const v4, 0x1150014

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 68
    .line 69
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$100(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 74
    .line 75
    const v2, 0x10405bc

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$500(Lcom/android/internal/app/ShutdownCountdownActivity;)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-lez v0, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$300(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 100
    .line 101
    invoke-static {v1}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$600(Lcom/android/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-wide/16 v2, 0x3e8

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/ShutdownCountdownActivity$2;->this$0:Lcom/android/internal/app/ShutdownCountdownActivity;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/android/internal/app/ShutdownCountdownActivity;->access$300(Lcom/android/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    new-instance v1, Lcom/android/internal/app/ShutdownCountdownActivity$2$1;

    .line 118
    .line 119
    invoke-direct {v1, p0}, Lcom/android/internal/app/ShutdownCountdownActivity$2$1;-><init>(Lcom/android/internal/app/ShutdownCountdownActivity$2;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    .line 124
    .line 125
    :goto_1
    return-void
.end method

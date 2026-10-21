.class Landroid/widget/VideoView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method public constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v0, "Error: "

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v0, ","

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v0, "VideoView"

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-static {p1, v0}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 35
    .line 36
    invoke-static {p1, v0}, Landroid/widget/VideoView;->access$1202(Landroid/widget/VideoView;I)I

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 48
    .line 49
    invoke-static {p1}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 57
    .line 58
    invoke-static {p1}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const/4 v0, 0x1

    .line 63
    if-eqz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 66
    .line 67
    invoke-static {p1}, Landroid/widget/VideoView;->access$1700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 72
    .line 73
    invoke-static {v1}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_1

    .line 82
    .line 83
    return v0

    .line 84
    :cond_1
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    iget-object p1, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 93
    .line 94
    invoke-static {p1}, Landroid/widget/VideoView;->access$1800(Landroid/widget/VideoView;)Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    .line 100
    .line 101
    const/16 p1, 0xc8

    .line 102
    .line 103
    if-ne p2, p1, :cond_2

    .line 104
    .line 105
    const p1, 0x1040015

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_2
    const p1, 0x1040011

    .line 110
    .line 111
    .line 112
    :goto_0
    new-instance p2, Landroid/app/AlertDialog$Builder;

    .line 113
    .line 114
    iget-object p3, p0, Landroid/widget/VideoView$5;->this$0:Landroid/widget/VideoView;

    .line 115
    .line 116
    invoke-static {p3}, Landroid/widget/VideoView;->access$1900(Landroid/widget/VideoView;)Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-direct {p2, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    new-instance p2, Landroid/widget/VideoView$5$1;

    .line 128
    .line 129
    invoke-direct {p2, p0}, Landroid/widget/VideoView$5$1;-><init>(Landroid/widget/VideoView$5;)V

    .line 130
    .line 131
    .line 132
    const p3, 0x1040010

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const/4 p2, 0x0

    .line 140
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 145
    .line 146
    .line 147
    :cond_3
    return v0
.end method

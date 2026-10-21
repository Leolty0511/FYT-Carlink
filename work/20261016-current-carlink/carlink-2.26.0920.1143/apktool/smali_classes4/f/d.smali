.class public final Lf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/sink/ui/AutoWirelessListener$IAutoWirelessListener;


# instance fields
.field public final synthetic a:Lf/k;


# direct methods
.method public constructor <init>(Lf/k;)V
    .locals 0

    iput-object p1, p0, Lf/d;->a:Lf/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHandleConnectStatus(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "============>> onHandleConnectStatus msg: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "Auto"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v0, "STATUS_UNSOLICITED_MESSAGE"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v0, "STATUS_SUCCESS"

    .line 30
    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lf/d;->a:Lf/k;

    .line 38
    .line 39
    invoke-virtual {p1}, Lf/k;->b()V

    .line 40
    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput v0, p1, Lf/k;->v:I

    .line 44
    .line 45
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 46
    .line 47
    iget-boolean v0, v0, Lcom/syu/carlink/CarLink;->e:Z

    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    const-wide/16 v0, 0x64

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Lf/k;->e(J)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v0, "STATUS_WIFI_CONNECT_TIMEOUT"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    return-void
.end method

.method public final onStateChange(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v0, Lf/k;->y:Lf/k;

    .line 11
    .line 12
    invoke-virtual {v0}, Lf/k;->g()Landroid/hardware/usb/UsbDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v2, " Wireless AAuto BT -------->>  onStateChange : "

    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, " CarLink.me.linkState(): "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->B()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v2, "HDL"

    .line 45
    .line 46
    invoke-static {v2, v1}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_5

    .line 50
    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->J()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->z()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    :cond_1
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 70
    .line 71
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 72
    .line 73
    if-nez p1, :cond_2

    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->B()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    const/4 v0, 0x3

    .line 83
    if-ne p1, v0, :cond_6

    .line 84
    .line 85
    iget-object p1, p0, Lf/d;->a:Lf/k;

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    iput v0, p1, Lf/k;->v:I

    .line 89
    .line 90
    invoke-virtual {p1}, Lf/k;->o()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_3

    .line 95
    .line 96
    return-void

    .line 97
    :cond_3
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 98
    .line 99
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 100
    .line 101
    if-nez v1, :cond_4

    .line 102
    .line 103
    invoke-virtual {p1}, Lf/k;->f()Lcom/syu/carlink/CarLinkService;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    if-eqz v1, :cond_4

    .line 108
    .line 109
    invoke-virtual {v1, v0}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 110
    .line 111
    .line 112
    :cond_4
    invoke-virtual {p1}, Lf/k;->d()V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    if-nez p1, :cond_6

    .line 117
    .line 118
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->l()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_6

    .line 125
    .line 126
    const-string p1, "Auto"

    .line 127
    .line 128
    const-string v0, "============>> onHandleConnectStatus wifi connect timeout"

    .line 129
    .line 130
    invoke-static {p1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_6
    :goto_0
    return-void
.end method

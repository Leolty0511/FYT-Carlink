.class Landroid/widget/Filter$RequestHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Landroid/widget/Filter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const v1, -0x2f2f0ff3

    .line 4
    .line 5
    .line 6
    const v2, -0x21524111

    .line 7
    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/widget/Filter;->access$300(Landroid/widget/Filter;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-static {p1, v0}, Landroid/widget/Filter;->access$402(Landroid/widget/Filter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    :cond_1
    monitor-exit v1

    .line 50
    goto :goto_2

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw p1

    .line 54
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast p1, Landroid/widget/Filter$RequestArguments;

    .line 57
    .line 58
    :try_start_1
    iget-object v1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 59
    .line 60
    iget-object v3, p1, Landroid/widget/Filter$RequestArguments;->constraint:Ljava/lang/CharSequence;

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Landroid/widget/Filter;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .line 68
    :goto_0
    iget-object v1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 69
    .line 70
    invoke-static {v1}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :catchall_1
    move-exception v1

    .line 85
    goto :goto_3

    .line 86
    :catch_0
    move-exception v1

    .line 87
    :try_start_2
    new-instance v3, Landroid/widget/Filter$FilterResults;

    .line 88
    .line 89
    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 90
    .line 91
    .line 92
    iput-object v3, p1, Landroid/widget/Filter$RequestArguments;->results:Landroid/widget/Filter$FilterResults;

    .line 93
    .line 94
    const-string v3, "Filter"

    .line 95
    .line 96
    const-string v4, "An exception occured during performFiltering()!"

    .line 97
    .line 98
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :goto_1
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 103
    .line 104
    invoke-static {p1}, Landroid/widget/Filter;->access$300(Landroid/widget/Filter;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    monitor-enter v1

    .line 109
    :try_start_3
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 110
    .line 111
    invoke-static {p1}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    iget-object p1, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 118
    .line 119
    invoke-static {p1}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iget-object v0, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 128
    .line 129
    invoke-static {v0}, Landroid/widget/Filter;->access$400(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const-wide/16 v2, 0xbb8

    .line 134
    .line 135
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 136
    .line 137
    .line 138
    :cond_3
    monitor-exit v1

    .line 139
    :goto_2
    return-void

    .line 140
    :catchall_2
    move-exception p1

    .line 141
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 142
    throw p1

    .line 143
    :goto_3
    iget-object v2, p0, Landroid/widget/Filter$RequestHandler;->this$0:Landroid/widget/Filter;

    .line 144
    .line 145
    invoke-static {v2}, Landroid/widget/Filter;->access$200(Landroid/widget/Filter;)Landroid/os/Handler;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    .line 157
    .line 158
    throw v1
.end method

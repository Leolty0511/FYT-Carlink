.class Lcom/android/internal/app/ResolverComparator$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverComparator;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverComparator;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 10
    .line 11
    .line 12
    goto/16 :goto_2

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/android/internal/app/ResolverComparator;->access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {p1}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_2

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_7

    .line 45
    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    const-string v0, "ResolverComparator"

    .line 49
    .line 50
    if-eqz p1, :cond_5

    .line 51
    .line 52
    check-cast p1, Ljava/util/List;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 57
    .line 58
    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-eqz v3, :cond_4

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iget-object v4, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 69
    .line 70
    invoke-static {v4}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-ne v3, v4, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    move v3, v1

    .line 91
    :goto_0
    if-ge v1, v0, :cond_3

    .line 92
    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Landroid/service/resolver/ResolverTarget;

    .line 98
    .line 99
    invoke-virtual {v4}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    iget-object v5, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 104
    .line 105
    invoke-static {v5}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Landroid/service/resolver/ResolverTarget;

    .line 114
    .line 115
    invoke-virtual {v5}, Landroid/service/resolver/ResolverTarget;->getSelectProbability()F

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    cmpl-float v5, v4, v5

    .line 120
    .line 121
    if-eqz v5, :cond_2

    .line 122
    .line 123
    iget-object v3, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 124
    .line 125
    invoke-static {v3}, Lcom/android/internal/app/ResolverComparator;->access$100(Lcom/android/internal/app/ResolverComparator;)Ljava/util/ArrayList;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Landroid/service/resolver/ResolverTarget;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Landroid/service/resolver/ResolverTarget;->setSelectProbability(F)V

    .line 136
    .line 137
    .line 138
    move v3, v2

    .line 139
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_3
    if-eqz v3, :cond_6

    .line 143
    .line 144
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/android/internal/app/ResolverComparator;->access$300(Lcom/android/internal/app/ResolverComparator;)Landroid/content/ComponentName;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {p1, v0}, Lcom/android/internal/app/ResolverComparator;->access$202(Lcom/android/internal/app/ResolverComparator;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_4
    const-string p1, "Sizes of sent and received ResolverTargets diff."

    .line 155
    .line 156
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    const-string p1, "Receiving null prediction results."

    .line 161
    .line 162
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/internal/app/ResolverComparator$1;->this$0:Lcom/android/internal/app/ResolverComparator;

    .line 175
    .line 176
    invoke-static {p1}, Lcom/android/internal/app/ResolverComparator;->access$400(Lcom/android/internal/app/ResolverComparator;)Lcom/android/internal/app/ResolverComparator$AfterCompute;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-interface {p1}, Lcom/android/internal/app/ResolverComparator$AfterCompute;->afterCompute()V

    .line 181
    .line 182
    .line 183
    :cond_7
    :goto_2
    return-void
.end method

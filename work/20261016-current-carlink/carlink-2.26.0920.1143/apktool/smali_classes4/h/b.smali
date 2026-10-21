.class public final Lh/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public a:I

.field public final synthetic b:Lh/c;


# direct methods
.method public constructor <init>(Lh/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh/b;->b:Lh/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lh/b;->a:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 5

    .line 1
    const-string v0, "===========================>>>>  onAudioFocusChange  focusChange:"

    .line 2
    .line 3
    const-string v1, "  isShowing: "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "HDL"

    .line 23
    .line 24
    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput p1, p0, Lh/b;->a:I

    .line 28
    .line 29
    const/4 v0, -0x1

    .line 30
    const-string v2, "  isMediaAudio: "

    .line 31
    .line 32
    if-eq p1, v0, :cond_2

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    if-eq p1, v0, :cond_0

    .line 36
    .line 37
    goto/16 :goto_0

    .line 38
    .line 39
    :cond_0
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v4, "============>>>>01  onAudioFocusChange CARPLAY_C2S_AUDIO_CTRL 3 noMix: "

    .line 49
    .line 50
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->t()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_5

    .line 88
    .line 89
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 90
    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lh/c;->j(Z)V

    .line 94
    .line 95
    .line 96
    goto/16 :goto_0

    .line 97
    .line 98
    :cond_1
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->t()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 107
    .line 108
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 119
    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-virtual {p1, v0}, Lh/c;->j(Z)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 131
    .line 132
    iget-object v0, p0, Lh/b;->b:Lh/c;

    .line 133
    .line 134
    if-eqz p1, :cond_3

    .line 135
    .line 136
    invoke-virtual {v0}, Lh/c;->e()Landroid/os/Handler;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    new-instance v0, Landroid/net/b;

    .line 141
    .line 142
    const/16 v1, 0xa

    .line 143
    .line 144
    invoke-direct {v0, p0, v1}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 145
    .line 146
    .line 147
    const-wide/16 v1, 0x12c

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 154
    .line 155
    .line 156
    invoke-static {}, Lcom/syu/carlink/CarLink;->F()Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    new-instance v3, Ljava/lang/StringBuilder;

    .line 161
    .line 162
    const-string v4, "============>>>>00  onAudioFocusChange CARPLAY_C2S_AUDIO_CTRL 2 noMix: "

    .line 163
    .line 164
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->t()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-static {v1, v2}, Ln/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    if-eqz p1, :cond_4

    .line 192
    .line 193
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_5

    .line 202
    .line 203
    iget-object p1, p1, Lcom/syu/carlink/CarLinkService;->A:Lh/c;

    .line 204
    .line 205
    if-eqz p1, :cond_5

    .line 206
    .line 207
    const/4 v0, 0x0

    .line 208
    invoke-virtual {p1, v0}, Lh/c;->j(Z)V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_4
    invoke-static {}, Le/b;->b()Lcom/syu/carlink/CarLink;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->t()Z

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    if-eqz p1, :cond_5

    .line 221
    .line 222
    const/16 p1, 0x1007

    .line 223
    .line 224
    invoke-virtual {v0, p1}, Lh/c;->a(I)V

    .line 225
    .line 226
    .line 227
    :cond_5
    :goto_0
    return-void
.end method

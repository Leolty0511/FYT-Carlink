.class public final Lcom/syu/carlink/carplay/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls/a;

.field public final b:Landroid/net/b;

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;->INSTANCE:Lcom/syu/carlink/carplay/PlayInfo$mHandler$2;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/a;->c(Lz/a;)Ls/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/syu/carlink/carplay/a;->a:Ls/a;

    .line 11
    .line 12
    new-instance v0, Landroid/net/b;

    .line 13
    .line 14
    const/16 v1, 0xb

    .line 15
    .line 16
    invoke-direct {v0, p0, v1}, Landroid/net/b;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/syu/carlink/carplay/a;->b:Landroid/net/b;

    .line 20
    .line 21
    const-string v0, ""

    .line 22
    .line 23
    iput-object v0, p0, Lcom/syu/carlink/carplay/a;->e:Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/syu/carlink/carplay/a;->f:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/syu/carlink/carplay/a;->g:Ljava/lang/String;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/syu/carlink/carplay/a;->h:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/syu/carlink/carplay/a;->i:I

    .line 33
    .line 34
    iput v0, p0, Lcom/syu/carlink/carplay/a;->j:I

    .line 35
    .line 36
    iput v0, p0, Lcom/syu/carlink/carplay/a;->k:I

    .line 37
    .line 38
    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/16 v4, 0x17

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    new-array v5, v0, [I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    const/16 v1, 0xa

    .line 27
    .line 28
    aput v1, v5, v0

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    aput p0, v5, v1

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    new-array v7, v1, [Ljava/lang/String;

    .line 35
    .line 36
    aput-object p1, v7, v0

    .line 37
    .line 38
    invoke-virtual/range {v2 .. v7}, Lo/e;->c(II[I[F[Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void

    .line 42
    :cond_2
    const-string p0, "me"

    .line 43
    .line 44
    invoke-static {p0}, Lt/b;->B(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v1
.end method

.method public static varargs b([I)V
    .locals 16

    .line 1
    sget-object v0, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_12

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    if-eqz v2, :cond_11

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v0, 0x2

    .line 21
    new-array v1, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    new-array v5, v0, [I

    .line 24
    .line 25
    const/16 v6, 0xa

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    aput v6, v5, v7

    .line 29
    .line 30
    const/4 v6, 0x1

    .line 31
    aput-object p0, v1, v6

    .line 32
    .line 33
    new-instance v8, Lc0/d;

    .line 34
    .line 35
    invoke-direct {v8, v7, v6}, Lc0/d;-><init>(II)V

    .line 36
    .line 37
    .line 38
    iget v9, v8, Lc0/b;->d:I

    .line 39
    .line 40
    iget v8, v8, Lc0/b;->c:I

    .line 41
    .line 42
    if-lez v9, :cond_1

    .line 43
    .line 44
    if-ltz v8, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    if-gtz v8, :cond_2

    .line 48
    .line 49
    :goto_0
    move v10, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    move v10, v7

    .line 52
    :goto_1
    if-eqz v10, :cond_3

    .line 53
    .line 54
    move v11, v7

    .line 55
    goto :goto_2

    .line 56
    :cond_3
    move v11, v8

    .line 57
    :goto_2
    move v12, v7

    .line 58
    :goto_3
    if-eqz v10, :cond_7

    .line 59
    .line 60
    if-ne v11, v8, :cond_5

    .line 61
    .line 62
    if-eqz v10, :cond_4

    .line 63
    .line 64
    move v10, v7

    .line 65
    move v13, v11

    .line 66
    goto :goto_4

    .line 67
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_5
    add-int v13, v9, v11

    .line 74
    .line 75
    :goto_4
    aget-object v11, v1, v11

    .line 76
    .line 77
    if-eqz v11, :cond_6

    .line 78
    .line 79
    check-cast v11, [I

    .line 80
    .line 81
    array-length v11, v11

    .line 82
    goto :goto_5

    .line 83
    :cond_6
    move v11, v6

    .line 84
    :goto_5
    add-int/2addr v12, v11

    .line 85
    move v11, v13

    .line 86
    goto :goto_3

    .line 87
    :cond_7
    new-array v8, v12, [I

    .line 88
    .line 89
    new-instance v9, Lc0/d;

    .line 90
    .line 91
    invoke-direct {v9, v7, v6}, Lc0/d;-><init>(II)V

    .line 92
    .line 93
    .line 94
    iget v10, v9, Lc0/b;->d:I

    .line 95
    .line 96
    iget v9, v9, Lc0/b;->c:I

    .line 97
    .line 98
    if-lez v10, :cond_8

    .line 99
    .line 100
    if-ltz v9, :cond_9

    .line 101
    .line 102
    goto :goto_6

    .line 103
    :cond_8
    if-gtz v9, :cond_9

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_9
    move v6, v7

    .line 107
    :goto_6
    if-eqz v6, :cond_a

    .line 108
    .line 109
    move v11, v7

    .line 110
    goto :goto_7

    .line 111
    :cond_a
    move v11, v9

    .line 112
    :goto_7
    move v12, v7

    .line 113
    move v13, v12

    .line 114
    :goto_8
    if-eqz v6, :cond_f

    .line 115
    .line 116
    if-ne v11, v9, :cond_c

    .line 117
    .line 118
    if-eqz v6, :cond_b

    .line 119
    .line 120
    move v6, v7

    .line 121
    move v14, v11

    .line 122
    goto :goto_9

    .line 123
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 124
    .line 125
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 126
    .line 127
    .line 128
    throw v0

    .line 129
    :cond_c
    add-int v14, v10, v11

    .line 130
    .line 131
    :goto_9
    aget-object v15, v1, v11

    .line 132
    .line 133
    if-eqz v15, :cond_e

    .line 134
    .line 135
    if-ge v12, v11, :cond_d

    .line 136
    .line 137
    sub-int v4, v11, v12

    .line 138
    .line 139
    invoke-static {v5, v12, v8, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    .line 141
    .line 142
    add-int/2addr v13, v4

    .line 143
    :cond_d
    move-object v4, v15

    .line 144
    check-cast v4, [I

    .line 145
    .line 146
    array-length v4, v4

    .line 147
    invoke-static {v15, v7, v8, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    .line 149
    .line 150
    add-int/2addr v13, v4

    .line 151
    add-int/lit8 v12, v11, 0x1

    .line 152
    .line 153
    :cond_e
    move v11, v14

    .line 154
    goto :goto_8

    .line 155
    :cond_f
    if-ge v12, v0, :cond_10

    .line 156
    .line 157
    rsub-int/lit8 v0, v12, 0x2

    .line 158
    .line 159
    invoke-static {v5, v12, v8, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    :cond_10
    const/4 v6, 0x0

    .line 163
    const/16 v7, 0x18

    .line 164
    .line 165
    const/16 v0, 0x17

    .line 166
    .line 167
    move v4, v0

    .line 168
    move-object v5, v8

    .line 169
    invoke-static/range {v2 .. v7}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    :cond_11
    return-void

    .line 173
    :cond_12
    const-string v0, "me"

    .line 174
    .line 175
    invoke-static {v0}, Lt/b;->B(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "\n            title: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/syu/carlink/carplay/a;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n            artist: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/syu/carlink/carplay/a;->f:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n            album: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/syu/carlink/carplay/a;->g:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n            cover: "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lcom/syu/carlink/carplay/a;->h:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, "\n            duration: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/syu/carlink/carplay/a;->c:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, "\n            position: "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Lcom/syu/carlink/carplay/a;->d:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, "\n            playState: "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Lcom/syu/carlink/carplay/a;->i:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, "\n            shuffleMode: "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/syu/carlink/carplay/a;->j:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, "\n            repeatMode: "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Lcom/syu/carlink/carplay/a;->k:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, "\n        "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {v0}, Lkotlin/text/a;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

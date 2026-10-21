.class Landroid/media/Tokenizer$DataTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Tokenizer$TokenizerPhase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Tokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataTokenizer"
.end annotation


# instance fields
.field private mData:Ljava/lang/StringBuilder;

.field final synthetic this$0:Landroid/media/Tokenizer;


# direct methods
.method public constructor <init>(Landroid/media/Tokenizer;)V
    .locals 0

    iput-object p1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 22
    .line 23
    invoke-static {v2}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v1, v2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object p2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    add-int/2addr p1, p3

    .line 46
    invoke-static {p2, p1}, Landroid/media/Tokenizer;->access$102(Landroid/media/Tokenizer;I)I

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 50
    .line 51
    invoke-static {p1}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    .line 52
    .line 53
    .line 54
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_0
    const/4 p1, 0x0

    .line 57
    return p1
.end method


# virtual methods
.method public start()Landroid/media/Tokenizer$TokenizerPhase;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public tokenize()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    :goto_0
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 18
    .line 19
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_2

    .line 28
    .line 29
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/16 v3, 0x26

    .line 40
    .line 41
    if-ne v2, v3, :cond_0

    .line 42
    .line 43
    const-string v2, "&amp;"

    .line 44
    .line 45
    const-string v3, "&"

    .line 46
    .line 47
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-nez v2, :cond_1

    .line 52
    .line 53
    const-string v2, "&lt;"

    .line 54
    .line 55
    const-string v3, "<"

    .line 56
    .line 57
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-nez v2, :cond_1

    .line 62
    .line 63
    const-string v2, "&gt;"

    .line 64
    .line 65
    const-string v3, ">"

    .line 66
    .line 67
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_1

    .line 72
    .line 73
    const-string v2, "&lrm;"

    .line 74
    .line 75
    const-string/jumbo v3, "\u200e"

    .line 76
    .line 77
    .line 78
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_1

    .line 83
    .line 84
    const-string v2, "&rlm;"

    .line 85
    .line 86
    const-string/jumbo v3, "\u200f"

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-nez v2, :cond_1

    .line 94
    .line 95
    const-string v2, "&nbsp;"

    .line 96
    .line 97
    const-string/jumbo v3, "\u00a0"

    .line 98
    .line 99
    .line 100
    invoke-direct {p0, v2, v3, v1}, Landroid/media/Tokenizer$DataTokenizer;->replaceEscape(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 105
    .line 106
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    const/16 v3, 0x3c

    .line 115
    .line 116
    if-ne v2, v3, :cond_1

    .line 117
    .line 118
    iget-object v0, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 119
    .line 120
    invoke-static {v0}, Landroid/media/Tokenizer;->access$300(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$TokenizerPhase;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-interface {v2}, Landroid/media/Tokenizer$TokenizerPhase;->start()Landroid/media/Tokenizer$TokenizerPhase;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    invoke-static {v0, v2}, Landroid/media/Tokenizer;->access$202(Landroid/media/Tokenizer;Landroid/media/Tokenizer$TokenizerPhase;)Landroid/media/Tokenizer$TokenizerPhase;

    .line 129
    .line 130
    .line 131
    move v0, v1

    .line 132
    goto :goto_2

    .line 133
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    :goto_2
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    .line 137
    .line 138
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 139
    .line 140
    invoke-static {v2}, Landroid/media/Tokenizer;->access$000(Landroid/media/Tokenizer;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    iget-object v3, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 145
    .line 146
    invoke-static {v3}, Landroid/media/Tokenizer;->access$100(Landroid/media/Tokenizer;)I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 158
    .line 159
    invoke-static {v1}, Landroid/media/Tokenizer;->access$400(Landroid/media/Tokenizer;)Landroid/media/Tokenizer$OnTokenListener;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    iget-object v2, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-interface {v1, v2}, Landroid/media/Tokenizer$OnTokenListener;->onData(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->mData:Ljava/lang/StringBuilder;

    .line 173
    .line 174
    const/4 v2, 0x0

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    iget-object v1, p0, Landroid/media/Tokenizer$DataTokenizer;->this$0:Landroid/media/Tokenizer;

    .line 183
    .line 184
    invoke-static {v1, v0}, Landroid/media/Tokenizer;->access$102(Landroid/media/Tokenizer;I)I

    .line 185
    .line 186
    .line 187
    return-void
.end method

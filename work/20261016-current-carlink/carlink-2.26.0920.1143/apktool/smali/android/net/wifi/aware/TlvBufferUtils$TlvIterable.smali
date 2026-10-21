.class public Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/TlvBufferUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TlvIterable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
        ">;"
    }
.end annotation


# instance fields
.field private mArray:[B

.field private mArrayLength:I

.field private mLengthSize:I

.field private mTypeSize:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-gt p1, v0, :cond_1

    .line 8
    .line 9
    if-lez p2, :cond_1

    .line 10
    .line 11
    if-gt p2, v0, :cond_1

    .line 12
    .line 13
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    .line 14
    .line 15
    iput p2, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    .line 16
    .line 17
    iput-object p3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    array-length p1, p3

    .line 24
    :goto_0
    iput p1, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v0, "Invalid sizes - typeSize="

    .line 30
    .line 31
    const-string v1, ", lengthSize="

    .line 32
    .line 33
    invoke-static {v0, p1, v1, p2}, Landroid/app/m;->e(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p3
.end method

.method public static synthetic access$000(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArrayLength:I

    return p0
.end method

.method public static synthetic access$100(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    return p0
.end method

.method public static synthetic access$200(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)[B
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mArray:[B

    return-object p0
.end method

.method public static synthetic access$300(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)I
    .locals 0

    iget p0, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mLengthSize:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable$1;-><init>(Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;)V

    return-object v0
.end method

.method public toList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    .line 21
    .line 22
    iget-object v3, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->refArray:[B

    .line 23
    .line 24
    iget v4, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->offset:I

    .line 25
    .line 26
    iget v2, v2, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 27
    .line 28
    add-int/2addr v2, v4

    .line 29
    invoke-static {v3, v4, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "["

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_7

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;

    .line 25
    .line 26
    const-string v5, ","

    .line 27
    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    :cond_0
    const-string v3, " ("

    .line 34
    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v3, p0, Landroid/net/wifi/aware/TlvBufferUtils$TlvIterable;->mTypeSize:I

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v6, "T="

    .line 45
    .line 46
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget v6, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->type:I

    .line 50
    .line 51
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v5, "L="

    .line 67
    .line 68
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget v5, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 72
    .line 73
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, ") "

    .line 77
    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v3, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 89
    .line 90
    if-nez v3, :cond_2

    .line 91
    .line 92
    const-string v3, "<null>"

    .line 93
    .line 94
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-ne v3, v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getByte()B

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_3
    const/4 v5, 0x2

    .line 109
    if-ne v3, v5, :cond_4

    .line 110
    .line 111
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getShort()S

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_4
    const/4 v5, 0x4

    .line 120
    if-ne v3, v5, :cond_5

    .line 121
    .line 122
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getInt()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_5
    const-string v3, "<bytes>"

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    :goto_1
    iget v3, v4, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->length:I

    .line 136
    .line 137
    if-eqz v3, :cond_6

    .line 138
    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v5, " (S=\'"

    .line 142
    .line 143
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4}, Landroid/net/wifi/aware/TlvBufferUtils$TlvElement;->getString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v4, "\')"

    .line 154
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    :cond_6
    const/4 v3, 0x0

    .line 166
    goto/16 :goto_0

    .line 167
    .line 168
    :cond_7
    const-string v1, "]"

    .line 169
    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    return-object v0
.end method

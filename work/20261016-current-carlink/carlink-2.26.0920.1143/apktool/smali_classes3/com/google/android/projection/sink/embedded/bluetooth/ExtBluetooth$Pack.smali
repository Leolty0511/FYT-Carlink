.class Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Pack"
.end annotation


# instance fields
.field checkHeader:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field checkTail:Landroid/util/SparseArray;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public data:[B

.field header:[B

.field public len:Ljava/lang/Integer;

.field loaded:Ljava/lang/Integer;

.field tail:[B

.field final synthetic this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

.field public type:Ljava/lang/Byte;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->this$0:Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x2

    .line 7
    new-array v0, p1, [B

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->header:[B

    .line 13
    .line 14
    new-array p1, p1, [B

    .line 15
    .line 16
    fill-array-data p1, :array_1

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->tail:[B

    .line 20
    .line 21
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 27
    .line 28
    new-instance p1, Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 34
    .line 35
    const/16 p1, 0x200

    .line 36
    .line 37
    new-array p1, p1, [B

    .line 38
    .line 39
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->data:[B

    .line 40
    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loaded:Ljava/lang/Integer;

    .line 47
    .line 48
    return-void

    .line 49
    :array_0
    .array-data 1
        0xat
        0xat
    .end array-data

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    nop

    .line 55
    :array_1
    .array-data 1
        0xat
        0xat
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->len:Ljava/lang/Integer;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loaded:Ljava/lang/Integer;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->type:Ljava/lang/Byte;

    .line 22
    .line 23
    return-void
.end method

.method public loading(B)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->header:[B

    .line 8
    .line 9
    array-length v1, v1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-ne v0, v1, :cond_3

    .line 12
    .line 13
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->tail:[B

    .line 20
    .line 21
    aget-byte v1, v1, v0

    .line 22
    .line 23
    and-int/lit16 v1, v1, 0xff

    .line 24
    .line 25
    and-int/lit16 v3, p1, 0xff

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    if-ne v1, v3, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loaded:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loading(B)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    :goto_0
    move v2, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 50
    .line 51
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 52
    .line 53
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->tail:[B

    .line 63
    .line 64
    array-length v0, v0

    .line 65
    if-ne p1, v0, :cond_5

    .line 66
    .line 67
    move v2, v4

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->data:[B

    .line 78
    .line 79
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loaded:Ljava/lang/Integer;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    add-int/2addr v3, v4

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iput-object v3, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loaded:Ljava/lang/Integer;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    aput-byte p1, v0, v1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkTail:Landroid/util/SparseArray;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-lez v0, :cond_5

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->clear()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loading(B)Z

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    goto :goto_0

    .line 115
    :cond_3
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    iget-object v1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->header:[B

    .line 122
    .line 123
    aget-byte v1, v1, v0

    .line 124
    .line 125
    and-int/lit16 v1, v1, 0xff

    .line 126
    .line 127
    and-int/lit16 v3, p1, 0xff

    .line 128
    .line 129
    if-ne v1, v3, :cond_4

    .line 130
    .line 131
    iget-object p1, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 132
    .line 133
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 134
    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-lez v0, :cond_5

    .line 146
    .line 147
    iget-object v0, p0, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->checkHeader:Landroid/util/SparseArray;

    .line 148
    .line 149
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lcom/google/android/projection/sink/embedded/bluetooth/ExtBluetooth$Pack;->loading(B)Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    :cond_5
    :goto_1
    return v2
.end method

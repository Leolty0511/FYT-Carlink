.class public final Landroid/bluetooth/le/ScanRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA_128_BIT:I = 0x21

.field private static final DATA_TYPE_SERVICE_DATA_16_BIT:I = 0x16

.field private static final DATA_TYPE_SERVICE_DATA_32_BIT:I = 0x20

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p6, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 11
    .line 12
    iput p4, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 13
    .line 14
    iput p5, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 15
    .line 16
    iput-object p7, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    .line 17
    .line 18
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2

    .line 1
    new-array v0, p2, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public static parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;
    .locals 16

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez v8, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/util/SparseArray;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 15
    .line 16
    .line 17
    new-instance v3, Landroid/util/ArrayMap;

    .line 18
    .line 19
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, -0x1

    .line 24
    const/high16 v6, -0x80000000

    .line 25
    .line 26
    move-object v7, v0

    .line 27
    :goto_0
    :try_start_0
    array-length v9, v8

    .line 28
    if-ge v4, v9, :cond_6

    .line 29
    .line 30
    add-int/lit8 v9, v4, 0x1

    .line 31
    .line 32
    aget-byte v4, v8, v4

    .line 33
    .line 34
    const/16 v10, 0xff

    .line 35
    .line 36
    and-int/2addr v4, v10

    .line 37
    if-nez v4, :cond_1

    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_1
    add-int/lit8 v4, v4, -0x1

    .line 42
    .line 43
    add-int/lit8 v11, v9, 0x1

    .line 44
    .line 45
    aget-byte v9, v8, v9

    .line 46
    .line 47
    and-int/2addr v9, v10

    .line 48
    const/16 v12, 0x16

    .line 49
    .line 50
    const/16 v13, 0x10

    .line 51
    .line 52
    const/16 v15, 0x21

    .line 53
    .line 54
    const/16 v0, 0x20

    .line 55
    .line 56
    const/4 v14, 0x2

    .line 57
    if-eq v9, v12, :cond_2

    .line 58
    .line 59
    if-eq v9, v10, :cond_3

    .line 60
    .line 61
    if-eq v9, v0, :cond_2

    .line 62
    .line 63
    if-eq v9, v15, :cond_2

    .line 64
    .line 65
    packed-switch v9, :pswitch_data_0

    .line 66
    .line 67
    .line 68
    goto :goto_3

    .line 69
    :pswitch_0
    aget-byte v6, v8, v11

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :pswitch_1
    new-instance v7, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v8, v11, v4}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :pswitch_2
    invoke-static {v8, v11, v4, v13, v1}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :pswitch_3
    const/4 v12, 0x4

    .line 87
    invoke-static {v8, v11, v4, v12, v1}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :pswitch_4
    invoke-static {v8, v11, v4, v14, v1}, Landroid/bluetooth/le/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :pswitch_5
    aget-byte v0, v8, v11

    .line 96
    .line 97
    and-int/lit16 v5, v0, 0xff

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_2
    const/4 v12, 0x4

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    add-int/lit8 v0, v11, 0x1

    .line 103
    .line 104
    aget-byte v0, v8, v0

    .line 105
    .line 106
    and-int/2addr v0, v10

    .line 107
    shl-int/lit8 v0, v0, 0x8

    .line 108
    .line 109
    aget-byte v9, v8, v11

    .line 110
    .line 111
    and-int/2addr v9, v10

    .line 112
    add-int/2addr v0, v9

    .line 113
    add-int/lit8 v9, v11, 0x2

    .line 114
    .line 115
    add-int/lit8 v10, v4, -0x2

    .line 116
    .line 117
    invoke-static {v8, v9, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    invoke-virtual {v2, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_3

    .line 125
    :goto_1
    if-ne v9, v0, :cond_4

    .line 126
    .line 127
    move v13, v12

    .line 128
    goto :goto_2

    .line 129
    :cond_4
    if-ne v9, v15, :cond_5

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_5
    move v13, v14

    .line 133
    :goto_2
    invoke-static {v8, v11, v13}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    add-int v9, v11, v13

    .line 142
    .line 143
    sub-int v10, v4, v13

    .line 144
    .line 145
    invoke-static {v8, v9, v10}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    .line 146
    .line 147
    .line 148
    move-result-object v9

    .line 149
    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    :goto_3
    add-int/2addr v4, v11

    .line 153
    const/4 v0, 0x0

    .line 154
    goto :goto_0

    .line 155
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-eqz v0, :cond_7

    .line 160
    .line 161
    const/4 v1, 0x0

    .line 162
    :cond_7
    new-instance v9, Landroid/bluetooth/le/ScanRecord;

    .line 163
    .line 164
    move-object v0, v9

    .line 165
    move v4, v5

    .line 166
    move v5, v6

    .line 167
    move-object v6, v7

    .line 168
    move-object/from16 v7, p0

    .line 169
    .line 170
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    return-object v9

    .line 174
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    const-string/jumbo v1, "unable to parse scan record: "

    .line 177
    .line 178
    .line 179
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "ScanRecord"

    .line 194
    .line 195
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    new-instance v9, Landroid/bluetooth/le/ScanRecord;

    .line 199
    .line 200
    const/4 v1, 0x0

    .line 201
    const/4 v2, 0x0

    .line 202
    const/4 v3, 0x0

    .line 203
    const/4 v4, -0x1

    .line 204
    const/high16 v5, -0x80000000

    .line 205
    .line 206
    const/4 v6, 0x0

    .line 207
    move-object v0, v9

    .line 208
    move-object/from16 v7, p0

    .line 209
    .line 210
    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/le/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    .line 211
    .line 212
    .line 213
    return-object v9

    .line 214
    nop

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    .line 1
    :goto_0
    if-lez p2, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1, p3}, Landroid/bluetooth/le/ScanRecord;->extractBytes([BII)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    sub-int/2addr p2, p3

    .line 15
    add-int/2addr p1, p3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return p1
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceUuids()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .locals 1

    iget v0, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ScanRecord [mAdvertiseFlags="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mAdvertiseFlags:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mServiceUuids="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mManufacturerSpecificData="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 29
    .line 30
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Landroid/util/SparseArray;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", mServiceData="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 43
    .line 44
    invoke-static {v1}, Landroid/bluetooth/le/BluetoothLeUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, ", mTxPowerLevel="

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget v1, p0, Landroid/bluetooth/le/ScanRecord;->mTxPowerLevel:I

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v1, ", mDeviceName="

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v1, p0, Landroid/bluetooth/le/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 67
    .line 68
    const-string v2, "]"

    .line 69
    .line 70
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

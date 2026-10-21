.class public abstract Landroid/hardware/cas/V1_0/ICasListener$Stub;
.super Landroid/os/HwBinder;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/cas/V1_0/ICasListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/V1_0/ICasListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 8
    .line 9
    const-wide/16 v1, 0x0

    .line 10
    .line 11
    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 15
    .line 16
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x48t
        0xet
        0x14t
        0x56t
        -0x48t
        0x1ft
        -0x80t
        0x3t
        0x2dt
        0xdt
        -0x19t
        -0x35t
        0x45t
        0x65t
        0x2at
        -0x3ft
        0x5at
        -0xft
        0x1et
        0x74t
        0x74t
        -0x2bt
        0x20t
        -0x29t
        0x57t
        0x48t
        0x1et
        -0x36t
        -0x53t
        0x79t
        0x6dt
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.cas@1.0::ICasListener"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "android.hardware.cas@1.0::ICasListener"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 8

    .line 1
    const-string p4, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    sparse-switch p1, :sswitch_data_0

    .line 5
    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :sswitch_0
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->notifySyspropsChanged()V

    .line 13
    .line 14
    .line 15
    goto/16 :goto_2

    .line 16
    .line 17
    :sswitch_1
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :sswitch_2
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->setHALInstrumentation()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_2

    .line 42
    .line 43
    :sswitch_3
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Landroid/os/HwBlob;

    .line 54
    .line 55
    const/16 p4, 0x10

    .line 56
    .line 57
    invoke-direct {p2, p4}, Landroid/os/HwBlob;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    const-wide/16 v1, 0x8

    .line 65
    .line 66
    invoke-virtual {p2, v1, v2, p4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 67
    .line 68
    .line 69
    const-wide/16 v1, 0xc

    .line 70
    .line 71
    invoke-virtual {p2, v1, v2, v0}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Landroid/os/HwBlob;

    .line 75
    .line 76
    mul-int/lit8 v2, p4, 0x20

    .line 77
    .line 78
    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 79
    .line 80
    .line 81
    move v2, v0

    .line 82
    :goto_0
    if-ge v2, p4, :cond_1

    .line 83
    .line 84
    mul-int/lit8 v3, v2, 0x20

    .line 85
    .line 86
    int-to-long v3, v3

    .line 87
    move v5, v0

    .line 88
    :goto_1
    const/16 v6, 0x20

    .line 89
    .line 90
    if-ge v5, v6, :cond_0

    .line 91
    .line 92
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    check-cast v6, [B

    .line 97
    .line 98
    aget-byte v6, v6, v5

    .line 99
    .line 100
    invoke-virtual {v1, v3, v4, v6}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 101
    .line 102
    .line 103
    const-wide/16 v6, 0x1

    .line 104
    .line 105
    add-long/2addr v3, v6

    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const-wide/16 v2, 0x0

    .line 113
    .line 114
    invoke-virtual {p2, v2, v3, v1}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, p2}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :sswitch_4
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :sswitch_5
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :sswitch_6
    invoke-virtual {p2, p4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :sswitch_7
    const-string p1, "android.hardware.cas@1.0::ICasListener"

    .line 169
    .line 170
    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 178
    .line 179
    .line 180
    move-result p4

    .line 181
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    invoke-interface {p0, p1, p4, p2}, Landroid/hardware/cas/V1_0/ICasListener;->onEvent(IILjava/util/ArrayList;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 192
    .line 193
    .line 194
    :goto_2
    return-void

    .line 195
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0xf43484e -> :sswitch_6
        0xf444247 -> :sswitch_5
        0xf445343 -> :sswitch_4
        0xf485348 -> :sswitch_3
        0xf494e54 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hardware.cas@1.0::ICasListener"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICasListener$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

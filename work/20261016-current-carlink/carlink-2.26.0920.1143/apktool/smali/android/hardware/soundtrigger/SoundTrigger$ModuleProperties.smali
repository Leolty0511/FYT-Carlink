.class public Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleProperties"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final description:Ljava/lang/String;

.field public final id:I

.field public final implementor:Ljava/lang/String;

.field public final maxBufferMs:I

.field public final maxKeyphrases:I

.field public final maxSoundModels:I

.field public final maxUsers:I

.field public final powerConsumptionMw:I

.field public final recognitionModes:I

.field public final returnsTriggerInEvent:Z

.field public final supportsCaptureTransition:Z

.field public final supportsConcurrentCapture:Z

.field public final uuid:Ljava/util/UUID;

.field public final version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    .line 5
    .line 6
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    .line 15
    .line 16
    iput p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    .line 17
    .line 18
    iput p6, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    .line 19
    .line 20
    iput p7, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    .line 21
    .line 22
    iput p8, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    .line 23
    .line 24
    iput p9, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    .line 25
    .line 26
    iput-boolean p10, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    .line 27
    .line 28
    iput p11, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    .line 29
    .line 30
    iput-boolean p12, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    .line 31
    .line 32
    iput p13, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    .line 33
    .line 34
    iput-boolean p14, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic access$000(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 0

    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 18

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v10, 0x0

    .line 42
    const/4 v11, 0x1

    .line 43
    if-ne v0, v11, :cond_0

    .line 44
    .line 45
    move v12, v11

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move v12, v10

    .line 48
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 49
    .line 50
    .line 51
    move-result v13

    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-ne v0, v11, :cond_1

    .line 57
    .line 58
    move v14, v11

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move v14, v10

    .line 61
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v15

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readByte()B

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-ne v0, v11, :cond_2

    .line 70
    .line 71
    move/from16 v16, v11

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_2
    move/from16 v16, v10

    .line 75
    .line 76
    :goto_2
    new-instance v17, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    .line 77
    .line 78
    move-object/from16 v0, v17

    .line 79
    .line 80
    move v10, v12

    .line 81
    move v11, v13

    .line 82
    move v12, v14

    .line 83
    move v13, v15

    .line 84
    move/from16 v14, v16

    .line 85
    .line 86
    invoke-direct/range {v0 .. v14}, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIZIZIZ)V

    .line 87
    .line 88
    .line 89
    return-object v17
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "ModuleProperties [id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", implementor="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", description="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", uuid="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", version="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", maxSoundModels="

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", maxKeyphrases="

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", maxUsers="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", recognitionModes="

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", supportsCaptureTransition="

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", maxBufferMs="

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string v1, ", supportsConcurrentCapture="

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", powerConsumptionMw="

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", returnsTriggerInEvent="

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    .line 139
    .line 140
    const-string v2, "]"

    .line 141
    .line 142
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->id:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->implementor:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->description:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->uuid:Ljava/util/UUID;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->version:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxSoundModels:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxKeyphrases:I

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxUsers:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->recognitionModes:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    .line 49
    .line 50
    iget-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsCaptureTransition:Z

    .line 51
    .line 52
    int-to-byte p2, p2

    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    .line 55
    .line 56
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->maxBufferMs:I

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    iget-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->supportsConcurrentCapture:Z

    .line 62
    .line 63
    int-to-byte p2, p2

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    .line 66
    .line 67
    iget p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->powerConsumptionMw:I

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    .line 71
    .line 72
    iget-boolean p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;->returnsTriggerInEvent:Z

    .line 73
    .line 74
    int-to-byte p2, p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

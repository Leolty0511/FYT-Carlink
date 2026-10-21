.class public Landroid/net/wifi/RttManager$RttParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/RttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RttParams"
.end annotation


# instance fields
.field public LCIRequest:Z

.field public LCRRequest:Z

.field public bandwidth:I

.field public bssid:Ljava/lang/String;

.field public burstTimeout:I

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public deviceType:I

.field public frequency:I

.field public interval:I

.field public numRetriesPerFTMR:I

.field public numRetriesPerMeasurementFrame:I

.field public numSamplesPerBurst:I

.field public num_retries:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public num_samples:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public numberBurst:I

.field public preamble:I

.field public requestType:I

.field public secure:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 6
    .line 7
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    iput v1, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 15
    .line 16
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 17
    .line 18
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 19
    .line 20
    const/16 v0, 0xf

    .line 21
    .line 22
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 23
    .line 24
    const/4 v0, 0x2

    .line 25
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    iput v0, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "deviceType="

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->deviceType:I

    .line 14
    .line 15
    const-string v3, ", requestType="

    .line 16
    .line 17
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->requestType:I

    .line 22
    .line 23
    const-string v3, ", secure="

    .line 24
    .line 25
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttParams;->secure:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v2, ", bssid="

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Landroid/net/wifi/RttManager$RttParams;->bssid:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v2, ", frequency="

    .line 63
    .line 64
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->frequency:I

    .line 68
    .line 69
    const-string v3, ", channelWidth="

    .line 70
    .line 71
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->channelWidth:I

    .line 76
    .line 77
    const-string v3, ", centerFreq0="

    .line 78
    .line 79
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq0:I

    .line 84
    .line 85
    const-string v3, ", centerFreq1="

    .line 86
    .line 87
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->centerFreq1:I

    .line 92
    .line 93
    const-string v3, ", num_samples="

    .line 94
    .line 95
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->num_samples:I

    .line 100
    .line 101
    const-string v3, ", num_retries="

    .line 102
    .line 103
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->num_retries:I

    .line 108
    .line 109
    const-string v3, ", numberBurst="

    .line 110
    .line 111
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->numberBurst:I

    .line 116
    .line 117
    const-string v3, ", interval="

    .line 118
    .line 119
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->interval:I

    .line 124
    .line 125
    const-string v3, ", numSamplesPerBurst="

    .line 126
    .line 127
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->numSamplesPerBurst:I

    .line 132
    .line 133
    const-string v3, ", numRetriesPerMeasurementFrame="

    .line 134
    .line 135
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerMeasurementFrame:I

    .line 140
    .line 141
    const-string v3, ", numRetriesPerFTMR="

    .line 142
    .line 143
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->numRetriesPerFTMR:I

    .line 148
    .line 149
    const-string v3, ", LCIRequest="

    .line 150
    .line 151
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttParams;->LCIRequest:Z

    .line 156
    .line 157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, ", LCRRequest="

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-boolean v2, p0, Landroid/net/wifi/RttManager$RttParams;->LCRRequest:Z

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    const-string v2, ", burstTimeout="

    .line 189
    .line 190
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->burstTimeout:I

    .line 194
    .line 195
    const-string v3, ", preamble="

    .line 196
    .line 197
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->preamble:I

    .line 202
    .line 203
    const-string v3, ", bandwidth="

    .line 204
    .line 205
    invoke-static {v1, v2, v0, v3}, Landroid/app/m;->m(Ljava/lang/StringBuilder;ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    iget v2, p0, Landroid/net/wifi/RttManager$RttParams;->bandwidth:I

    .line 210
    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    return-object v0
.end method

.class public Landroid/content/pm/PackageUserState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appLinkGeneration:I

.field public categoryHint:I

.field public ceDataInode:J

.field public disabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public domainVerificationStatus:I

.field public enabled:I

.field public enabledComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hidden:Z

.field public installReason:I

.field public installed:Z

.field public instantApp:Z

.field public lastDisableAppCaller:Ljava/lang/String;

.field public notLaunched:Z

.field public overlayPaths:[Ljava/lang/String;

.field public stopped:Z

.field public suspended:Z

.field public virtualPreload:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 5
    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 6
    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 7
    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 8
    iput v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageUserState;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 11
    iget-wide v0, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    iput-wide v0, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 12
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->installed:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 13
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 14
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 15
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 16
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 17
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 18
    iget-boolean v0, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    iput-boolean v0, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 19
    iget v0, p1, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 20
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 21
    iget v0, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 22
    iget v0, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 23
    iget v0, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 24
    iget v0, p1, Landroid/content/pm/PackageUserState;->installReason:I

    iput v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 25
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 26
    iget-object v0, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull(Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 27
    iget-object p1, p1, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    .line 28
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Landroid/content/pm/PackageUserState;->overlayPaths:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/content/pm/PackageUserState;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/content/pm/PackageUserState;

    .line 8
    .line 9
    iget-wide v2, p0, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 10
    .line 11
    iget-wide v4, p1, Landroid/content/pm/PackageUserState;->ceDataInode:J

    .line 12
    .line 13
    cmp-long v0, v2, v4

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    .line 19
    .line 20
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    .line 21
    .line 22
    if-eq v0, v2, :cond_2

    .line 23
    .line 24
    return v1

    .line 25
    :cond_2
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 26
    .line 27
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->stopped:Z

    .line 28
    .line 29
    if-eq v0, v2, :cond_3

    .line 30
    .line 31
    return v1

    .line 32
    :cond_3
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 33
    .line 34
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->notLaunched:Z

    .line 35
    .line 36
    if-eq v0, v2, :cond_4

    .line 37
    .line 38
    return v1

    .line 39
    :cond_4
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 40
    .line 41
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    .line 42
    .line 43
    if-eq v0, v2, :cond_5

    .line 44
    .line 45
    return v1

    .line 46
    :cond_5
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 47
    .line 48
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->suspended:Z

    .line 49
    .line 50
    if-eq v0, v2, :cond_6

    .line 51
    .line 52
    return v1

    .line 53
    :cond_6
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 54
    .line 55
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->instantApp:Z

    .line 56
    .line 57
    if-eq v0, v2, :cond_7

    .line 58
    .line 59
    return v1

    .line 60
    :cond_7
    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 61
    .line 62
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->virtualPreload:Z

    .line 63
    .line 64
    if-eq v0, v2, :cond_8

    .line 65
    .line 66
    return v1

    .line 67
    :cond_8
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 68
    .line 69
    iget v2, p1, Landroid/content/pm/PackageUserState;->enabled:I

    .line 70
    .line 71
    if-eq v0, v2, :cond_9

    .line 72
    .line 73
    return v1

    .line 74
    :cond_9
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 75
    .line 76
    if-nez v0, :cond_a

    .line 77
    .line 78
    iget-object v2, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 79
    .line 80
    if-nez v2, :cond_b

    .line 81
    .line 82
    :cond_a
    if-eqz v0, :cond_c

    .line 83
    .line 84
    iget-object v2, p1, Landroid/content/pm/PackageUserState;->lastDisableAppCaller:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_c

    .line 91
    .line 92
    :cond_b
    return v1

    .line 93
    :cond_c
    iget v0, p0, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 94
    .line 95
    iget v2, p1, Landroid/content/pm/PackageUserState;->domainVerificationStatus:I

    .line 96
    .line 97
    if-eq v0, v2, :cond_d

    .line 98
    .line 99
    return v1

    .line 100
    :cond_d
    iget v0, p0, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 101
    .line 102
    iget v2, p1, Landroid/content/pm/PackageUserState;->appLinkGeneration:I

    .line 103
    .line 104
    if-eq v0, v2, :cond_e

    .line 105
    .line 106
    return v1

    .line 107
    :cond_e
    iget v0, p0, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 108
    .line 109
    iget v2, p1, Landroid/content/pm/PackageUserState;->categoryHint:I

    .line 110
    .line 111
    if-eq v0, v2, :cond_f

    .line 112
    .line 113
    return v1

    .line 114
    :cond_f
    iget v0, p0, Landroid/content/pm/PackageUserState;->installReason:I

    .line 115
    .line 116
    iget v2, p1, Landroid/content/pm/PackageUserState;->installReason:I

    .line 117
    .line 118
    if-eq v0, v2, :cond_10

    .line 119
    .line 120
    return v1

    .line 121
    :cond_10
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 122
    .line 123
    if-nez v0, :cond_11

    .line 124
    .line 125
    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 126
    .line 127
    if-nez v2, :cond_12

    .line 128
    .line 129
    :cond_11
    if-eqz v0, :cond_13

    .line 130
    .line 131
    iget-object v2, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 132
    .line 133
    if-nez v2, :cond_13

    .line 134
    .line 135
    :cond_12
    return v1

    .line 136
    :cond_13
    const/4 v2, 0x1

    .line 137
    if-eqz v0, :cond_16

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    iget-object v3, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    if-eq v0, v3, :cond_14

    .line 150
    .line 151
    return v1

    .line 152
    :cond_14
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 153
    .line 154
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    sub-int/2addr v0, v2

    .line 159
    :goto_0
    if-ltz v0, :cond_16

    .line 160
    .line 161
    iget-object v3, p1, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 162
    .line 163
    iget-object v4, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 164
    .line 165
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v3

    .line 173
    if-nez v3, :cond_15

    .line 174
    .line 175
    return v1

    .line 176
    :cond_15
    add-int/lit8 v0, v0, -0x1

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_16
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 180
    .line 181
    if-nez v0, :cond_17

    .line 182
    .line 183
    iget-object v3, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 184
    .line 185
    if-nez v3, :cond_18

    .line 186
    .line 187
    :cond_17
    if-eqz v0, :cond_19

    .line 188
    .line 189
    iget-object v3, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 190
    .line 191
    if-nez v3, :cond_19

    .line 192
    .line 193
    :cond_18
    return v1

    .line 194
    :cond_19
    if-eqz v0, :cond_1c

    .line 195
    .line 196
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iget-object v3, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 201
    .line 202
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    if-eq v0, v3, :cond_1a

    .line 207
    .line 208
    return v1

    .line 209
    :cond_1a
    iget-object v0, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    sub-int/2addr v0, v2

    .line 216
    :goto_1
    if-ltz v0, :cond_1c

    .line 217
    .line 218
    iget-object v3, p1, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 219
    .line 220
    iget-object v4, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 221
    .line 222
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v3

    .line 230
    if-nez v3, :cond_1b

    .line 231
    .line 232
    return v1

    .line 233
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_1c
    return v2
.end method

.method public isAvailable(I)Z
    .locals 3

    const/high16 v0, 0x400000

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method public isEnabled(Landroid/content/pm/ComponentInfo;I)Z
    .locals 4

    .line 1
    and-int/lit16 v0, p2, 0x200

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget v0, p0, Landroid/content/pm/PackageUserState;->enabled:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    const/4 v3, 0x2

    .line 13
    if-eq v0, v3, :cond_2

    .line 14
    .line 15
    const/4 v3, 0x3

    .line 16
    if-eq v0, v3, :cond_2

    .line 17
    .line 18
    const/4 v3, 0x4

    .line 19
    if-eq v0, v3, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const v0, 0x8000

    .line 23
    .line 24
    .line 25
    and-int/2addr p2, v0

    .line 26
    if-nez p2, :cond_3

    .line 27
    .line 28
    :cond_2
    return v2

    .line 29
    :cond_3
    iget-object p2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 30
    .line 31
    iget-boolean p2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 32
    .line 33
    if-nez p2, :cond_4

    .line 34
    .line 35
    return v2

    .line 36
    :cond_4
    :goto_0
    iget-object p2, p0, Landroid/content/pm/PackageUserState;->enabledComponents:Landroid/util/ArraySet;

    .line 37
    .line 38
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_5

    .line 45
    .line 46
    return v1

    .line 47
    :cond_5
    iget-object p2, p0, Landroid/content/pm/PackageUserState;->disabledComponents:Landroid/util/ArraySet;

    .line 48
    .line 49
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p2, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->enabled:Z

    .line 59
    .line 60
    return p1
.end method

.method public isMatch(Landroid/content/pm/ComponentInfo;I)Z
    .locals 5

    .line 1
    iget-object v0, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const v1, 0x402000

    .line 8
    .line 9
    .line 10
    and-int/2addr v1, p2

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v1, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v3

    .line 18
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageUserState;->isAvailable(I)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-nez v4, :cond_2

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    if-nez v1, :cond_2

    .line 27
    .line 28
    :cond_1
    return v3

    .line 29
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageUserState;->isEnabled(Landroid/content/pm/ComponentInfo;I)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 34
    .line 35
    return v3

    .line 36
    :cond_3
    const/high16 v1, 0x100000

    .line 37
    .line 38
    and-int/2addr v1, p2

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    return v3

    .line 44
    :cond_4
    const/high16 v0, 0x40000

    .line 45
    .line 46
    and-int/2addr v0, p2

    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-boolean v0, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 50
    .line 51
    if-nez v0, :cond_5

    .line 52
    .line 53
    move v0, v2

    .line 54
    goto :goto_1

    .line 55
    :cond_5
    move v0, v3

    .line 56
    :goto_1
    const/high16 v1, 0x80000

    .line 57
    .line 58
    and-int/2addr p2, v1

    .line 59
    if-eqz p2, :cond_6

    .line 60
    .line 61
    iget-boolean p1, p1, Landroid/content/pm/ComponentInfo;->directBootAware:Z

    .line 62
    .line 63
    if-eqz p1, :cond_6

    .line 64
    .line 65
    move p1, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_6
    move p1, v3

    .line 68
    :goto_2
    if-nez v0, :cond_8

    .line 69
    .line 70
    if-eqz p1, :cond_7

    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_7
    move v2, v3

    .line 74
    :cond_8
    :goto_3
    return v2
.end method

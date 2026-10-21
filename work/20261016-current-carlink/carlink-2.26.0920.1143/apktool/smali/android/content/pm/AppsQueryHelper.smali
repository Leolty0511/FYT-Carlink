.class public Landroid/content/pm/AppsQueryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I = 0x2

.field public static GET_IMES:I = 0x4

.field public static GET_NON_LAUNCHABLE_APPS:I = 0x1

.field public static GET_REQUIRED_FOR_SYSTEM_USER:I = 0x8


# instance fields
.field private mAllApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/IPackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/AppsQueryHelper;-><init>(Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public getAllApps(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const/16 v1, 0x2200

    .line 4
    .line 5
    invoke-interface {v0, v1, p1}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p1

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    throw p1
.end method

.method public getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/String;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 8
    .line 9
    invoke-interface {v0, v1, v2, p2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method

.method public queryApps(IZLandroid/os/UserHandle;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget v0, Landroid/content/pm/AppsQueryHelper;->GET_NON_LAUNCHABLE_APPS:I

    .line 2
    .line 3
    and-int/2addr v0, p1

    .line 4
    const/4 v1, 0x1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move v0, v2

    .line 11
    :goto_0
    sget v3, Landroid/content/pm/AppsQueryHelper;->GET_APPS_WITH_INTERACT_ACROSS_USERS_PERM:I

    .line 12
    .line 13
    and-int/2addr v3, p1

    .line 14
    if-lez v3, :cond_1

    .line 15
    .line 16
    move v3, v1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move v3, v2

    .line 19
    :goto_1
    sget v4, Landroid/content/pm/AppsQueryHelper;->GET_IMES:I

    .line 20
    .line 21
    and-int/2addr v4, p1

    .line 22
    if-lez v4, :cond_2

    .line 23
    .line 24
    move v4, v1

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move v4, v2

    .line 27
    :goto_2
    sget v5, Landroid/content/pm/AppsQueryHelper;->GET_REQUIRED_FOR_SYSTEM_USER:I

    .line 28
    .line 29
    and-int/2addr v5, p1

    .line 30
    if-lez v5, :cond_3

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v1, v2

    .line 34
    :goto_3
    iget-object v5, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 35
    .line 36
    if-nez v5, :cond_4

    .line 37
    .line 38
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    invoke-virtual {p0, v5}, Landroid/content/pm/AppsQueryHelper;->getAllApps(I)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    iput-object v5, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 47
    .line 48
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    if-nez p1, :cond_7

    .line 54
    .line 55
    iget-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    :goto_4
    if-ge v2, p1, :cond_6

    .line 62
    .line 63
    iget-object p3, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Landroid/content/pm/ApplicationInfo;

    .line 70
    .line 71
    if-eqz p2, :cond_5

    .line 72
    .line 73
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_5
    iget-object p3, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_4

    .line 88
    :cond_6
    return-object v5

    .line 89
    :cond_7
    if-eqz v0, :cond_b

    .line 90
    .line 91
    new-instance p1, Landroid/content/Intent;

    .line 92
    .line 93
    const-string v0, "android.intent.action.MAIN"

    .line 94
    .line 95
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string v0, "android.intent.category.LAUNCHER"

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/AppsQueryHelper;->queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    .line 113
    .line 114
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    move v7, v2

    .line 122
    :goto_6
    if-ge v7, v6, :cond_8

    .line 123
    .line 124
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 129
    .line 130
    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 131
    .line 132
    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 133
    .line 134
    invoke-virtual {v0, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v7, v7, 0x1

    .line 138
    .line 139
    goto :goto_6

    .line 140
    :cond_8
    iget-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 141
    .line 142
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    move v6, v2

    .line 147
    :goto_7
    if-ge v6, p1, :cond_b

    .line 148
    .line 149
    iget-object v7, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 156
    .line 157
    if-eqz p2, :cond_9

    .line 158
    .line 159
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 160
    .line 161
    .line 162
    move-result v8

    .line 163
    if-nez v8, :cond_9

    .line 164
    .line 165
    goto :goto_8

    .line 166
    :cond_9
    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-nez v8, :cond_a

    .line 173
    .line 174
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    :cond_a
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 178
    .line 179
    goto :goto_7

    .line 180
    :cond_b
    if-eqz v3, :cond_e

    .line 181
    .line 182
    const-string p1, "android.permission.INTERACT_ACROSS_USERS"

    .line 183
    .line 184
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 185
    .line 186
    .line 187
    move-result v0

    .line 188
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/AppsQueryHelper;->getPackagesHoldingPermission(Ljava/lang/String;I)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    move v3, v2

    .line 197
    :goto_9
    if-ge v3, v0, :cond_e

    .line 198
    .line 199
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v6

    .line 203
    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 204
    .line 205
    if-eqz p2, :cond_c

    .line 206
    .line 207
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 208
    .line 209
    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 210
    .line 211
    .line 212
    move-result v7

    .line 213
    if-nez v7, :cond_c

    .line 214
    .line 215
    goto :goto_a

    .line 216
    :cond_c
    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    if-nez v7, :cond_d

    .line 223
    .line 224
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 225
    .line 226
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    :cond_d
    :goto_a
    add-int/lit8 v3, v3, 0x1

    .line 230
    .line 231
    goto :goto_9

    .line 232
    :cond_e
    if-eqz v4, :cond_11

    .line 233
    .line 234
    new-instance p1, Landroid/content/Intent;

    .line 235
    .line 236
    const-string v0, "android.view.InputMethod"

    .line 237
    .line 238
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 242
    .line 243
    .line 244
    move-result p3

    .line 245
    invoke-virtual {p0, p1, p3}, Landroid/content/pm/AppsQueryHelper;->queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result p3

    .line 253
    move v0, v2

    .line 254
    :goto_b
    if-ge v0, p3, :cond_11

    .line 255
    .line 256
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 261
    .line 262
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 263
    .line 264
    if-eqz p2, :cond_f

    .line 265
    .line 266
    iget-object v4, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 267
    .line 268
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    if-nez v4, :cond_f

    .line 273
    .line 274
    goto :goto_c

    .line 275
    :cond_f
    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    move-result v4

    .line 281
    if-nez v4, :cond_10

    .line 282
    .line 283
    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 284
    .line 285
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .line 287
    .line 288
    :cond_10
    :goto_c
    add-int/lit8 v0, v0, 0x1

    .line 289
    .line 290
    goto :goto_b

    .line 291
    :cond_11
    if-eqz v1, :cond_14

    .line 292
    .line 293
    iget-object p1, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 294
    .line 295
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 296
    .line 297
    .line 298
    move-result p1

    .line 299
    :goto_d
    if-ge v2, p1, :cond_14

    .line 300
    .line 301
    iget-object p3, p0, Landroid/content/pm/AppsQueryHelper;->mAllApps:Ljava/util/List;

    .line 302
    .line 303
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object p3

    .line 307
    check-cast p3, Landroid/content/pm/ApplicationInfo;

    .line 308
    .line 309
    if-eqz p2, :cond_12

    .line 310
    .line 311
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    .line 312
    .line 313
    .line 314
    move-result v0

    .line 315
    if-nez v0, :cond_12

    .line 316
    .line 317
    goto :goto_e

    .line 318
    :cond_12
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isRequiredForSystemUser()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-eqz v0, :cond_13

    .line 323
    .line 324
    iget-object p3, p3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 325
    .line 326
    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    :cond_13
    :goto_e
    add-int/lit8 v2, v2, 0x1

    .line 330
    .line 331
    goto :goto_d

    .line 332
    :cond_14
    return-object v5
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0xc2200

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/AppsQueryHelper;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const v2, 0xc8080

    .line 5
    .line 6
    .line 7
    invoke-interface {v0, p1, v1, v2, p2}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p1

    .line 16
    :catch_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    throw p1
.end method

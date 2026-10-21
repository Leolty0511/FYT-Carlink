.class Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$RawContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final DATA_KEYS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    const-string v0, "data1"

    .line 2
    .line 3
    const-string v1, "data2"

    .line 4
    .line 5
    const-string v2, "data3"

    .line 6
    .line 7
    const-string v3, "data4"

    .line 8
    .line 9
    const-string v4, "data5"

    .line 10
    .line 11
    const-string v5, "data6"

    .line 12
    .line 13
    const-string v6, "data7"

    .line 14
    .line 15
    const-string v7, "data8"

    .line 16
    .line 17
    const-string v8, "data9"

    .line 18
    .line 19
    const-string v9, "data10"

    .line 20
    .line 21
    const-string v10, "data11"

    .line 22
    .line 23
    const-string v11, "data12"

    .line 24
    .line 25
    const-string v12, "data13"

    .line 26
    .line 27
    const-string v13, "data14"

    .line 28
    .line 29
    const-string v14, "data15"

    .line 30
    .line 31
    const-string v15, "data_sync1"

    .line 32
    .line 33
    const-string v16, "data_sync2"

    .line 34
    .line 35
    const-string v17, "data_sync3"

    .line 36
    .line 37
    const-string v18, "data_sync4"

    .line 38
    .line 39
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .line 44
    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 13

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    new-instance v4, Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v5, "account_name"

    .line 17
    .line 18
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v5, "account_type"

    .line 22
    .line 23
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v5, "data_set"

    .line 27
    .line 28
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v4, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v5, "dirty"

    .line 35
    .line 36
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v5, "version"

    .line 40
    .line 41
    .line 42
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo v5, "sourceid"

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string/jumbo v5, "sync1"

    .line 52
    .line 53
    .line 54
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string/jumbo v5, "sync2"

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string/jumbo v5, "sync3"

    .line 64
    .line 65
    .line 66
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string/jumbo v5, "sync4"

    .line 70
    .line 71
    .line 72
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const-string v5, "deleted"

    .line 76
    .line 77
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v5, "contact_id"

    .line 81
    .line 82
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    const-string/jumbo v5, "starred"

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    new-instance v5, Landroid/content/Entity;

    .line 92
    .line 93
    invoke-direct {v5, v4}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v6

    .line 100
    cmp-long v4, v2, v6

    .line 101
    .line 102
    if-eqz v4, :cond_1

    .line 103
    .line 104
    goto/16 :goto_2

    .line 105
    .line 106
    :cond_1
    new-instance v4, Landroid/content/ContentValues;

    .line 107
    .line 108
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v6, "data_id"

    .line 112
    .line 113
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 126
    .line 127
    .line 128
    const-string/jumbo v6, "res_package"

    .line 129
    .line 130
    .line 131
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    const-string/jumbo v6, "mimetype"

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string/jumbo v6, "is_primary"

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string/jumbo v6, "is_super_primary"

    .line 147
    .line 148
    .line 149
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v6, "data_version"

    .line 153
    .line 154
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string/jumbo v7, "group_sourceid"

    .line 158
    .line 159
    .line 160
    invoke-static {p1, v4, v7}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-static {p1, v4, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object v6, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;->DATA_KEYS:[Ljava/lang/String;

    .line 167
    .line 168
    array-length v7, v6

    .line 169
    const/4 v8, 0x0

    .line 170
    :goto_0
    if-ge v8, v7, :cond_5

    .line 171
    .line 172
    aget-object v9, v6, v8

    .line 173
    .line 174
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v10

    .line 178
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getType(I)I

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_4

    .line 183
    .line 184
    const/4 v12, 0x1

    .line 185
    if-eq v11, v12, :cond_3

    .line 186
    .line 187
    const/4 v12, 0x2

    .line 188
    if-eq v11, v12, :cond_3

    .line 189
    .line 190
    const/4 v12, 0x3

    .line 191
    if-eq v11, v12, :cond_3

    .line 192
    .line 193
    const/4 v12, 0x4

    .line 194
    if-ne v11, v12, :cond_2

    .line 195
    .line 196
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    .line 197
    .line 198
    .line 199
    move-result-object v10

    .line 200
    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 205
    .line 206
    const-string v0, "Invalid or unhandled data type"

    .line 207
    .line 208
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    throw p1

    .line 212
    :cond_3
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    invoke-virtual {v4, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    :cond_4
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 220
    .line 221
    goto :goto_0

    .line 222
    :cond_5
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 223
    .line 224
    invoke-virtual {v5, v6, v4}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 225
    .line 226
    .line 227
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-nez v4, :cond_0

    .line 232
    .line 233
    :goto_2
    return-object v5
.end method

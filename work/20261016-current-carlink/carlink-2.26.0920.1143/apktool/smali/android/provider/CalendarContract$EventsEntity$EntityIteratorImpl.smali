.class Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$EventsEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityIteratorImpl"
.end annotation


# static fields
.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String;

.field private static final COLUMN_ATTENDEE_EMAIL:I = 0x1

.field private static final COLUMN_ATTENDEE_IDENTITY:I = 0x5

.field private static final COLUMN_ATTENDEE_ID_NAMESPACE:I = 0x6

.field private static final COLUMN_ATTENDEE_NAME:I = 0x0

.field private static final COLUMN_ATTENDEE_RELATIONSHIP:I = 0x2

.field private static final COLUMN_ATTENDEE_STATUS:I = 0x4

.field private static final COLUMN_ATTENDEE_TYPE:I = 0x3

.field private static final COLUMN_ID:I = 0x0

.field private static final COLUMN_METHOD:I = 0x1

.field private static final COLUMN_MINUTES:I = 0x0

.field private static final COLUMN_NAME:I = 0x1

.field private static final COLUMN_VALUE:I = 0x2

.field private static final EXTENDED_PROJECTION:[Ljava/lang/String;

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String;

.field private static final WHERE_EVENT_ID:Ljava/lang/String; = "event_id=?"


# instance fields
.field private final mProvider:Landroid/content/ContentProviderClient;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-string/jumbo v0, "minutes"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "method"

    .line 5
    .line 6
    .line 7
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "attendeeName"

    .line 14
    .line 15
    const-string v2, "attendeeEmail"

    .line 16
    .line 17
    const-string v3, "attendeeRelationship"

    .line 18
    .line 19
    const-string v4, "attendeeType"

    .line 20
    .line 21
    const-string v5, "attendeeStatus"

    .line 22
    .line 23
    const-string v6, "attendeeIdentity"

    .line 24
    .line 25
    const-string v7, "attendeeIdNamespace"

    .line 26
    .line 27
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 32
    .line 33
    const-string/jumbo v0, "name"

    .line 34
    .line 35
    .line 36
    const-string/jumbo v1, "value"

    .line 37
    .line 38
    .line 39
    const-string v2, "_id"

    .line 40
    .line 41
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentProviderClient;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 6
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/ContentResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    .line 2
    iput-object p2, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "_id"

    .line 6
    .line 7
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    new-instance v5, Landroid/content/ContentValues;

    .line 16
    .line 17
    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-virtual {v5, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 25
    .line 26
    .line 27
    const-string v6, "calendar_id"

    .line 28
    .line 29
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v6, "title"

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v6, "description"

    .line 39
    .line 40
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v6, "eventLocation"

    .line 44
    .line 45
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v6, "eventStatus"

    .line 49
    .line 50
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const-string/jumbo v6, "selfAttendeeStatus"

    .line 54
    .line 55
    .line 56
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v6, "dtstart"

    .line 60
    .line 61
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v6, "dtend"

    .line 65
    .line 66
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v6, "duration"

    .line 70
    .line 71
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v6, "eventTimezone"

    .line 75
    .line 76
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v6, "eventEndTimezone"

    .line 80
    .line 81
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v6, "allDay"

    .line 85
    .line 86
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v6, "accessLevel"

    .line 90
    .line 91
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v6, "availability"

    .line 95
    .line 96
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string v6, "eventColor"

    .line 100
    .line 101
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v6, "eventColor_index"

    .line 105
    .line 106
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string/jumbo v6, "hasAlarm"

    .line 110
    .line 111
    .line 112
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string/jumbo v6, "hasExtendedProperties"

    .line 116
    .line 117
    .line 118
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v6, "rrule"

    .line 122
    .line 123
    .line 124
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string/jumbo v6, "rdate"

    .line 128
    .line 129
    .line 130
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v6, "exrule"

    .line 134
    .line 135
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    const-string v6, "exdate"

    .line 139
    .line 140
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string/jumbo v6, "original_sync_id"

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string/jumbo v6, "original_id"

    .line 150
    .line 151
    .line 152
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    const-string/jumbo v6, "originalInstanceTime"

    .line 156
    .line 157
    .line 158
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string/jumbo v6, "originalAllDay"

    .line 162
    .line 163
    .line 164
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string/jumbo v6, "lastDate"

    .line 168
    .line 169
    .line 170
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    const-string/jumbo v6, "hasAttendeeData"

    .line 174
    .line 175
    .line 176
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string/jumbo v6, "guestsCanInviteOthers"

    .line 180
    .line 181
    .line 182
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    const-string/jumbo v6, "guestsCanModify"

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string/jumbo v6, "guestsCanSeeGuests"

    .line 192
    .line 193
    .line 194
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    const-string v6, "customAppPackage"

    .line 198
    .line 199
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v6, "customAppUri"

    .line 203
    .line 204
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    const-string/jumbo v6, "uid2445"

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    const-string/jumbo v6, "organizer"

    .line 214
    .line 215
    .line 216
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    const-string/jumbo v6, "isOrganizer"

    .line 220
    .line 221
    .line 222
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    const-string v6, "_sync_id"

    .line 226
    .line 227
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v6, "dirty"

    .line 231
    .line 232
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string/jumbo v6, "mutators"

    .line 236
    .line 237
    .line 238
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    const-string/jumbo v6, "lastSynced"

    .line 242
    .line 243
    .line 244
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const-string v6, "deleted"

    .line 248
    .line 249
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    const-string/jumbo v6, "sync_data1"

    .line 253
    .line 254
    .line 255
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const-string/jumbo v6, "sync_data2"

    .line 259
    .line 260
    .line 261
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    const-string/jumbo v6, "sync_data3"

    .line 265
    .line 266
    .line 267
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    const-string/jumbo v6, "sync_data4"

    .line 271
    .line 272
    .line 273
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    const-string/jumbo v6, "sync_data5"

    .line 277
    .line 278
    .line 279
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string/jumbo v6, "sync_data6"

    .line 283
    .line 284
    .line 285
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    const-string/jumbo v6, "sync_data7"

    .line 289
    .line 290
    .line 291
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    const-string/jumbo v6, "sync_data8"

    .line 295
    .line 296
    .line 297
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const-string/jumbo v6, "sync_data9"

    .line 301
    .line 302
    .line 303
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    const-string/jumbo v6, "sync_data10"

    .line 307
    .line 308
    .line 309
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    const-string v6, "cal_sync1"

    .line 313
    .line 314
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-string v6, "cal_sync2"

    .line 318
    .line 319
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v6, "cal_sync3"

    .line 323
    .line 324
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    const-string v6, "cal_sync4"

    .line 328
    .line 329
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    const-string v6, "cal_sync5"

    .line 333
    .line 334
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v6, "cal_sync6"

    .line 338
    .line 339
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    const-string v6, "cal_sync7"

    .line 343
    .line 344
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 345
    .line 346
    .line 347
    const-string v6, "cal_sync8"

    .line 348
    .line 349
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    const-string v6, "cal_sync9"

    .line 353
    .line 354
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    const-string v6, "cal_sync10"

    .line 358
    .line 359
    invoke-static {v0, v5, v6}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    new-instance v6, Landroid/content/Entity;

    .line 363
    .line 364
    invoke-direct {v6, v5}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 365
    .line 366
    .line 367
    iget-object v7, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 368
    .line 369
    const/4 v5, 0x0

    .line 370
    const/4 v13, 0x1

    .line 371
    if-eqz v7, :cond_0

    .line 372
    .line 373
    sget-object v8, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 374
    .line 375
    sget-object v9, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 376
    .line 377
    const-string v10, "event_id=?"

    .line 378
    .line 379
    new-array v11, v13, [Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v12

    .line 385
    aput-object v12, v11, v5

    .line 386
    .line 387
    const/4 v12, 0x0

    .line 388
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 389
    .line 390
    .line 391
    move-result-object v7

    .line 392
    goto :goto_0

    .line 393
    :cond_0
    iget-object v14, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 394
    .line 395
    sget-object v15, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 396
    .line 397
    sget-object v16, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 398
    .line 399
    const-string v17, "event_id=?"

    .line 400
    .line 401
    new-array v7, v13, [Ljava/lang/String;

    .line 402
    .line 403
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v8

    .line 407
    aput-object v8, v7, v5

    .line 408
    .line 409
    const/16 v19, 0x0

    .line 410
    .line 411
    move-object/from16 v18, v7

    .line 412
    .line 413
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 414
    .line 415
    .line 416
    move-result-object v7

    .line 417
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 418
    .line 419
    .line 420
    move-result v8

    .line 421
    if-eqz v8, :cond_1

    .line 422
    .line 423
    new-instance v8, Landroid/content/ContentValues;

    .line 424
    .line 425
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 426
    .line 427
    .line 428
    const-string/jumbo v9, "minutes"

    .line 429
    .line 430
    .line 431
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 432
    .line 433
    .line 434
    move-result v10

    .line 435
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 436
    .line 437
    .line 438
    move-result-object v10

    .line 439
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    .line 441
    .line 442
    const-string/jumbo v9, "method"

    .line 443
    .line 444
    .line 445
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 446
    .line 447
    .line 448
    move-result v10

    .line 449
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 450
    .line 451
    .line 452
    move-result-object v10

    .line 453
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 454
    .line 455
    .line 456
    sget-object v9, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 457
    .line 458
    invoke-virtual {v6, v9, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 459
    .line 460
    .line 461
    goto :goto_0

    .line 462
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 463
    .line 464
    .line 465
    iget-object v14, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 466
    .line 467
    if-eqz v14, :cond_2

    .line 468
    .line 469
    sget-object v15, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 470
    .line 471
    sget-object v16, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 472
    .line 473
    const-string v17, "event_id=?"

    .line 474
    .line 475
    new-array v7, v13, [Ljava/lang/String;

    .line 476
    .line 477
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v8

    .line 481
    aput-object v8, v7, v5

    .line 482
    .line 483
    const/16 v19, 0x0

    .line 484
    .line 485
    move-object/from16 v18, v7

    .line 486
    .line 487
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 488
    .line 489
    .line 490
    move-result-object v7

    .line 491
    goto :goto_1

    .line 492
    :cond_2
    iget-object v14, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 493
    .line 494
    sget-object v15, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 495
    .line 496
    sget-object v16, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 497
    .line 498
    const-string v17, "event_id=?"

    .line 499
    .line 500
    new-array v7, v13, [Ljava/lang/String;

    .line 501
    .line 502
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v8

    .line 506
    aput-object v8, v7, v5

    .line 507
    .line 508
    const/16 v19, 0x0

    .line 509
    .line 510
    move-object/from16 v18, v7

    .line 511
    .line 512
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 517
    .line 518
    .line 519
    move-result v8

    .line 520
    const/4 v9, 0x2

    .line 521
    if-eqz v8, :cond_3

    .line 522
    .line 523
    new-instance v8, Landroid/content/ContentValues;

    .line 524
    .line 525
    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 526
    .line 527
    .line 528
    const-string v10, "attendeeName"

    .line 529
    .line 530
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v11

    .line 534
    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    const-string v10, "attendeeEmail"

    .line 538
    .line 539
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v11

    .line 543
    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    const-string v10, "attendeeRelationship"

    .line 547
    .line 548
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 549
    .line 550
    .line 551
    move-result v9

    .line 552
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 553
    .line 554
    .line 555
    move-result-object v9

    .line 556
    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    .line 558
    .line 559
    const-string v9, "attendeeType"

    .line 560
    .line 561
    const/4 v10, 0x3

    .line 562
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 563
    .line 564
    .line 565
    move-result v10

    .line 566
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 567
    .line 568
    .line 569
    move-result-object v10

    .line 570
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    .line 572
    .line 573
    const-string v9, "attendeeStatus"

    .line 574
    .line 575
    const/4 v10, 0x4

    .line 576
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 577
    .line 578
    .line 579
    move-result v10

    .line 580
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 581
    .line 582
    .line 583
    move-result-object v10

    .line 584
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 585
    .line 586
    .line 587
    const-string v9, "attendeeIdentity"

    .line 588
    .line 589
    const/4 v10, 0x5

    .line 590
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v10

    .line 594
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    const-string v9, "attendeeIdNamespace"

    .line 598
    .line 599
    const/4 v10, 0x6

    .line 600
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v10

    .line 604
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 608
    .line 609
    invoke-virtual {v6, v9, v8}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 610
    .line 611
    .line 612
    goto :goto_1

    .line 613
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 614
    .line 615
    .line 616
    iget-object v14, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mResolver:Landroid/content/ContentResolver;

    .line 617
    .line 618
    if-eqz v14, :cond_4

    .line 619
    .line 620
    sget-object v15, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 621
    .line 622
    sget-object v16, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 623
    .line 624
    const-string v17, "event_id=?"

    .line 625
    .line 626
    new-array v7, v13, [Ljava/lang/String;

    .line 627
    .line 628
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    aput-object v3, v7, v5

    .line 633
    .line 634
    const/16 v19, 0x0

    .line 635
    .line 636
    move-object/from16 v18, v7

    .line 637
    .line 638
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 639
    .line 640
    .line 641
    move-result-object v3

    .line 642
    goto :goto_2

    .line 643
    :cond_4
    iget-object v14, v1, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->mProvider:Landroid/content/ContentProviderClient;

    .line 644
    .line 645
    sget-object v15, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 646
    .line 647
    sget-object v16, Landroid/provider/CalendarContract$EventsEntity$EntityIteratorImpl;->EXTENDED_PROJECTION:[Ljava/lang/String;

    .line 648
    .line 649
    const-string v17, "event_id=?"

    .line 650
    .line 651
    new-array v7, v13, [Ljava/lang/String;

    .line 652
    .line 653
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v3

    .line 657
    aput-object v3, v7, v5

    .line 658
    .line 659
    const/16 v19, 0x0

    .line 660
    .line 661
    move-object/from16 v18, v7

    .line 662
    .line 663
    invoke-virtual/range {v14 .. v19}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    :goto_2
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 668
    .line 669
    .line 670
    move-result v4

    .line 671
    if-eqz v4, :cond_5

    .line 672
    .line 673
    new-instance v4, Landroid/content/ContentValues;

    .line 674
    .line 675
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 676
    .line 677
    .line 678
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v7

    .line 682
    invoke-virtual {v4, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .line 684
    .line 685
    const-string/jumbo v7, "name"

    .line 686
    .line 687
    .line 688
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v8

    .line 692
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    .line 694
    .line 695
    const-string/jumbo v7, "value"

    .line 696
    .line 697
    .line 698
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v8

    .line 702
    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    .line 704
    .line 705
    sget-object v7, Landroid/provider/CalendarContract$ExtendedProperties;->CONTENT_URI:Landroid/net/Uri;

    .line 706
    .line 707
    invoke-virtual {v6, v7, v4}, Landroid/content/Entity;->addSubValue(Landroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 708
    .line 709
    .line 710
    goto :goto_2

    .line 711
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 712
    .line 713
    .line 714
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 715
    .line 716
    .line 717
    return-object v6

    .line 718
    :catchall_0
    move-exception v0

    .line 719
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 720
    .line 721
    .line 722
    throw v0

    .line 723
    :catchall_1
    move-exception v0

    .line 724
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 725
    .line 726
    .line 727
    throw v0

    .line 728
    :catchall_2
    move-exception v0

    .line 729
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 730
    .line 731
    .line 732
    throw v0
.end method

.class Landroid/provider/CalendarContract$CalendarEntity$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CalendarContract$CalendarEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntityIteratorImpl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/CursorEntityIterator;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getEntityAndIncrementCursor(Landroid/database/Cursor;)Landroid/content/Entity;
    .locals 4

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
    move-result-wide v1

    .line 11
    new-instance v3, Landroid/content/ContentValues;

    .line 12
    .line 13
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "account_name"

    .line 24
    .line 25
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "account_type"

    .line 29
    .line 30
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v0, "_sync_id"

    .line 34
    .line 35
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "dirty"

    .line 39
    .line 40
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string/jumbo v0, "mutators"

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string v0, "cal_sync1"

    .line 50
    .line 51
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "cal_sync2"

    .line 55
    .line 56
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "cal_sync3"

    .line 60
    .line 61
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v0, "cal_sync4"

    .line 65
    .line 66
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "cal_sync5"

    .line 70
    .line 71
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string v0, "cal_sync6"

    .line 75
    .line 76
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v0, "cal_sync7"

    .line 80
    .line 81
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v0, "cal_sync8"

    .line 85
    .line 86
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    const-string v0, "cal_sync9"

    .line 90
    .line 91
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    const-string v0, "cal_sync10"

    .line 95
    .line 96
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string/jumbo v0, "name"

    .line 100
    .line 101
    .line 102
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v0, "calendar_displayName"

    .line 106
    .line 107
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v0, "calendar_color"

    .line 111
    .line 112
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    const-string v0, "calendar_color_index"

    .line 116
    .line 117
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "calendar_access_level"

    .line 121
    .line 122
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string/jumbo v0, "visible"

    .line 126
    .line 127
    .line 128
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v0, "sync_events"

    .line 132
    .line 133
    .line 134
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "calendar_location"

    .line 138
    .line 139
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string v0, "calendar_timezone"

    .line 143
    .line 144
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string/jumbo v0, "ownerAccount"

    .line 148
    .line 149
    .line 150
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v0, "canOrganizerRespond"

    .line 154
    .line 155
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const-string v0, "canModifyTimeZone"

    .line 159
    .line 160
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string/jumbo v0, "maxReminders"

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const-string v0, "canPartiallyUpdate"

    .line 170
    .line 171
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const-string v0, "allowedReminders"

    .line 175
    .line 176
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    const-string v0, "deleted"

    .line 180
    .line 181
    invoke-static {p1, v3, v0}, Landroid/database/DatabaseUtils;->cursorIntToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    new-instance v0, Landroid/content/Entity;

    .line 185
    .line 186
    invoke-direct {v0, v3}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 187
    .line 188
    .line 189
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 190
    .line 191
    .line 192
    return-object v0
.end method

.class Landroid/provider/ContactsContract$Groups$EntityIteratorImpl;
.super Landroid/content/CursorEntityIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Groups;
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
    .locals 2

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "_id"

    .line 7
    .line 8
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "account_name"

    .line 12
    .line 13
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "account_type"

    .line 17
    .line 18
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "dirty"

    .line 22
    .line 23
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string/jumbo v1, "version"

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "sourceid"

    .line 33
    .line 34
    .line 35
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v1, "res_package"

    .line 39
    .line 40
    .line 41
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string/jumbo v1, "title"

    .line 45
    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "title_res"

    .line 51
    .line 52
    .line 53
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string/jumbo v1, "group_visible"

    .line 57
    .line 58
    .line 59
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string/jumbo v1, "sync1"

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string/jumbo v1, "sync2"

    .line 69
    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    const-string/jumbo v1, "sync3"

    .line 75
    .line 76
    .line 77
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string/jumbo v1, "sync4"

    .line 81
    .line 82
    .line 83
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string/jumbo v1, "system_id"

    .line 87
    .line 88
    .line 89
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string v1, "deleted"

    .line 93
    .line 94
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorLongToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string/jumbo v1, "notes"

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string/jumbo v1, "should_sync"

    .line 104
    .line 105
    .line 106
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "favorites"

    .line 110
    .line 111
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v1, "auto_add"

    .line 115
    .line 116
    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->cursorStringToContentValuesIfPresent(Landroid/database/Cursor;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 120
    .line 121
    .line 122
    new-instance p1, Landroid/content/Entity;

    .line 123
    .line 124
    invoke-direct {p1, v0}, Landroid/content/Entity;-><init>(Landroid/content/ContentValues;)V

    .line 125
    .line 126
    .line 127
    return-object p1
.end method

.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mExpectedCount:Ljava/lang/Integer;

.field private mSelection:Ljava/lang/String;

.field private mSelectionArgs:[Ljava/lang/String;

.field private mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;

.field private mValuesBackReferences:Landroid/content/ContentValues;

.field private mYieldAllowed:Z


# direct methods
.method private constructor <init>(ILandroid/net/Uri;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 3
    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 4
    iput-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "uri must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/ContentProviderOperation$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return p0
.end method

.method public static synthetic access$100(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$500(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$700(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return p0
.end method


# virtual methods
.method public build()Landroid/content/ContentProviderOperation;
    .locals 3

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "Empty values"

    .line 5
    .line 6
    if-ne v0, v1, :cond_2

    .line 7
    .line 8
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0

    .line 35
    :cond_2
    :goto_0
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 36
    .line 37
    const/4 v1, 0x4

    .line 38
    if-ne v0, v1, :cond_6

    .line 39
    .line 40
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 41
    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_6

    .line 49
    .line 50
    :cond_3
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_6

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    .line 61
    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw v0

    .line 71
    :cond_6
    :goto_1
    new-instance v0, Landroid/content/ContentProviderOperation;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation$1;)V

    .line 75
    .line 76
    .line 77
    return-object v0
.end method

.method public withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v0, "only updates, deletes, and asserts can have expected counts"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    .line 27
    .line 28
    return-object p0
.end method

.method public withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo p2, "only updates, deletes, and asserts can have selections"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    .line 23
    .line 24
    if-nez p2, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    array-length p1, p2

    .line 31
    new-array p1, p1, [Ljava/lang/String;

    .line 32
    .line 33
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;

    .line 34
    .line 35
    array-length v0, p2

    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0
.end method

.method public withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo p2, "only updates, deletes, and asserts can have selection back-references"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    return-object p0
.end method

.method public withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo p2, "only inserts and updates can have values"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 32
    .line 33
    :cond_2
    if-nez p2, :cond_3

    .line 34
    .line 35
    iget-object p2, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 47
    .line 48
    check-cast p2, Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_4
    instance-of v0, p2, Ljava/lang/Byte;

    .line 55
    .line 56
    if-eqz v0, :cond_5

    .line 57
    .line 58
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 59
    .line 60
    check-cast p2, Ljava/lang/Byte;

    .line 61
    .line 62
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    instance-of v0, p2, Ljava/lang/Short;

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 71
    .line 72
    check-cast p2, Ljava/lang/Short;

    .line 73
    .line 74
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_6
    instance-of v0, p2, Ljava/lang/Integer;

    .line 79
    .line 80
    if-eqz v0, :cond_7

    .line 81
    .line 82
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 83
    .line 84
    check-cast p2, Ljava/lang/Integer;

    .line 85
    .line 86
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_7
    instance-of v0, p2, Ljava/lang/Long;

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 95
    .line 96
    check-cast p2, Ljava/lang/Long;

    .line 97
    .line 98
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_8
    instance-of v0, p2, Ljava/lang/Float;

    .line 103
    .line 104
    if-eqz v0, :cond_9

    .line 105
    .line 106
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 107
    .line 108
    check-cast p2, Ljava/lang/Float;

    .line 109
    .line 110
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_9
    instance-of v0, p2, Ljava/lang/Double;

    .line 115
    .line 116
    if-eqz v0, :cond_a

    .line 117
    .line 118
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 119
    .line 120
    check-cast p2, Ljava/lang/Double;

    .line 121
    .line 122
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_a
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 127
    .line 128
    if-eqz v0, :cond_b

    .line 129
    .line 130
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 131
    .line 132
    check-cast p2, Ljava/lang/Boolean;

    .line 133
    .line 134
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_b
    instance-of v0, p2, [B

    .line 139
    .line 140
    if-eqz v0, :cond_c

    .line 141
    .line 142
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 143
    .line 144
    check-cast p2, [B

    .line 145
    .line 146
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 147
    .line 148
    .line 149
    :goto_1
    return-object p0

    .line 150
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    const-string v0, "bad value type: "

    .line 161
    .line 162
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p1
.end method

.method public withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo p2, "only inserts, updates, and asserts can have value back-references"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    .line 41
    .line 42
    return-object p0
.end method

.method public withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v0, "only inserts, updates, and asserts can have value back-references"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 23
    .line 24
    return-object p0
.end method

.method public withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    .line 1
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string/jumbo v0, "only inserts, updates, and asserts can have values"

    .line 16
    .line 17
    .line 18
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance v0, Landroid/content/ContentValues;

    .line 27
    .line 28
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;

    .line 34
    .line 35
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 36
    .line 37
    .line 38
    return-object p0
.end method

.method public withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return-object p0
.end method
